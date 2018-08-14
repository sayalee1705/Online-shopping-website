package com.sayali.onlineShoppingBackEnd;


import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import org.springframework.context.support.AbstractApplicationContext;

import com.sayali.onlineShoppingBackEnd.configuration.DBConfiguration;
import com.sayali.onlineShoppingBackEnd.dao.ProductDAO;
import com.sayali.onlineShoppingBackEnd.dao.ProductDAOImpl;
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
        ProductDAO productDao = (ProductDAO) context.getBean("productDAOImpl");
        Products product = new Products();
        product.setProductName("Titan ");
        product.setProductDescription("Divine new collection");
        product.setProductPrice(625);
        product.setProductQuantity(10);
        productDao.saveProduct(product);
    }
}
