using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using System.Threading.Tasks;

namespace KanbanApp.Core.DataAccess.EntityFramework
{
    public class EfEntityRepositoryBase<TEntity> : IEntityRepository<TEntity>
        where TEntity : class, IEntity, new()

    {

        private readonly DbContext _context;

        public EfEntityRepositoryBase(DbContext context)
        {
            _context = context;
        }

        public TEntity Get(Expression<Func<TEntity, bool>> filter = null)
        {

            return _context.Set<TEntity>().SingleOrDefault(filter);

        }

        public List<TEntity> GetList(Expression<Func<TEntity, bool>> filter = null)
        {

            return filter == null
                ? _context.Set<TEntity>().ToList()
                : _context.Set<TEntity>().Where(filter).ToList();

        }

        public TEntity Add(TEntity entity)
        {

            var addedEntity = _context.Entry(entity);
            addedEntity.State = EntityState.Added;
            _context.SaveChanges();
            return entity;

        }

        public void Update(TEntity entity)
        {

            var updatedEntity = _context.Entry(entity);
            updatedEntity.State = EntityState.Modified;
            _context.SaveChanges();

        }

        public void Delete(TEntity entity)
        {

            var deleteEntity = _context.Entry(entity);
            deleteEntity.State = EntityState.Deleted;
            _context.SaveChanges();

        }

        public async Task<TEntity> GetAsync(Expression<Func<TEntity, bool>> filter = null)
        {

            return await _context.Set<TEntity>().SingleOrDefaultAsync(filter);

        }

        public Task<List<TEntity>> GetListAsync(Expression<Func<TEntity, bool>> filter = null)
        {
            throw new NotImplementedException();
        }

        public Task<TEntity> AddAsync(TEntity entity)
        {
            throw new NotImplementedException();
        }

        public Task UpdateAsync(TEntity entity)
        {
            throw new NotImplementedException();
        }

        public Task DeleteAsync(TEntity entity)
        {
            throw new NotImplementedException();
        }
    }
}