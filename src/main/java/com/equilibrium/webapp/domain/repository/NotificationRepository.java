package com.equilibrium.webapp.domain.repository;

import com.equilibrium.webapp.domain.model.Notification;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.Optional;

public interface NotificationRepository extends JpaRepository<Notification, Long> {
    Page<Notification> findByCommerceId(Long commerceId, Pageable pageable);
    Optional<Notification> findByIdAndCommerceId(Long id, Long commerceId);
}
