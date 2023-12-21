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
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace confer
{
    /// <summary>
    /// Логика взаимодействия для Main.xaml
    /// </summary>
    public partial class Main : Page
    {
        public Main()
        {
            InitializeComponent();
            var currentMain = Entities.GetContext().Events.ToList();

            ListHome.ItemsSource = currentMain;
            txtSearch.TextChanged += TxtSearch_TextChanged;
            txtSearchdescr.TextChanged += txtSearchdescr_TextChanged;
            UpdateUsers(); 
        }

        private void UpdateUsers()
        {
            //загружаем всех пользователей в список
            var currentMain = Entities.GetContext().Events.ToList();

            currentMain = currentMain.Where(x =>
       x.Title.ToLower().Contains(txtSearch.Text.ToLower())).ToList();

            if (!string.IsNullOrEmpty(txtSearchdescr.Text))
            {
                string searchDateText = txtSearchdescr.Text.Trim();

                currentMain = currentMain.Where(x =>
                    x.Date.ToString("yyyy-MM-dd") == searchDateText).ToList();
            }


            ListHome.ItemsSource = currentMain;
        }

        private void TxtSearch_TextChanged(object sender, TextChangedEventArgs e)
        {
            UpdateUsers();
        }

        private void txtSearchdescr_TextChanged(object sender, TextChangedEventArgs e)
        {
            UpdateUsers();
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            NavigationService?.Navigate(new Auth());
        }
    }
}
