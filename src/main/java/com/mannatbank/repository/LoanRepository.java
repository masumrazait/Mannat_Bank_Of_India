package com.mannatbank.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.mannatbank.entity.Loan;

public interface LoanRepository extends JpaRepository<Loan, Long> {
    List<Loan> findByUserId(Long userId);
}
