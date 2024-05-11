using Microsoft.AspNetCore.Mvc;
using SurfShack.DataAccess;
using SurfShack.Entities;

// For more information on enabling Web API for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace SurfShack.API.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class CustomerController : ControllerBase
    {

        #region Endpoints
        /// <summary>
        /// Get endpoint to get all customers
        /// </summary>
        /// <returns>List of all members</returns>
        [HttpGet]
        public IActionResult GetCustomers()
        {
            try
            {
                CustomerRepository customerRepository = new CustomerRepository();
                var customers = customerRepository.GetCustomers();
                return Ok(customers);
            }
            catch (Exception ex)
            {
                return BadRequest(ex.Message);
            }
        }


        /// <summary>
        /// Get endpoint to get all members
        /// </summary>
        /// <returns>Specific member in the database.</returns>
        [HttpGet("{id}")]
        public IActionResult GetMemberByID(int id)
        {
            try
            {
                CustomerRepository customerRepository = new CustomerRepository();
                var customer = customerRepository.GetCustomerById(id);
                Console.WriteLine(customer);
                return Ok(customer);
            }
            catch (Exception ex)
            {
                return BadRequest(ex.Message);
            }
        }

        /// <summary>
        /// Post endpoint to create a new customer
        /// </summary>
        /// <param name="customer">Customer object</param>
        /// <returns></returns>
        [HttpPost]
        public IActionResult CreateCustomer(Customer customer)
        {
            try
            {
                CustomerRepository customerRepository = new CustomerRepository();
                customer.Password = EncryptPassword(customer.Password);
                int result = customerRepository.CreateCustomer(customer);
                return Ok(result);
            }
            catch (Exception ex)
            {
                return BadRequest(ex.Message);
            }
        }

        [HttpDelete("{id}")]
        public IActionResult DeleteCustomer(int id)
        {
            
            try
            {
                CustomerRepository customerRepository = new CustomerRepository();
                customerRepository.DeleteCustomer(id);
                return Ok("Brugeren blev slettet");
            }
            catch (Exception ex)
            {
                return BadRequest(ex.Message);
            }
        }

        #endregion

        #region Methods

        [NonAction]
        public string EncryptPassword(string password)
        {
            return BCrypt.Net.BCrypt.HashPassword(password);
        }

        #endregion
    }
}
