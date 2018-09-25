package com.sayali.onlineShoppingBackEnd;


import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import org.springframework.context.support.AbstractApplicationContext;

import com.sayali.onlineShoppingBackEnd.configuration.DBConfiguration;
import com.sayali.onlineShoppingBackEnd.dao.CartItemsDAO;
import com.sayali.onlineShoppingBackEnd.dao.CartItemsDAOImpl;
import com.sayali.onlineShoppingBackEnd.dao.CustomerDAO;
import com.sayali.onlineShoppingBackEnd.dao.CustomerDAOImpl;
import com.sayali.onlineShoppingBackEnd.dao.ProductDAO;
import com.sayali.onlineShoppingBackEnd.dao.ProductDAOImpl;
import com.sayali.onlineShoppingBackEnd.models.CartItems;
import com.sayali.onlineShoppingBackEnd.models.Customer;
import com.sayali.onlineShoppingBackEnd.models.Products;


/**
 * Hello world!
 *
 */
public class App 
{
    public static void main( String[] args )
    {
        System.out.println( "Hello World!" );
        AbstractApplicationContext context=new AnnotationConfigApplicationContext(DBConfiguration.class,ProductDAOImpl.class);
        ProductDAO productDao = (ProductDAO) context.getBean("productdao");
        Products product = new Products();
        productDao.updateQuantity(135, 8);
        
       /** CustomerDAO customerdao = (CustomerDAO) context.getBean("userdao");
        Customer customer = new Customer(); */
        
        
    }
}
