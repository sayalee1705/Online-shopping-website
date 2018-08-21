package com.sayali.onlineShoppingBackEnd.configuration;

import java.util.Properties;

import javax.sql.DataSource;

import org.apache.commons.dbcp.BasicDataSource;
import org.hibernate.SessionFactory;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.orm.hibernate5.HibernateTransactionManager;
import org.springframework.orm.hibernate5.LocalSessionFactoryBuilder;
import org.springframework.transaction.annotation.EnableTransactionManagement;

import com.sayali.onlineShoppingBackEnd.models.Category;
import com.sayali.onlineShoppingBackEnd.models.Products;



@Configuration
@EnableTransactionManagement
public class DBConfiguration {
	
	@Bean(name="dataSource")
	public DataSource getDataSource() {
		System.out.println("Entering getDataSource()");
		BasicDataSource dataSource = new BasicDataSource();
		dataSource.setDriverClassName("org.h2.Driver");
		dataSource.setUrl("jdbc:h2:tcp://localhost/~/watchit");
		dataSource.setUsername("sa");
		dataSource.setPassword("");
		System.out.println("Connection Sucess");
		return dataSource;
	}
	
	@Bean
	public SessionFactory sessionFactory() {
		System.out.println("Entering session factory()");
		LocalSessionFactoryBuilder lsf=new LocalSessionFactoryBuilder(getDataSource());
		System.out.println("localSessionFactoryBuilder created");
		Properties hibernateProperties=new Properties();
		System.out.println("properties object is created");
		System.out.println("Setting hibernate properties");
		hibernateProperties.setProperty("hibernate.dialect", "org.hibernate.dialect.H2Dialect");
		hibernateProperties.setProperty("hibernate.hbm2ddl.auto", "update");
		hibernateProperties.setProperty("hibernate.show_sql", "true");
		lsf.addProperties(hibernateProperties);
		System.out.println("Property added");
		Class classes[]=new Class[]{Products.class,Category.class};
		System.out.println("SessionFactory bean " + lsf);
		return lsf.addAnnotatedClasses(classes).buildSessionFactory();
		//return lsf.buildSessionFactory();
	}
	
	@Bean
	public HibernateTransactionManager hibTransManagement(){
		return new HibernateTransactionManager(sessionFactory());
	}

}
