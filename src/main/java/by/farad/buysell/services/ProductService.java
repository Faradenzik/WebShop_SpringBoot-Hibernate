package by.farad.buysell.services;

import by.farad.buysell.models.Product;
import by.farad.buysell.repositories.ProductRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
@Slf4j
@RequiredArgsConstructor
public class ProductService {
    private final ProductRepository productRepository;
    private List<Product> products = new ArrayList<>();

    public List<Product> getProducts(String title) {
        if (title != null) productRepository.findByTitle(title);
        return productRepository.findAll();
    }

    public void addProduct(Product product) {
        log.info("Adding new {}", product);
        productRepository.save(product);
    }

    public void deleteProduct(Long id) {
        productRepository.deleteById(id);
    }

    public Product getProductById(Long id) {
        return productRepository.findById(id).orElse(null);
    }
}
