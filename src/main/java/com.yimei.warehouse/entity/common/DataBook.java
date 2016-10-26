package com.yimei.warehouse.entity.common;

import lombok.*;

import javax.persistence.*;
import java.io.Serializable;

@Entity
@Table(name = "f_warehouse_databook")
@Data
@NoArgsConstructor
@RequiredArgsConstructor
@AllArgsConstructor
public class DataBook implements Serializable {
    @Id
    @GeneratedValue(strategy= GenerationType.AUTO)
    @Column(name = "id")
    private int id;                    // id

    @Column(name = "sequence")
    @NonNull
    private int sequence;

    @Column(name = "name")
    @NonNull
    private String name;               // 名称

    @Column(name = "type")
    @NonNull
    private String type;               // 类型

}

