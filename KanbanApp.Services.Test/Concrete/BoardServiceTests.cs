using AutoFixture;
using KanbanApp.Services.Concrete;
using KanbanApp.Services.DTO.Core;
using KanbanApp.Services.UseCases.Boards.Commands.CreateBoard;
using KanbanApp.Services.UseCases.Boards.Commands.DeleteBoard;
using KanbanApp.Services.UseCases.Boards.Commands.UpdateBoard;
using KanbanApp.Services.UseCases.Boards.Queries.GetBoardDetail;
using KanbanApp.Services.UseCases.Boards.Queries.GetBoardList;
using KanbanApp.Services.UseCases.Boards.Queries.GetBoardSwimLanes;
using MediatR;
using Moq;
using System;
using System.Collections.Generic;
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
            mockRepository = new MockRepository(MockBehavior.Strict);

            mockMediator = this.mockRepository.Create<IMediator>();
        }

        private BoardService CreateService()
        {
            return new BoardService(mockMediator.Object);
        }

        [Fact]
        [Trait("Category","Queries")]
        public async Task GetList_StateUnderTest_ExpectedBehavior()
        {

            BoardService service = new BoardService(mockMediator.Object);
            // Arrange
            // var service = this.CreateService();
            Fixture fixture = new Fixture();
            GetBoardListCommand command = fixture.Build<GetBoardListCommand>().With(x => x.BoardId, Guid.NewGuid().ToString()).Create();
            GetBoardListCommandResult resultValue = fixture.Build<GetBoardListCommandResult>().With(x => x.ResultObject, new ServiceResult<List<GetBoardListCommandResultItem>>() { Success = true }).Create();

            this.mockMediator.Setup(m => m.Send(It.IsAny<GetBoardListCommand>(), It.IsAny<CancellationToken>()))
                     .ReturnsAsync(resultValue); //<-- return Task to allow await to continue


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
