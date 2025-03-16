package com.JmFinance.JmFinance_api.repository;

import com.JmFinance.JmFinance_api.model.PaymentMethod;
import org.springframework.data.jpa.repository.JpaRepository;
import java.util.UUID;

public interface PaymentMethodRepository extends JpaRepository<PaymentMethod, UUID> {
}
