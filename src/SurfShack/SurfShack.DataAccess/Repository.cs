using Microsoft.Data.SqlClient;

namespace SurfShack.DataAccess;

public class Repository
{
    private string connectionString = default;
    private SqlConnection connection;

    public Repository()
    {
        if (Environment.GetEnvironmentVariable("ASPNETCORE_ENVIRONMENT") == "Development")
        {
            connectionString = @"Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=SurfShackDB;Integrated Security=True;Connect Timeout=30;Encrypt=False;Trust Server Certificate=False;Application Intent=ReadWrite;Multi Subnet Failover=False";
        }
        else
        {
            connectionString = Environment.GetEnvironmentVariable("CONNECTION_STRING");
        }

        if (!CanConnect())
        {
            throw new Exception("Cannot connect to the database.");
        }
    }

    #region Methods

    protected void OpenConnection()
    {
        connection = new SqlConnection(connectionString);
        connection.Open();
    }

    protected void CloseConnection()
    {
        connection.Close();
    }

    /// <summary>
    /// Method to check if the connection can be established
    /// </summary>
    /// <returns>Boolean</returns>
    private bool CanConnect()
    {
        try
        {
            OpenConnection();
            return true;
        }
        catch (Exception)
        {
            return false;
        }
        finally
        {
            CloseConnection();
        }
    }

    /// <summary>
    /// Method to execute a query
    /// </summary>
    /// <param name="query"></param>
    /// <returns></returns>
    protected SqlDataReader ExecuteQuery(string query)
    {
        ArgumentNullException.ThrowIfNull(query);

        OpenConnection();
        SqlCommand command = new SqlCommand(query, connection);
        SqlDataReader reader = command.ExecuteReader();
        return reader;
    }

    #endregion
}