using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Class1
/// </summary>
public class Conexao{
    public static string getConect()
    {
        return @"Data Source=.\SQLEXPRESS;Initial Catalog=GamingHouse;Integrated Security=True";
    }
}