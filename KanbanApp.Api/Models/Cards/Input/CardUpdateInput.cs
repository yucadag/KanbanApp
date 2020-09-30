namespace KanbanApp.Api.Models.Cards.Input
{
    public class CardUpdateInput
    {
        public string BoardId { get; set; }
        public string SwimLaneId { get; set; }
        public string CardId { get; set; }
        public string Name { get; set; }
        public string Description { get; set; }
    }
}
