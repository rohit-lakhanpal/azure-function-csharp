# Create GitHub Secrets

You need to create GitHub Secrets to securely store your Azure credentials and other sensitive information. 

## Setup Actions secrets and variables 

### Action secrets:

Go to your GitHub repository's Settings > Security > Secrets and variables > Actions and create the following **Secrets** (Repository secrets):

* `AZURE_CREDENTIALS`: Your Azure service principal credentials in JSON format.
    To generate the Azure service principal credentials, you can use the Azure CLI:
    ```bash
    az ad sp create-for-rbac --name "github-azure-function-csharp-azure-credentials" --role contributor --scopes /subscriptions/{subscription-id} --sdk-auth
    ```

    Or if you have an existing resource group, you can use the following command:
    ```bash
    az ad sp create-for-rbac --name "github-azure-function-csharp-azure-credentials" --role contributor --scopes /subscriptions/{subscription-id}/resourceGroups/{resource-group-name} --sdk-auth
    ```

    > **Note**: Replace `{subscription-id}` and `{resource-group-name}` with your Azure subscription ID and resource group name respectively.

    The command will output a JSON object similar to the following:
    ```json
    {
        "clientId": "xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx",
        "clientSecret": "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx",
        "subscriptionId": "xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx",
        "tenantId": "xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx",
        "activeDirectoryEndpointUrl": "https://login.microsoftonline.com",
        "resourceManagerEndpointUrl": "https://management.azure.com/",
        "activeDirectoryGraphResourceId": "https://graph.windows.net/",
        "sqlManagementEndpointUrl": "https://management.core.windows.net:8443/",
        "galleryEndpointUrl": "https://gallery.azure.com/",
        "managementEndpointUrl": "https://management.core.windows.net/"
    }
    ```

### Action variables:

Go to your GitHub repository's Settings > Security > Secrets and variables > Actions and create the following **Variables** (Repository variables):

* `AZURE_ENV_NAME`: The environment name. (e.g. `dev`, `staging`, `production`)
* `AZURE_LOCATION`: The Azure region for your resources. (e.g. `eastus`, `australiaeast`. Use `az account list-locations -o table --query "[].name"` to list all available regions.)
* `AZURE_RESOURCE_GROUP`, `AZURE_STORAGE_ACCOUNT`, `AZURE_FUNCTION_APP`: These will be dynamically set during the deployment process but if you want custom values, feel free to set them too as environment variables.

> **Note**: If you created the azure credentials against a specific resource group, you can set the `AZURE_RESOURCE_GROUP` to that resource group name in the github secrets.