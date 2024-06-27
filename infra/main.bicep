// Define the scope of the deployment as subscription level
targetScope = 'subscription'

// Parameter for the environment name, used to generate unique resource names
@minLength(1)
@maxLength(64)
@description('Name of the environment which is used to generate a short unique hash used in all resources.')
param environmentName string

// Project name used to generate resource names
@minLength(1)
@maxLength(64)
@description('Name of the project which is used to generate a short unique hash used in all resources.')
param projectName string

@minLength(1)
@description('Primary location for all resources')
@allowed([ 'australiaeast', 'canadaeast', 'eastus', 'eastus2', 'francecentral', 'switzerlandnorth', 'uksouth', 'japaneast', 'northcentralus', 'australiaeast', 'swedencentral' ])
@metadata({
  azd: {
    type: 'location'
  }
})
param location string

// Load abbreviations from an external JSON file
var abbrs = loadJsonContent('abbreviations.json')

// Define tags to be used on all resources
var tags = { 'azd-env-name': environmentName, 'project-name': projectName }

// Parameter for the tenant ID, defaulting to the current tenant's ID
param tenantId string = tenant().tenantId

// Generate a unique string for resource naming based on subscription ID, environment name, and location
@description('A unique string used to generate resource names')
param azureResourceToken string = ''
var resourceToken = !empty(azureResourceToken) ? azureResourceToken : toLower(uniqueString(subscription().id, projectName, environmentName, location))

// Parameters for names of various resources, set in the parameters file
param resourceGroupName string = '' // Set in main.parameters.json
param storageAccountName string = '' // Set in main.parameters.json
param functionAppName string = '' // Set in main.parameters.json

// Create a resource group to organize all resources
resource resourceGroup 'Microsoft.Resources/resourceGroups@2021-04-01' = {
  name: !empty(resourceGroupName) ? resourceGroupName : '${abbrs.resourcesResourceGroups}${projectName}-${environmentName}'
  location: location
  tags: tags
}


module storage 'core/storage/storage-account.bicep' = {
  name: 'storage'
  scope: resourceGroup
  params: {
    name: !empty(storageAccountName) ? storageAccountName : '${abbrs.storageStorageAccounts}${resourceToken}'
    location: location
    tags: union(tags, { 'azd-resource-type': 'storage' })
  }
}

module functionApp 'core/host/function-app.bicep' = {
  name: 'functionApp'
  scope: resourceGroup
  params: {
    name: !empty(functionAppName) ? functionAppName : '${abbrs.webSitesFunctions}${resourceToken}'
    location: location
    tags: union(tags, { 'azd-resource-type': 'functionApp' })    
    azureWebJobsStorage: storage.outputs.primaryConnectionString
    hostingPlanName: '${abbrs.webSitesFunctions}${resourceToken}-asp'        
  }
  dependsOn: [
    storage
  ]
}


// Output important values after the deployment
output AZURE_LOCATION string = location
output AZURE_TENANT_ID string = tenant().tenantId
output AZURE_RESOURCE_GROUP string = resourceGroup.name
output AZURE_RESOURCE_TOKEN string = resourceToken

output AZURE_STORAGE_ACCOUNT string = storage.outputs.name
output AZURE_FUNCTION_APP string = functionApp.outputs.name
