using ContactForm.ViewModels;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;

namespace ContactForm.Views
{
    /// <summary>
    /// Interaction logic for Contact.xaml
    /// </summary>
    public partial class Contact : Window
    {
        public Contact()
        {
            InitializeComponent();
            this.DataContext = new ContactViewModel(); //ViewmodelLocator from MVVM Light for more complex application
        }

        private void Save_Click(object sender, RoutedEventArgs e)
        {
            FrameworkElement element = sender as FrameworkElement;
            ((ContactViewModel)element.DataContext).Save();
        }
    }
}
