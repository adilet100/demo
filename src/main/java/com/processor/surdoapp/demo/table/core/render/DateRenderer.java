package com.processor.surdoapp.demo.table.core.render;

import com.processor.surdoapp.demo.table.core.ColumnValueRenderer;

import java.time.LocalDateTime;

public class DateRenderer implements ColumnValueRenderer<LocalDateTime> {

    @Override
    public String render(LocalDateTime value) {
        return value.toLocalDate().toString();
    }

}
