using Microsoft.Azure.Functions.Worker;
using Microsoft.Extensions.Logging;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace App
{
    public class InfoHttpTrigger
    {
        private readonly ILogger<InfoHttpTrigger> _logger;

        public InfoHttpTrigger(ILogger<InfoHttpTrigger> logger)
        {
            _logger = logger;
        }

        [Function("InfoHttpTrigger")]
        public IActionResult Run([HttpTrigger(AuthorizationLevel.Anonymous, "get", "post")] HttpRequest req)
        {
            _logger.LogInformation("C# HTTP trigger function processed a request.");
            return new OkObjectResult("Status:OK");
        }
    }
}
