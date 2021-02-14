using Microsoft.AspNetCore.Mvc;

namespace KanbanApp.Web.UI
{
    public class SwimlineController : Controller
    {
        public IActionResult Index()
        {          
            return View();
        }
    }
}