package com.processor.surdoapp.demo.table.core.render;


import com.processor.surdoapp.demo.table.core.ColumnValueRenderer;

public class TextRenderer implements ColumnValueRenderer<Object> {

    @Override
    public String render(Object value) {
        return value.toString();
    }

}
