package com.processor.surdoapp.demo.table.core.render;

import com.processor.surdoapp.demo.table.core.ColumnValueRenderer;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

public class DateTimeRenderer implements ColumnValueRenderer<LocalDateTime> {

    @Override
    public String render(LocalDateTime value) {
        return value.format(
            DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss")
        );
    }

}
