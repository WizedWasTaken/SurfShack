namespace SurfShack.Entities;

public class Coupon
{
    #region Fields

    private int couponID;
    private string couponCode;
    private decimal discount;
    private SurfboardType surfboardType;
    private DateTime expiryDate;
    private Surfboard surfboard;
    private Customer customer;
    private int maxUses;
    private int currentUses;

    #endregion

    #region Constructors

    public Coupon(int couponID, string couponCode, decimal discount, SurfboardType surfboardType, DateTime expiryDate,
        Surfboard surfboard, Customer customer, int maxUses, int currentUses)
    {
        CouponID = couponID;
        CouponCode = couponCode;
        Discount = discount;
        SurfboardType = surfboardType;
        ExpiryDate = expiryDate;
        Surfboard = surfboard;
        Customer = customer;
        MaxUses = maxUses;
        CurrentUses = currentUses;
    }

    #endregion

    #region Properties

    public int CouponID
    {
        get => couponID;
        set { couponID = value; }
    }

    public string CouponCode
    {
        get => couponCode;
        set { couponCode = value; }
    }

    public decimal Discount
    {
        get => discount;
        set { discount = value; }
    }

    public SurfboardType SurfboardType
    {
        get => surfboardType;
        set { surfboardType = value; }
    }

    public DateTime ExpiryDate
    {
        get => ExpiryDate;
        set { ExpiryDate = value; }
    }

    public Surfboard Surfboard
    {
        get => surfboard;
        set { surfboard = value; }
    }

    public Customer Customer
    {
        get => customer;
        set { customer = value; }
    }


    public int MaxUses
    {
        get => maxUses;
        set { maxUses = value; }
    }

    public int CurrentUses
    {
        get => currentUses;
        set { currentUses = value; }
    }

    #endregion

}