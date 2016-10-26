package com.yimei.warehouse.representation.common.result;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.validation.constraints.NotNull;
import java.io.Serializable;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class CombineObject<T, U> implements Serializable {
    @NotNull
    public T t;
    @NotNull
    public U u;
}
