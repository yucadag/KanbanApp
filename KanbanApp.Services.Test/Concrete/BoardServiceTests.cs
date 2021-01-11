using AutoFixture;
using AutoFixture.AutoMoq;
using KanbanApp.Services.Concrete;
using KanbanApp.Services.UseCases.Boards.Commands.CreateBoard;
using KanbanApp.Services.UseCases.Boards.Commands.DeleteBoard;
using KanbanApp.Services.UseCases.Boards.Commands.UpdateBoard;
using KanbanApp.Services.UseCases.Boards.Queries.GetBoardDetail;
using KanbanApp.Services.UseCases.Boards.Queries.GetBoardList;
using KanbanApp.Services.UseCases.Boards.Queries.GetBoardSwimLanes;
using MediatR;
using Moq;
using System;
using System.Threading;
using System.Threading.Tasks;
using Xunit;

namespace KanbanApp.Services.Test.Concrete
{
    public class BoardServiceTests
    {
        private MockRepository mockRepository;

        private Mock<IMediator> mockMediator;

        public BoardServiceTests()
        {
            this.mockRepository = new MockRepository(MockBehavior.Strict);

            this.mockMediator = this.mockRepository.Create<IMediator>();
        }

        private BoardService CreateService()
        {
           return new BoardService(this.mockMediator.Object);
        }

        [Fact]
        public async Task GetList_StateUnderTest_ExpectedBehavior()
        {
            this.mockMediator.Setup(m => m.Send(It.IsAny<GetBoardListCommand>(), It.IsAny<CancellationToken>()))
                      .ReturnsAsync(new GetBoardListCommandResult()); //<-- return Task to allow await to continue
                      
            BoardService service = new BoardService(this.mockMediator.Object);
            // Arrange
            // var service = this.CreateService();
            Fixture fixture = new Fixture();
            GetBoardListCommand command = fixture.Build<GetBoardListCommand>().With(x => x.BoardId, Guid.NewGuid().ToString()).Create();
                   
            // Act
            var result = await service.GetList(
                command);

            // Assert
            Assert.True(true);
            this.mockRepository.VerifyAll();
        }

        [Fact]
        public async Task Add_StateUnderTest_ExpectedBehavior()
        {
            // Arrange
            var service = this.CreateService();
            CreateBoardCommand command = null;

            // Act
            var result = await service.Add(
                command);

            // Assert
            Assert.True(false);
            this.mockRepository.VerifyAll();
        }

        [Fact]
        public async Task Update_StateUnderTest_ExpectedBehavior()
        {
            // Arrange
            var service = this.CreateService();
            UpdateBoardCommand command = null;

            // Act
            var result = await service.Update(
                command);

            // Assert
            Assert.True(false);
            this.mockRepository.VerifyAll();
        }

        [Fact]
        public async Task Delete_StateUnderTest_ExpectedBehavior()
        {
            // Arrange
            var service = this.CreateService();
            DeleteBoardCommand command = null;

            // Act
            var result = await service.Delete(
                command);

            // Assert
            Assert.True(false);
            this.mockRepository.VerifyAll();
        }

        [Fact]
        public async Task Get_StateUnderTest_ExpectedBehavior()
        {
            // Arrange
            var service = this.CreateService();
            GetBoardDetailCommand command = null;

            // Act
            var result = await service.Get(
                command);

            // Assert
            Assert.True(false);
            this.mockRepository.VerifyAll();
        }

        [Fact]
        public async Task GetBoardSwimLanes_StateUnderTest_ExpectedBehavior()
        {
            // Arrange
            var service = this.CreateService();
            GetBoardSwimLanesCommand command = null;

            // Act
            var result = await service.GetBoardSwimLanes(
                command);

            // Assert
            Assert.True(false);
            this.mockRepository.VerifyAll();
        }
    }
}
