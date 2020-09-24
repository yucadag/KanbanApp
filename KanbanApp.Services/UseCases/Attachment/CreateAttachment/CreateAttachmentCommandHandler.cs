using System;
using System.Threading;
using System.Threading.Tasks;
using KanbanApp.Services.Exceptions;
using MediatR;

namespace KanbanApp.Services.UseCases.Attachment.CreateAttachment
{
    public class CreateAttachmentCommandHandler : IRequestHandler<CreateAttachmentCommand, CreateAttachmentCommandResult>
    {

        public CreateAttachmentCommandHandler()
        {
        }

        public async Task<CreateAttachmentCommandResult> Handle(CreateAttachmentCommand command, CancellationToken cancellationToken)
        {
            var validator = new CreateAttachmentCommandValidator();
            var result = validator.Validate(command);

            if (!result.IsValid)
            {
                throw new ServiceValidationException(result.ToString());
            }

            throw new NotImplementedException();
        }
    }
}
