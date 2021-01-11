using MediatR;

namespace KanbanApp.Services.UseCases.Cards.Commands.DeleteCard
{
    public class DeleteCardCommand : IRequest<DeleteCardCommandResult>
    {

        public string CardId { get; set; }


    }

}
