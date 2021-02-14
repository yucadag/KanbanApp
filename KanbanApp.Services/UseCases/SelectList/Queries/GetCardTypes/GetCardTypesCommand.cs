using MediatR;

namespace KanbanApp.Services.UseCases.SelectList.Queries.GetCardTypes
{
    public class GetCardTypesCommand : IRequest<GetCardTypesCommandResult>
    {
        public bool GetActiveRecords { get; set; }
    }
}
