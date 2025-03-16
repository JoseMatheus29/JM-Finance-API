package com.JmFinance.JmFinance_api.repository;

import com.JmFinance.JmFinance_api.model.Category;
import org.springframework.data.jpa.repository.JpaRepository;
import java.util.UUID;

public interface CategoryRepository extends JpaRepository<Category, UUID> {
}
