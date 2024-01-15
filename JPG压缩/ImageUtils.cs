using System.Drawing.Imaging;
using System.IO;
using Encoder = System.Drawing.Imaging.Encoder;

namespace JPG压缩
{
    internal class ImageUtils
    {
        public static void Compress(string path, long quality)
        {
            var smallPath = Path.Combine(path, "small");
            if (!Directory.Exists(smallPath))
            {
                Directory.CreateDirectory(smallPath);
            }
            foreach (var item in Directory.GetFiles(path))
            {
                using var bmp = new Bitmap(item);
                var jpgEncoder = GetEncoder(ImageFormat.Jpeg);
                if (jpgEncoder is null) continue;

                Encoder myEncoder = Encoder.Quality;
                var myEncoderParameters = new EncoderParameters(1);

                var myEncoderParameter = new EncoderParameter(myEncoder, quality);
                myEncoderParameters.Param[0] = myEncoderParameter;

                bmp.Save($"{Path.Combine(smallPath, Path.GetFileName(item))}", jpgEncoder, myEncoderParameters);
            }
        }

        private static ImageCodecInfo? GetEncoder(ImageFormat format)
        {
            ImageCodecInfo[] codecs = ImageCodecInfo.GetImageEncoders();
            return codecs.FirstOrDefault(codec => codec.FormatID == format.Guid);
        }
    }
}
