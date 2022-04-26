package com.example.tea_time.database.entity;

import lombok.*;

import javax.persistence.*;
import java.util.Date;
import java.util.Set;

@Getter
@Setter
@ToString
@EqualsAndHashCode
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name = "orders")
public class Order {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Integer id;

    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "user_id", nullable = false)
    private User user;

    @Column(name = "order_date")
    @Temporal(TemporalType.TIMESTAMP)
    private Date orderDate = new Date();

    @Column(name = "status")
    private String status;

    @Column(name = "credit_card")
    private String creditCard;

    @OneToMany(mappedBy = "order", fetch = FetchType.LAZY,
            cascade = CascadeType.ALL)
    private Set<OrderProduct> orderProducts;

}