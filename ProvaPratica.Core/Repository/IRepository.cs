using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ProvaPratica.Core.Repository
{
    public interface IRepository<T>
    {
        List<T> GetItems();
    }
}
