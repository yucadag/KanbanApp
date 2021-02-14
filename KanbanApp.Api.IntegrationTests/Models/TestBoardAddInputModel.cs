using System;

namespace KanbanApp.Api.IntegrationTests.Models
{
    public class TestBoardAddInputModel
    {
        public string BoardId { get; set; }
        public string OwnerId { get; set; }

        public string Name { get; set; }

        public string Description { get; set; }

        public TestBoardAddInputModel CloneWith(Action<TestBoardAddInputModel> changes)
        {
            var clone = (TestBoardAddInputModel)MemberwiseClone();

            changes(clone);

            return clone;
        }
    }
}
