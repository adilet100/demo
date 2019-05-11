package com.processor.surdoapp.demo.entity;

import com.querydsl.core.annotations.PropertyType;
import com.querydsl.core.annotations.QueryType;

import javax.persistence.*;
import java.io.Serializable;

@MappedSuperclass
public abstract class BaseEntity implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    protected Long id;

    @Transient
    @QueryType(PropertyType.STRING)
    protected String q;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }
}
