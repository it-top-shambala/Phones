using System.IO;

namespace MVVM_Test.DB_Connection
{
    public static class DbConfig
    {
        public static string GetConnectionString(string path)
        {
            return File.ReadAllText(path);
        }
    }
}