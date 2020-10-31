package com.equilibrium.webapp.controller;

import com.equilibrium.webapp.domain.model.Payment;
import com.equilibrium.webapp.domain.model.Sale;
import com.equilibrium.webapp.domain.service.SaleService;
import com.equilibrium.webapp.resource.PaymentResource;
import com.equilibrium.webapp.resource.SaleResource;
import com.equilibrium.webapp.resource.SavePaymentResource;
import com.equilibrium.webapp.resource.SaveSaleResource;
import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageImpl;
import org.springframework.data.domain.Pageable;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import java.util.List;
import java.util.stream.Collectors;

@RestController
@RequestMapping("/api/commerces/{commerceId}/clients/{clientId}")
public class SaleController {

    @Autowired
    private SaleService saleService;

    @Autowired
    private ModelMapper mapper;

    @GetMapping("/sales")
    public Page<SaleResource> getAllSalesByClientId(
            @PathVariable(name = "clientId") Long clientId, Pageable pageable){
        Page<Sale> salePage = saleService.getAllSalesByClientId(clientId, pageable);
        List<SaleResource> resources = salePage.getContent().stream()
                .map(this::convertToResource).collect(Collectors.toList());
        return new PageImpl<>(resources, pageable, resources.size());
    }

    @GetMapping("/sales/{saleId}")
    public SaleResource getSaleByIdAndClientId(
            @PathVariable(name = "clientId") Long clientId,
            @PathVariable(name = "saleId") Long saleId){
        return convertToResource(saleService.getSaleByIdAndClientId(saleId, clientId));
    }

    @PostMapping("/sales")
    public SaleResource createSale(
            @PathVariable(name = "clientId") Long clientId,
            @Valid @RequestBody SaveSaleResource resource){
        return convertToResource(saleService.createSale(clientId, convertToEntity(resource)));
    }

    @PutMapping("/sales/{saleId}")
    public SaleResource updateSale(
            @PathVariable(name = "clientId") Long clientId,
            @PathVariable(name = "saleId") Long saleId,
            @Valid @RequestBody SaveSaleResource resource){
        return convertToResource(saleService.updateSale(clientId, saleId,
                convertToEntity(resource)));
    }

    @DeleteMapping("/sales/{saleId}")
    public ResponseEntity<?> deleteSale(
            @PathVariable(name = "clientId") Long clientId,
            @PathVariable(name = "saleId") Long saleId){
        return saleService.deleteSale(saleId, clientId);
    }

    private Sale convertToEntity(SaveSaleResource resource){ return mapper.map(resource,
            Sale.class); }

    private SaleResource convertToResource(Sale entity){ return mapper.map(entity,
            SaleResource.class); }
}