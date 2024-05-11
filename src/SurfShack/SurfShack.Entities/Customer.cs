using System.Text.Json.Serialization;

namespace SurfShack.Entities;

public class Customer
{
    #region Field

    private int customerID;
    private string name;
    private string email;
    private string password;
    private string phone;
    private Address address;

    #endregion

    #region Constructors

    public Customer(int customerID, string name, string email, string phone, Address address)
    {
        CustomerID = customerID;
        Name = name;
        Email = email;
        Phone = phone;
        Address = address;
    }

    [JsonConstructor]
    public Customer(int customerID, string name, string email, string password, string phone, Address address)
    {
        CustomerID = customerID;
        Name = name;
        Email = email;
        Password = password;
        Phone = phone;
        Address = address;
    }

    #endregion

    #region Properties

    public int CustomerID
    {
        get => customerID;
        set { customerID = value; }
    }

    public string Name
    {
        get => name;
        set { name = value; }
    }

    public string Email
    {
        get => email;
        set
        {
            if (string.IsNullOrEmpty(value))
            {
                value = "Ingen email oplyst.";
            }

            if (value != email)
            {
                email = value;
            }
        }
    }

    public string Password
    {
        get => password;
        set { password = value; }
    }

    public string Phone
    {
        get => phone;
        set
        {
            if (string.IsNullOrEmpty(value))
            {
                value = "Intet telefon nummer oplyst.";
            }

            if (value != phone)
            {
                phone = value;
            }
        }
    }

    public Address Address
    {
        get => address;
        set { address = value; }
    }

    #endregion
}