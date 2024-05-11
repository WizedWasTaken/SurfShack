namespace SurfShack.Entities;

public class Reservation
{
    #region Fields
    private int reservationID;
    private Customer customer;
    private Surfboard surfboard;
    private DateTime startDate;
    private DateTime endDate;
    private string status;
    #endregion

    #region Constructors

    public Reservation(int reservationID, Customer customer, Surfboard surfboard, DateTime startDate, DateTime endDate,
        string status)
    {
        ReservationID = reservationID;
        Customer = customer;
        Surfboard = surfboard;
        StartDate = startDate;
        EndDate = endDate;
        Status = status;
    }
    #endregion

    #region Properties

    public int ReservationID
    {
        get => reservationID;
        set
        {
            reservationID = value;
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

    public Surfboard Surfboard
    {
        get => surfboard;
        set
        {
            surfboard = value;
        }
    }

    public DateTime StartDate
    {
        get => startDate;
        set
        {
            startDate = value;
        }
    }

    public DateTime EndDate
    {
        get => endDate;
        set
        {
            endDate = value;
        }
    }

    public string Status
    {
        get => status;
        set
        {
            status = value;
        }
    }

    #endregion
}