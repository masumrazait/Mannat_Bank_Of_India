package com.mannatbank.entity;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import lombok.Data;

@Entity
@Data
public class Loan {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long loanId;

    private Long userId; // Foreign Key
    private String loanType; // Home, Personal, Education
    private Double loanAmount;
    private Double interestRate;
    private Integer tenureMonths;
    private String status; // Active or Paid
}
