﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading;
using System.Threading.Tasks;
using MediatR;

namespace KanbanApp.Services.UseCases.SelectList.GetCardPriority
{
    public class GetCardPriorityCommand : IRequest<GetCardPriorityCommandResult>
    {
        public bool GetActiveRecords { get; set; }
    }
}
