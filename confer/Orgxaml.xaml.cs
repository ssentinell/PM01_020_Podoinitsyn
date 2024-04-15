using System;
using System.Linq;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Media.Imaging;
using System.Windows.Media;


namespace confer
{
    public partial class Orgxaml : Page
    {
        private int loggedInUserId;
        public Orgxaml(int loggedInUserId)
        {
            InitializeComponent();
            this.loggedInUserId = loggedInUserId;

            LoadUserData();
        }

        private void LoadUserData()
        {
            try
            {
                using (var db = Entities2.GetContext())
                {
                    
                    var user = db.Organizers.FirstOrDefault(u => u.ID == loggedInUserId);

                    

                    if (user != null)

                    {
                      

                        
                        if (!string.IsNullOrEmpty(user.Photo))
                        {
                            
                            BitmapImage bitmap = new BitmapImage();
                            bitmap.BeginInit();
                            bitmap.UriSource = new Uri(user.Photo, UriKind.RelativeOrAbsolute);
                            bitmap.EndInit();

                            
                            userPhoto.Source = bitmap;
                        }
                        else
                        {
                        }
                    }
                    else
                    {
                        MessageBox.Show("Пользователь не найден.");
                    }
                    var gender = user.Gender;

                    switch (gender)
                    {
                        case "м":
                            gender = "Ms";
                            break;
                        case "ж":
                            gender = "Mrs";
                            break;

                    }


                    string userDataString = $"Добрый {GetPeriodOfDay(DateTime.Now)} {gender}, {user.Surname}";

                    nameTxt.Text = userDataString;
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show($"Произошла ошибка: {ex.Message}");
            }
        }

        public static string GetPeriodOfDay(DateTime time)
        {
            if (time.TimeOfDay >= new TimeSpan(9, 0, 0) && time.TimeOfDay <= new TimeSpan(11, 0, 0))
            {
                return "Утро";
            }
            else if (time.TimeOfDay > new TimeSpan(11, 0, 0) && time.TimeOfDay <= new TimeSpan(18, 0, 0))
            {
                return "День";
            }
            else if (time.TimeOfDay > new TimeSpan(18, 0, 0) && time.TimeOfDay <= new TimeSpan(23, 59, 59))
            {
                return "Вечер";
            }
            else
            {
                return "Ночь";
            }
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            NavigationService?.Navigate(new Reg());
        }
    }
}
