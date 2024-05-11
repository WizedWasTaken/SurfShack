namespace SurfShack.Entities;

public class Staff
{
    #region Fields
    private int staffID;
    private string role;
    private Customer customer;

    #endregion

    #region Constructors

    public Staff(int staffID, string role, Customer customer)
    {
        StaffID = staffID;
            Role = role;
            Customer = customer;
    }

    #endregion

    #region Properties

    public int StaffID
    {
        get => staffID;
        set
        {
            staffID = value;
        }
    }

    public string Role
    {
        get => role;
        set
        {
            role = value;
        }
    }

    public Customer Customer
    {
        get => customer;
        set
        {
            customer = value;
        }
    }

    #endregion
}