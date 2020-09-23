using Microsoft.AspNetCore.Mvc;

namespace KanbanApp.Web.UI
{
    public class HomeController : Controller
    {
        // GET
        public IActionResult Index()
        {
            return View();
        }


    }
}