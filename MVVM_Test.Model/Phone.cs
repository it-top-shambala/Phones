using System.ComponentModel;
using System.Runtime.CompilerServices;
using MVVM_Test.Model.Annotations;

namespace MVVM_Test.Model
{
    public class Phone : INotifyPropertyChanged
    {
        private string _mark;
        public string TradeMark
        {
            get => _mark;
            set
            {
                _mark = value;
                OnPropertyChanged(nameof(TradeMark));
            }
        }
        
        private string _model;
        public string Model
        {
            get => _model;
            set
            {
                _model = value;
                OnPropertyChanged(nameof(Model));
            }
        }
        
        private string _price;
        public string Price
        {
            get => _price;
            set
            {
                _price = value;
                OnPropertyChanged(nameof(Price));
            }
        }
        
        public event PropertyChangedEventHandler PropertyChanged;

        [NotifyPropertyChangedInvocator]
        protected virtual void OnPropertyChanged([CallerMemberName] string propertyName = null)
        {
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
        }
    }
}