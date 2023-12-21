using Microsoft.VisualStudio.TestTools.UnitTesting;
using System;

namespace UnitTestProject1
{
    [TestClass]
    public class UnitTest1
    {
        [TestMethod]
        public void TestMethodAuth()
        {
            var page = new confer.Auth();
            

            Assert.IsTrue(page.AuthUsr("1", "Ke22Yh8Pp7","ABCD"));
            Assert.IsTrue(page.AuthUsr("2", "Tj78jXeH68", "ABCD"));
            Assert.IsTrue(page.AuthUsr("3", "DF9a8cJf82", "ABCD"));
            Assert.IsTrue(page.AuthUsr("1", "FYi396Dd5u", "ABCD"));
            Assert.IsTrue(page.AuthUsr("2", "7gi7E8K4Ng", "ABCD"));
            Assert.IsFalse(page.AuthUsr("3", "Ke22Yh8Pp7", "ACD"));
            Assert.IsFalse(page.AuthUsr("4", "CXWREKrmcz", "ABCD"));
            Assert.IsFalse(page.AuthUsr("1", "RRSAxczxc", "rfq4234"));
            Assert.IsFalse(page.AuthUsr("114144", "tKKevv8%", "tKKevv8%"));
            Assert.IsFalse(page.AuthUsr("", "", ""));
            Assert.IsFalse(page.AuthUsr("", "tKKevv8", ""));
            Assert.IsFalse(page.AuthUsr("", "", "tKKevv8"));
            Assert.IsFalse(page.AuthUsr("144", "", ""));
        }

        [TestMethod]
        public void TestMethodReg()
        {
            var regi = new confer.Reg();

            Assert.IsTrue(regi.Registr("Александр","example@mail.ru", "808005553535", "123456", "it", "ithub","м", "Модератор"));
            Assert.IsTrue(regi.Registr("Иван", "ivan@mail.ru", "490913049141", "123456", "it", "ithub", "м", "Жюри"));
            Assert.IsTrue(regi.Registr("Петр", "petr@mail.ru", "794535482342", "123456", "it", "ithub", "м", "Жюри"));
            Assert.IsTrue(regi.Registr("Влад", "huawei@mail.ru", "12343214321", "123456", "екке", "ithub", "м", "Модератор"));
            Assert.IsTrue(regi.Registr("Саня!", "aaaaa@mail.ru", "765474576", "123456", "it", "ithub", "ж", "Модератор"));
            Assert.IsFalse(regi.Registr("","example@mail.ru", "465746574", "123456", "it", "ithub", "м", "Модератор"));
            Assert.IsFalse(regi.Registr("Иван", "", "808005553535", "123456", "it", "ithub", "м", "Жюри"));
            Assert.IsFalse(regi.Registr("Петр", "petr@mail.ru", "", "123456", "it", "ithub", "м", "Жюри"));
            Assert.IsFalse(regi.Registr("Влад", "huawei@mail.ru", "808005553535", "", "it", "", "м", "Модератор"));
            Assert.IsFalse(regi.Registr("", "", "", "", "", "", "", ""));
            Assert.IsFalse(regi.Registr("", "example@mail.ru", "808005553535", "12345", "it", "ithub", "м", "Модератор"));

        }
    }
}
