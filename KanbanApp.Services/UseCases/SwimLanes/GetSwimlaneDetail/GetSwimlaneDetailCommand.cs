using MediatR;

namespace KanbanApp.Services.UseCases.SwimLanes.GetSwimlaneDetail
{
    public class GetSwimlaneDetailCommand : IRequest<GetSwimlaneDetailCommandResult>
    {
        public string SwimLaneId { get; set; }
    }
}
