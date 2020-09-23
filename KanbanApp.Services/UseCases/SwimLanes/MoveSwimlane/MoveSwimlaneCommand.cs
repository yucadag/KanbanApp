using MediatR;

namespace KanbanApp.Services.UseCases.SwimLanes.MoveSwimlane
{
    public class MoveSwimlaneCommand : IRequest<MoveSwimlaneCommandResult>
    {
        public string BoardId { get; set; }
        public string Name { get; set; }
        public string SwimLaneId { get; set; }
        public int Position { get; set; }
    }


}
