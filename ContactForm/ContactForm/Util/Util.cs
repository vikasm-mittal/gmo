using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ContactForm.Util
{
    public static class Util
    {
        public static void WriteJsonToFile<T>(T data, string filePath)
        {
            try
            {
                string destPath = Path.Combine(AppDomain.CurrentDomain.BaseDirectory, filePath);
                JsonSerializer serializer = new JsonSerializer();
                using (StreamWriter sw = new StreamWriter(destPath, false))
                using (JsonWriter writer = new JsonTextWriter(sw))
                {
                    serializer.Serialize(writer, data);
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine("Error writing data to a file");
                Console.WriteLine(JsonConvert.SerializeObject(data));
            }
        }
    }
}
