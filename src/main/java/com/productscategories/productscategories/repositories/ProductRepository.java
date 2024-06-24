package com.productscategories.productscategories.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.productscategories.productscategories.models.Category;
import com.productscategories.productscategories.models.Product;

public interface ProductRepository extends JpaRepository<Product, Long> {
	List<Product> findAll();
	Product findByIdIs(Long id);
	List<Product> findAllByCategories(Category category);
	List<Product> findByCategoriesNotContains(Category category);

}
