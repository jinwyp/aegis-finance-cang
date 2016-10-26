package com.yimei.warehouse.entity.common;

import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;

import javax.persistence.*;
import java.io.Serializable;
import java.time.LocalDate;

@Entity
@Table(name = "f_warehouse_number")
@Data
@NoArgsConstructor
@RequiredArgsConstructor
public class Number implements Serializable {
    @Id
    @GeneratedValue(strategy= GenerationType.AUTO)
    @Column(name = "id")
    private Long id;

    @NonNull
    @Column(name = "type")
    private String type;

    @NonNull
    @Column(name = "create_date")
    private LocalDate createDate;
}
