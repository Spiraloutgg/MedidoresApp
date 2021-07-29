using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MedidoresModel.DAL
{
    public class MedidoresDALDB : IMedioresDAL
    {
        private MedidoresDBEntities medidoresDB = new MedidoresDBEntities();
        public List<Medidor> ObtenerMedidores()
        {
            return this.medidoresDB.Medidors.ToList();
        }
    }
}
