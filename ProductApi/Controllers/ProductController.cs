using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using ProductApi.Data;
using ProductApi.Model;


namespace ProductApi.Controllers
{
    [Route("[controller]")]
    [ApiController]
    public class ProductController : ControllerBase
    {
        private readonly AppDbContext _context;

        public ProductController(AppDbContext context)
        {
            _context = context;
        }


        [HttpGet]
        public async Task<ActionResult<IEnumerable<ProductApi.Model.Porducts>>> Getproducts()
        {
            return await _context.products.ToListAsync();
        }

        //post
        [HttpPost]
        public async Task<ActionResult<IEnumerable<ProductApi.Model.Porducts>>> PostProducts(Porducts products)
        {
            products.id = Guid.NewGuid();
            _context.products.Add(products);
            await _context.SaveChangesAsync();
            return CreatedAtAction("Getproducts", new { id = products.id }, products);
        }
    }
}
