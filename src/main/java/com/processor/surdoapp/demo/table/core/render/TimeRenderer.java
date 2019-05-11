package com.processor.surdoapp.demo.table.core.render;

import com.processor.surdoapp.demo.table.core.ColumnValueRenderer;

import java.time.LocalDateTime;

public class TimeRenderer implements ColumnValueRenderer<LocalDateTime> {

    @Override
    public String render(LocalDateTime value) {
        return value.toLocalTime().toString();
    }

}
