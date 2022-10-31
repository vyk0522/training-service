package com.onejava.entities;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;
import java.time.LocalDateTime;

@Getter
@Setter
@Entity
@Table(name = "passport")
public class Passport {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id", nullable = false)
    private Integer id;

    @Column(name = "name", nullable = false)
    private String name;

    @Column(name = "place", nullable = false)
    private String place;

    @Column(name = "number", nullable = false, unique = true)
    private String number;

    @Column(name = "issued_at", nullable = false)
    private LocalDateTime issuedAt;

    @OneToOne(mappedBy = "passport", orphanRemoval = true)
    private Student student;

}