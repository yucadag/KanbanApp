using FluentValidation;
using KanbanApp.Services.DTO.Core;
using MediatR;
using Microsoft.Extensions.Logging;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;

namespace KanbanApp.Services.PipelineBehaviors
{
    public class BusinessValidationPipeline<TRequest, TResponse> : IPipelineBehavior<TRequest, TResponse>
         where TResponse : class
         where TRequest : IValidateable
    {
        private readonly IValidator<TRequest> _compositeValidator;
       

        public BusinessValidationPipeline(IValidator<TRequest> compositeValidator)
        {
            _compositeValidator = compositeValidator;

      
        }

        public async Task<TResponse> Handle(TRequest request, CancellationToken cancellationToken, RequestHandlerDelegate<TResponse> next)
        {
  

            var result = await _compositeValidator.ValidateAsync(request, cancellationToken);

            if (!result.IsValid)
            {
             

                var responseType = typeof(TResponse);

                if (responseType.IsGenericType)
                {
                    var resultType = responseType.GetGenericArguments()[0];
                    var invalidResponseType = typeof(ServiceResult<>).MakeGenericType(resultType);

                    var invalidResponse =
                        Activator.CreateInstance(invalidResponseType, null, result.Errors.Select(s => s.ErrorMessage).ToList()) as TResponse;

                    return invalidResponse;
                }
            }

           
            var response = await next();

            return response;
        }
    }
}
