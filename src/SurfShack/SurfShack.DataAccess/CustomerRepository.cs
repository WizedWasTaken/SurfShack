using Microsoft.Data.SqlClient;
using SurfShack.Entities;

namespace SurfShack.DataAccess;

public class CustomerRepository : Repository
{
    #region Constructors

    public CustomerRepository() : base()
    {
    }

    #endregion

    #region Methods

    public List<Customer> GetCustomers()
    {
        string sql =
            $"SELECT dbo.Addresses.Street, dbo.Addresses.City, dbo.Addresses.State, dbo.Addresses.Zip, dbo.Customers.CustomerID, dbo.Customers.Name, dbo.Customers.Email, dbo.Customers.Password, dbo.Customers.PhoneNumber, dbo.Addresses.AddressId " +
            $"FROM dbo.Addresses " +
            $"INNER JOIN dbo.Customers ON dbo.Addresses.AddressId = dbo.Customers.Address";

        try
        {
            List<Customer> customers = new();
            SqlDataReader reader = ExecuteQuery(sql);

            while (reader.Read())
            {
                customers.Add(new Customer(
                    Convert.ToInt32(reader["CustomerID"]),
                    reader["Name"].ToString(),
                    reader["Email"].ToString(),
                    reader["PhoneNumber"].ToString(),
                    new Address(
                        Convert.ToInt32(reader["AddressId"]),
                        reader["Street"].ToString(),
                        reader["City"].ToString(),
                        reader["State"].ToString(),
                        reader["Zip"].ToString()
                    )
                ));
            }

            return customers;
        }
        catch (Exception ex)
        {
            throw new Exception(ex.Message);
        }
        finally
        {
            CloseConnection();
        }
    }

    public Customer GetCustomerById(int id)
    {
        string sql =
            $"SELECT dbo.Addresses.Street, dbo.Addresses.City, dbo.Addresses.State, dbo.Addresses.Zip, dbo.Customers.CustomerID, dbo.Customers.Name, dbo.Customers.Email, dbo.Customers.Password, dbo.Customers.PhoneNumber, dbo.Addresses.AddressId " +
            $"FROM dbo.Addresses " +
            $"INNER JOIN dbo.Customers ON dbo.Addresses.AddressId = dbo.Customers.Address " +
            $"WHERE CustomerID = {id}";

        try
        {
            SqlDataReader reader = ExecuteQuery(sql);

            while (reader.Read())
            {
                return new Customer(
                    Convert.ToInt32(reader["CustomerID"]),
                    reader["Name"].ToString(),
                    reader["Email"].ToString(),
                    reader["PhoneNumber"].ToString(),
                    new Address(
                        Convert.ToInt32(reader["AddressId"]),
                        reader["Street"].ToString(),
                        reader["City"].ToString(),
                        reader["State"].ToString(),
                        reader["Zip"].ToString()
                    )
                );
            }
        }
        catch (Exception ex)
        {
            throw new Exception(ex.Message);
        }
        finally
        {
            CloseConnection();
        }

        throw new Exception("No customer with this name.");
    }

    /// <summary>
    /// Method to create a new customer
    ///
    /// Used in /api/customer POST endpoint
    /// </summary>
    /// <param name="customer">Customer object</param>
    /// <returns>Newly created row ID</returns>
    /// <exception cref="Exception"></exception>
    public int CreateCustomer(Customer customer)
    {
        string sql =
            $"INSERT INTO addresses VALUES('{customer.Address.Street}', '{customer.Address.City}', '{customer.Address.State}', '{customer.Address.Zip}');" +
            $"INSERT INTO customers VALUES('{customer.Name}', '{customer.Email}', '{customer.Password}', '{customer.Phone}', (SELECT MAX(AddressID) FROM addresses)) Select SCOPE_IDENTITY();";

        try
        {
            int result = default;
            SqlDataReader reader = ExecuteQuery(sql);
            while (reader.Read())
            {
                result = Convert.ToInt32(reader[0]);
            }

            return result;
        }
        catch (Exception ex)
        {
            throw new Exception(ex.Message);
        }
        finally
        {
            CloseConnection();
        }
    }

    public bool DeleteCustomer(int id)
    {
        string sql = $"DELETE FROM Customers WHERE CustomerID = {id};" +
                     $"DELETE FROM Reviews WHERE CustomerID = {id};" +
                     $"DELETE FROM Addresses ";

        try
        {
            ExecuteQuery(sql);

            return true;
        }
        catch (Exception ex)
        {
            throw new Exception(ex.Message);
        }
        finally
        {
            CloseConnection();
        }
    }

    #endregion
}