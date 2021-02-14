using System;
using System.Collections.Generic;

namespace KanbanApp.Services.DTO.Core
{
    public class PaginationDataResult<T> : ServiceResult<T>
    {
        public PaginationDataResult(IReadOnlyList<T> data, int pageNumber, int pageSize) 
        {
            this.Data = data;
            this.PageNumber = pageNumber;
            this.PageSize = pageSize;
        }

        public PaginationDataResult(IReadOnlyList<T> data,int pageNumber, int pageSize, string message) 
        {
            this.Data = data;
            this.PageNumber = pageNumber;
            this.PageSize = pageSize;
        }

        public int PageNumber { get; set; }
        public int PageSize { get; set; }
        public Uri FirstPage { get; set; }
        public Uri LastPage { get; set; }
        public int TotalPages { get; set; }
        public int TotalRecords { get; set; }
        public Uri NextPage { get; set; }
        public Uri PreviousPage { get; set; }
        public IReadOnlyList<T> Data { get; }
    }
}
