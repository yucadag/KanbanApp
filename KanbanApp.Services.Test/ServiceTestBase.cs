using AutoFixture;
using MediatR;
using Moq;
using System;

namespace KanbanApp.Services.Test
{
    public class ServiceTestBase : IDisposable
    {
        protected readonly IMediator _mediator;
        //protected readonly DatabaseContext _db;
   
        protected readonly Fixture _fixture;

        public ServiceTestBase()
        {
            _fixture = new Fixture();
        }

        public void Dispose()
        {
            throw new NotImplementedException();
        }
    }
}
