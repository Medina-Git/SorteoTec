using Microsoft.AspNetCore.Mvc;
using PTEC.Models;
using System.Diagnostics;

namespace PTEC.Controllers
{
    public class HomeController : Controller
    {
        private readonly ILogger<HomeController> _logger;

        public HomeController(ILogger<HomeController> logger)
        {
            _logger = logger;
        }

        public IActionResult Index()
        {
            return View();
        }

        [HttpPost]
        public async Task<JsonResult> SaveForm([FromBody] UsuarioModel user)
        {
            HttpClient client = new HttpClient();
            client.BaseAddress = new Uri("https://jsonplaceholder.typicode.com/");

            HttpResponseMessage response = await client.GetAsync("users");
            if (response.IsSuccessStatusCode)
            {
                var result = await response.Content.ReadAsStringAsync();
                return new JsonResult(result);
            }
            else
            {
                return new JsonResult("Error al obtener los usuarios.");
            }
        }

        public IActionResult Privacy()
        {
            return View();
        }

    }
}