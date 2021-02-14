using KanbanApp.Core.Paging;
using MediatR;

namespace KanbanApp.Services.UseCases.SwimLanes.Queries.GetSwimLaneCardsWithPaging
{
    public class GetSwimLaneCardsWithPagingCommand : IRequest<GetSwimLaneCardsWithPagingCommandResult>
    {
        public string BoardId { get; set; }
        public string SwimLaneId { get; set; }
        public PagingParameterBase PagingParameter { get; set; }
    }
}
