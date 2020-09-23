using MediatR;

namespace KanbanApp.Services.UseCases.Cards.DeleteCard
{
    public class DeleteCardCommand : IRequest<DeleteCardCommandResult>
    {
   
        public string CardId { get; set; }
       

    }
    
}
