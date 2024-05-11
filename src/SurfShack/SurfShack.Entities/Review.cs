namespace SurfShack.Entities;

public class Review
{
    #region Fields
    
    private int reviewID;
    private Customer customer;
    private Surfboard surfboard;
    private int rating;
    private string comment;
    private DateTime date;
    
    #endregion

    #region Constructors

    public Review(int reviewID, Customer customer, Surfboard surfboard, int rating, string comment, DateTime date)
    {
        ReviewID = reviewID;
        Customer = customer;
        Surfboard = surfboard;
        Rating = rating;
        Comment = comment;
        ReviewDate = date;
    }

    #endregion

    #region Properties

    public int ReviewID
    {
        get => reviewID;
        set
        {
            reviewID = value;
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

    public int Rating
    {
        get => rating;
        set
        {
            rating = value;
        }
    }

    public string Comment
    {
        get => comment;
        set
        {
            comment = value;
        }
    }

    public DateTime ReviewDate
    {
        get => date;
        set
        {
            date = value;
        }
    }

    #endregion
}