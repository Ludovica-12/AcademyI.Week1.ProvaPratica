﻿using ProvaPratica.Core.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ProvaPratica.Core.Repository
{
    public interface ISpeseRepository : IRepository<Spese>
    {
        void Update(Spese spesa);
    }
}
