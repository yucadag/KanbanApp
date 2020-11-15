namespace KanbanApp.Core.Mapping
{
    public interface IMapper1
    {
        TDestination Map<TSource, TDestination>(TSource source);
    }
}
