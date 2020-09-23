using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading;
using System.Threading.Tasks;
using FluentValidation;

namespace KanbanApp.Services.UseCases.Attachment.CreateAttachment
{
    public class CreateAttachmentCommandValidator : AbstractValidator<CreateAttachmentCommand>
    {
        public CreateAttachmentCommandValidator()
        {

        }
    }
}
