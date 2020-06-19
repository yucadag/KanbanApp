using KanbanApp.Domain.Data;
using MediatR;
using System;
using System.Collections.Generic;
using System.Text;
using System.Threading;
using System.Threading.Tasks;

namespace KanbanApp.Services.UseCases.Board.CreateBoard
{


    public sealed class CreateBoardCommandHandler : IRequestHandler<CreateBoardCommand, CreateBoardCommandResult>
    {
        private readonly IBoardRepository _boardRepository;
        

        public CreateBoardCommandHandler(
           IBoardRepository boardRepository)
        {
            _boardRepository = boardRepository ?? throw new ArgumentNullException(nameof(boardRepository));            
        }
        
        public async Task<CreateBoardCommandResult> Handle(CreateBoardCommand request,
            CancellationToken cancellationToken)
        {
            //var currentUser = await _userByIdQueryHandler.HandleAsync(
            //    new UserByIdQuery(request.UserId),
            //    cancellationToken);

            //var group = new Group
            //{
            //    Name = request.Name,
            //    Creator = currentUser
            //};

            //group.GroupUsers.Add(new GroupUser { User = currentUser, Role = GroupUserRole.Admin });

            //var addedGroup = await _groupsRepository.AddAsync(group, cancellationToken);
             
            //return new CreateBoardCommandResult(
            //    addedGroup.Id,
            //    addedGroup.Name,
            //    addedGroup.RowVersion.ToString(),
            //    new CreateBoardCommandResult.User(
            //        currentUser.Id,
            //        currentUser.Name));

            return new CreateBoardCommandResult();

        }
    }
}
