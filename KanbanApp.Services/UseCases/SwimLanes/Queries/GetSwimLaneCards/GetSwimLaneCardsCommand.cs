﻿using MediatR;

namespace KanbanApp.Services.UseCases.SwimLanes.Queries.GetSwimLaneCards
{
    public sealed class GetSwimLaneCardsCommand : IRequest<GetSwimLaneCardsCommandResult>
    {

        public string BoardId { get; set; }
        public string SwimLaneId { get; set; }


    }
}
