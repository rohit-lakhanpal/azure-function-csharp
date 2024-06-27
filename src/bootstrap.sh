func init App --worker-runtime dotnet-isolated --docker --taret-framework net8.0
cd App
func new --name InfoHttpTrigger --template "HTTP trigger" --authlevel "anonymous"