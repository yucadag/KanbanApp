using AutoMapper;
using KanbanApp.Api.Controllers;
using KanbanApp.Api.Models.Boards.Input;
using KanbanApp.Services.Abstract;
using KanbanApp.Services.UseCases.Boards.CreateBoard;
using Moq;
using Xunit;

namespace KanbanApp.Api.Test.Controllers
{
    public class BoardControllerTests
    {
        private MockRepository mockRepository;

        private Mock<IBoardService> mockBoardService;
        private Mock<IMapper> mockMapper;

        public BoardControllerTests()
        {
            this.mockRepository = new MockRepository(MockBehavior.Strict);

            this.mockBoardService = this.mockRepository.Create<IBoardService>();
            this.mockMapper = this.mockRepository.Create<IMapper>();

        }

        private BoardController CreateBoardController()
        {
            this.mockMapper.Setup(m => m.Map<BoardAddInput, CreateBoardCommand>(It.IsAny<BoardAddInput>())).Returns(new CreateBoardCommand());
            return new BoardController(
                this.mockBoardService.Object,
                this.mockMapper.Object
               );
        }

        [Fact]
        public void Get_StateUnderTest_ExpectedBehavior()
        {
            // Arrange
            var boardController = this.CreateBoardController();
            BoardGetInput input = null;

            // Act
            var result = boardController.Get(
                input);

            // Assert
            Assert.True(false);
            this.mockRepository.VerifyAll();
        }

        [Fact]
        public void GetList_StateUnderTest_ExpectedBehavior()
        {
            // Arrange
            var boardController = this.CreateBoardController();

            // Act
            var result = boardController.GetList();

            // Assert
            Assert.True(false);
            this.mockRepository.VerifyAll();
        }

        [Fact]
        public void Add_StateUnderTest_ExpectedBehavior()
        {
            // Arrange
            var boardController = this.CreateBoardController();
            BoardAddInput input = null;

            // Act
            var result = boardController.Add(
                input);

            // Assert
            Assert.True(false);
            this.mockRepository.VerifyAll();
        }

        [Fact]
        public void Update_StateUnderTest_ExpectedBehavior()
        {
            // Arrange
            var boardController = this.CreateBoardController();
            BoardUpdateInput input = null;

            // Act
            var result = boardController.Update(
                input);

            // Assert
            Assert.True(false);
            this.mockRepository.VerifyAll();
        }

        [Fact]
        public void Delete_StateUnderTest_ExpectedBehavior()
        {
            // Arrange
            var boardController = this.CreateBoardController();
            BoardDeleteInput input = null;

            // Act
            var result = boardController.Delete(
                input);

            // Assert
            Assert.True(false);
            this.mockRepository.VerifyAll();
        }

        [Fact]
        public void GetBoardSwimLanes_StateUnderTest_ExpectedBehavior()
        {
            // Arrange
            var boardController = this.CreateBoardController();
            string boardId = null;

            // Act
            var result = boardController.GetBoardSwimLanes(
                boardId);

            // Assert
            Assert.True(false);
            this.mockRepository.VerifyAll();
        }
    }
}
