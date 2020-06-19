using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;

// For more information on enabling Web API for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860
using KanbanApp.Web.UI.ViewModels;
using KanbanApp.Domain.Entities;

namespace KanbanApp.Web.UI.Api.BoardApi
{
    [Route("api/[controller]")]
    public class BoardApiController : Controller
    {
        // GET: api/values
        [HttpGet]
        public BoardViewModel GetAllBoards()
        {
            BoardViewModel viewModelList = new BoardViewModel();
            viewModelList.BoardList = new List<Board>();

            Board board1 = new Board();
            board1.BoardId = Guid.NewGuid().ToString();
            board1.Description = "Proje Fikirleri bu boardda tutulur";
            board1.Name = "Proje Fikirleri";
            board1.OwnerId="MYUCADAG";
            viewModelList.BoardList.Add(board1);

            Board board2 = new Board();
            board2.BoardId = Guid.NewGuid().ToString();
            board2.Description = "Yapilacaklar bu boardda tutulur";
            board2.Name = "Yapilacaklar";
            board2.OwnerId = "MYUCADAG";
            viewModelList.BoardList.Add(board2);

            return viewModelList;

        }

        // GET api/values/5
        [HttpGet("{id}")]
        public Board Get(string id)
        {
            List<Board> boardList = new List<Board>();

            Board board1 = new Board();
            board1.BoardId = Guid.NewGuid().ToString(); 
            board1.Description = "Proje Fikirleri bu boardda tutulur";
            board1.Name = "Proje Fikirleri";
            board1.OwnerId = "MYUCADAG";
            boardList.Add(board1);

            Board board2 = new Board();
            board2.BoardId = Guid.NewGuid().ToString();
            board2.Description = "Yapilacaklar bu boardda tutulur";
            board2.Name = "Yapilacaklar";
            board2.OwnerId = "MYUCADAG";
            boardList.Add(board2);

            Board board3 = new Board();
            board3.BoardId = Guid.NewGuid().ToString();
            board3.Description = "Teknik isler bu boardda tutulur";
            board3.Name = "Teknik Isler";
            board3.OwnerId = "MYUCADAG";
            boardList.Add(board3);

            return boardList.Find(x => x.BoardId == id);

        }

        // POST api/values
        [HttpPost]
        public void Post([FromBody]string value)
        {
        }

        // PUT api/values/5
        [HttpPut("{id}")]
        public void Put(int id, [FromBody]string value)
        {
        }

        // DELETE api/values/5
        [HttpDelete("{id}")]
        public void Delete(int id)
        {
        }
    }
}
