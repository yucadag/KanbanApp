using MediatR;

namespace KanbanApp.Services.UseCases.SwimLanes.Queries.GetSwimlaneDetail
{
    public class GetSwimlaneDetailCommand : IRequest<GetSwimlaneDetailCommandResult>
    {
        public string SwimLaneId { get; set; }
    }
}
