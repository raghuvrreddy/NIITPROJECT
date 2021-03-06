package ecomProject.ecommerce.dao;

import java.util.List;

import ecomProject.ecommerce.model.Product;

public interface ProductDaoService {
	
	public boolean addProduct(Product product);
	public boolean deleteProduct(Product product);
	public boolean updateProduct(Product product);
	public List<Product> getAllProducts(int vendor_id);
	public int getSubCategoryId(int product_id);
	public List<Product> getProducts(int subCategory_id);
	public Product getProduct(int product_id);
	public List<Product> getAllProducts();
	public List<Product> getProducts(String product_name);
	
	

}
