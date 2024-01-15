using CommunityToolkit.Mvvm.ComponentModel;
using CommunityToolkit.Mvvm.Input;

namespace JPG压缩
{
    internal partial class ViewModel : ObservableObject
    {
        [ObservableProperty]
        long _quality;
        [ObservableProperty]
        string? _path;

        [RelayCommand]
        private void SelectPath()
        {
            var folderBrowserDialog = new FolderBrowserDialog();
            if (folderBrowserDialog.ShowDialog() == DialogResult.OK)
            {
                Path = folderBrowserDialog.SelectedPath;
            }
        }

        [RelayCommand]
        private void Compress()
        {
            if (Path is null)
            {
                MessageBox.Show("图片集路径为空");
                return;
            }
            ImageUtils.Compress(Path, Quality);
            MessageBox.Show("完成");
        }
    }
}
