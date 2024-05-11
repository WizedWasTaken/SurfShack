namespace SurfShack.Entities;

public class Role
{
    #region Fields
    
    private int roleID;
    private string name;
    private string description;

    #endregion

    #region Constructors

    public Role(int roleID, string name, string description)
    {
        RoleID = roleID;
        Name = name;
        Description = description;
    }

    #endregion

    #region Properties

    public int RoleID
    {
        get => roleID;
        set { roleID = value; }
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