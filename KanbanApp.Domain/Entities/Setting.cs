using KanbanApp.Core;

namespace KanbanApp.Domain.Entities
{
    public class Setting : IEntity
    {
        public string SettingId { get; set; }
        public string SettingsName { get; set; }
        public enum ValueType
        {
            DecimalType,
            StringType

        }

        public string Value { get; set; }
    }
}