namespace SurfShack.Entities;

public class Payment
{
    #region Fields

    private int paymentID;
    private Reservation reservation;
    private double amount;
    private string paymentMethod;
    private DateTime paymentDate;
    private string paymentStatus;

    #endregion

    #region Constructors

    public Payment(int paymentID, Reservation reservation, double amount, string paymentMethod, DateTime paymentDate,
        string paymentStatus)
    {
        PaymentID = paymentID;
        Reservation = reservation;
        Amount = amount;
        PaymentMethod = paymentMethod;
        PaymentDate = paymentDate;
        PaymentStatus = paymentStatus;
    }

    #endregion

    #region Properties

    public int PaymentID
    {
        get => paymentID;
        set
        {
            paymentID = value;
        }
    }

    public Reservation Reservation
    {
        get => reservation;
        set
        {
            reservation = value;
        }
    }

    public double Amount
    {
        get => amount;
        set
        {
            amount = value;
        }
    }

    public string PaymentMethod
    {
        get => paymentMethod;
        set
        {
            paymentMethod = value;
        }
    }

    public DateTime PaymentDate
    {
        get => paymentDate;
        set
        {
            paymentDate = value;
        }
    }

    public string PaymentStatus
    {
        get => paymentStatus;
        set
        {
            paymentStatus = value;
        }
    }

    #endregion


}