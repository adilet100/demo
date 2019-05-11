package com.processor.surdoapp.demo.table.core;

@FunctionalInterface
public interface ColumnValueRenderer<T> {

    String render(T value);

}
