@description('Creates an Azure Function App.')
param name string
param location string = resourceGroup().location
param tags object = {}
param azureWebJobsStorage string
param hostingPlanName string

resource plan 'Microsoft.Web/serverfarms@2021-03-01' = {
  name: hostingPlanName
  location: location  
  sku: {
    name: 'Y1'
    tier: 'Dynamic'
  }
  properties: {        
  }
  tags: tags  
}

resource functionApp 'Microsoft.Web/sites@2021-03-01' = {
  name: name
  location: location
  kind: 'functionapp'  
  properties: {
    serverFarmId: plan.id
    httpsOnly: true
    siteConfig: {
      appSettings: [
        {
          name: 'FUNCTIONS_EXTENSION_VERSION'
          value: '~4'
        }
        {
          name: 'FUNCTIONS_WORKER_RUNTIME'
          value: 'dotnet-isolated'
        }
        {
          name: 'WEBSITE_USE_PLACEHOLDER_DOTNETISOLATED'
          value: '1'
        }
        {
          name: 'AzureWebJobsStorage'
          value: azureWebJobsStorage
        }
        {
          name: 'WEBSITE_CONTENTAZUREFILECONNECTIONSTRING'
          value: azureWebJobsStorage
        }     
      ]
      cors: {
        allowedOrigins: [
          'https://portal.azure.com'
        ]
      }            
    }    
  }
  tags: tags
}

output id string = functionApp.id
output name string = functionApp.name
output defaultHostName string = functionApp.properties.defaultHostName
