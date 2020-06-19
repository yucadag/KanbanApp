using KanbanApp.Core;

namespace KanbanApp.Domain.Entities
{
    public class Setting:IEntity
    {
        public string SettingId { get; set; }
        public string SettingsName { get; set; }
        enum ValueType
        {
            DecimalType,
            StringType

        }
       
        public string Value { get; set; }
    }
}