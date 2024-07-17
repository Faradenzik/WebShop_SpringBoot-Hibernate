package by.farad.buysell.controllers;

import by.farad.buysell.models.Seller;
import by.farad.buysell.services.SellerService;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Optional;

@RestController
@RequestMapping("/sellers")
public class SellerController {

    @Autowired
    private SellerService sellerService;

    @GetMapping
    public List<Seller> getAllSellers() {
        return sellerService.getAllSellers();
    }

    @GetMapping("/{id}")
    public Optional<Seller> getSellerById(@PathVariable Long id) {
        return sellerService.getSellerById(id);
    }

    @PostMapping
    public Seller createSeller(@RequestBody Seller seller) {
        return sellerService.saveSeller(seller);
    }

    @PutMapping("/{id}")
    public Seller updateSeller(@PathVariable Long id, @RequestBody Seller sellerDetails) {
        Seller seller = sellerService.getSellerById(id).orElseThrow(() -> new RuntimeException("Seller not found"));
        seller.setName(sellerDetails.getName());
        seller.setEmail(sellerDetails.getEmail());
        seller.setRegistrationDate(sellerDetails.getRegistrationDate());
        return sellerService.saveSeller(seller);
    }

    @DeleteMapping("/{id}")
    public void deleteSeller(@PathVariable Long id) {
        sellerService.deleteSeller(id);
    }
}
