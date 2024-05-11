namespace SurfShack.Entities;

public class Surfboard
{
    #region Fields

    private int surfboardID;
    private SurfboardType type;
    private decimal length;
    private decimal width;
    private decimal thickness;
    private decimal volume;
    private decimal weight;
    private decimal price;
    private string description;

    #endregion

    #region Constructors

    public Surfboard(int surfboardID, SurfboardType type, decimal length, decimal width, decimal thickness, decimal volume, decimal weight, decimal price, string description)
    {
        SurfboardID = surfboardID;
        Type = type;
        Length = length;
        Width = width;
        Thickness = thickness;
        Volume = volume;
        Weight = weight;
        Price = price;
        Description = description;
    }

    #endregion

    #region Properties

    public int SurfboardID
    {
        get => surfboardID;
        set
        {
            surfboardID = value;
        }
    }

    public SurfboardType Type
    {
        get => type;
        set
        {
            type = value;
        }
    }

    public decimal Length
    {
        get => length;
        set
        {
            length = value;
        }
    }

    public decimal Width
    {
        get => width;
        set
        {
            width = value;
        }
    }

    public decimal Thickness
    {
        get => thickness;
        set
        {
            thickness = value;
        }
    }

    public decimal Volume
    {
        get => volume;
        set
        {
            volume = value;
        }
    }

    public decimal Weight
    {
        get => weight;
        set
        {
            weight = value;
        }
    }

    public decimal Price
    {
        get => price;
        set
        {
            price = value;
        }
    }

    public string Description
    {
        get => description;
        set
        {
            description = value;
        }
    }

    #endregion
}