using System;

namespace KanbanApp.Services.Abstract
{
    public interface IPaginationUriService
    {
        Uri GetPageUri(int pageNumber, int pageSize);
    }
}
