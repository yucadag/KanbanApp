namespace KanbanApp.Api.Models.Boards.Input
{
    public class BoardAddInput
    {

        public string BoardId { get; set; }

        public string OwnerId { get; set; }

        public string Name { get; set; }

        public string Description { get; set; }
    }
}
