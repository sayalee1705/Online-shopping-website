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
        ProductDAO productDao = (ProductDAO) context.getBean("productdao");
        Products product = new Products();
        product.setProductName("Overfly Spotalen-Dual Time Analog-Digital Chronograph Watch For-Men");
        product.setProductBrand("OVERFLY SPOTALEN");
        product.setProductDisplayType("Analog-Digital");
        product.setProductKeySpecs("Dial Size:53 MM");
        product.setProductDescription("Back Light,Chronograph,Complete Calendar,Multiple Time Zone,Perpetual Calendar,Water Resistant,Alarm");
        product.setProductPrice(7999);
        product.setProductQuantity(10);
        productDao.saveProduct(product);
    }
}
