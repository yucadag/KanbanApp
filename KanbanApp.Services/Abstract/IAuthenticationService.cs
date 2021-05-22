using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;

namespace KanbanApp.Services.Abstract
{
    public interface IAuthenticationService
    {
        Task<GetBoardListCommandResult> CreateUser(GetBoardListCommand command);
        Task<CreateBoardCommandResult> CheckUser(CreateBoardCommand command);
        Task<UpdateBoardCommandResult> Update(UpdateBoardCommand command);
    }
}
