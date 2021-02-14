using MediatR;

namespace KanbanApp.Services.UseCases.SwimLanes.Commands.CreateSwimlane
{
    public class CreateSwimlaneCommand : IRequest<CreateSwimlaneCommandResult>
    {
        public string BoardId { get; set; }
        public string Name { get; set; }
        public string SwimLaneId { get; set; }
    }

}