namespace KanbanApp.Api.Models.SwimLanes.Input
{
    public class SwimLaneCardsWithPagingInput
    {
        public string BoardId { get; set; }
        public string SwimLaneId { get; set; }
        public int PageNumber { get; set; }     
        public int PageSize { get; set; }
    }
}
