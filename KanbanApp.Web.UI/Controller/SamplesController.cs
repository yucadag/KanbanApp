﻿using Microsoft.AspNetCore.Mvc;


// For more information on enabling MVC for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860


namespace KanbanApp.Web.UI
{
    public class SamplesController : Controller
    {
        // GET: /<controller>/
        public IActionResult PartialModal()
        {
            return View();
        }
    }
}
