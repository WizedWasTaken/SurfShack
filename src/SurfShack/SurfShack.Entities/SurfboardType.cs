namespace SurfShack.Entities;

public class SurfboardType
{
    #region Fields

    private int surfboardTypeID;
    private string name;
    private string description;

    #endregion

    #region Constructors

    public SurfboardType(int surfboardTypeID, string name, string description)
    {
        SurfboardTypeID = surfboardTypeID;
        Name = name;
        Description = description;
    }

    #endregion

    #region Properties

    public int SurfboardTypeID
    {
        get => surfboardTypeID;
        set { surfboardTypeID = value; }
    }

    public string Name
    {
        get => name;
        set { name = value; }
    }

    public string Description
    {
        get => description;
        set { description = value; }
    }

    #endregion
}