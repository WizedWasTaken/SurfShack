using System.Text.Json.Serialization;

namespace SurfShack.Entities;

public class Address
{
    #region Fields

    private int addressID;
    private string street;
    private string city;
    private string state;
    private string zip;

    #endregion

    #region Constructors

    public Address()
    {
    }

    [JsonConstructor]
    public Address(int addressID, string street, string city, string state, string zip)
    {
        AddressID = addressID;
        Street = street;
        City = city;
        State = state;
        Zip = zip;
    }

    #endregion

    #region Properties

    public int AddressID
    {
        get => addressID;
        set { addressID = value; }
    }

    public string Street
    {
        get => street;
        set { street = value; }
    }

    public string City
    {
        get => city;
        set { city = value; }
    }

    public string State
    {
        get => state;
        set { state = value; }
    }

    public string Zip
    {
        get => zip;
        set { zip = value; }
    }

    #endregion
}