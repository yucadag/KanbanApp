using KanbanApp.Core;

namespace KanbanApp.Domain.Entities
{
    public class SwimLaneSetting : IEntity
    {
        public SwimLaneSetting()
        {
            HeaderColor = "";
        }

        public string SwimLaneSettingId { get; set; }
        public string HeaderColor { get; set; }
        public string BackgroundColor { get; set; }
        public int MaxCardCount { get; set; }
    }
}
