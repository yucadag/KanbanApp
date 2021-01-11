using KanbanApp.Services.DTO.Core;
using System.Collections.Generic;


namespace KanbanApp.Services.UseCases.Boards.Queries.GetBoardList
{
    public class GetBoardListCommandResult
    {
        public ServiceResult<List<GetBoardListCommandResultItem>> ResultObject { get; set; }
    }

    public class GetBoardListCommandResultItem
    {
        public string BoardId { get; set; }
        public string Name { get; set; }
        public string Description { get; set; }
    }
}
