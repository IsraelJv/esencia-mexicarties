package com.ecommerce.HerenciaMexicarties.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import com.ecommerce.HerenciaMexicarties.models.PaymentMethods;

public interface PaymentMethodsRepository extends JpaRepository<PaymentMethods, Integer> {

}
