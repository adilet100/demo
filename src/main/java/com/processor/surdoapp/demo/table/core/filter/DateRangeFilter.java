package com.processor.surdoapp.demo.table.core.filter;

import com.processor.surdoapp.demo.table.core.Filter;
import com.processor.surdoapp.demo.util.MessageHelper;

public class DateRangeFilter implements Filter {

    private String title;

    private String name;

    private String start;

    private String end;

    public String getStart() {
        return start;
    }

    public DateRangeFilter setStart(String start) {
        this.start = start;
        return this;
    }

    public String getEnd() {
        return end;
    }

    public DateRangeFilter setEnd(String end) {
        this.end = end;
        return this;
    }

    public String getTitle() {
        return title;
    }

    public DateRangeFilter setTitle(String title) {
        this.title = title;
        return this;
    }

    public String getName() {
        return name;
    }

    public DateRangeFilter setName(String name) {
        this.name = name;
        return this;
    }

    @Override
    public String title() {
        return MessageHelper.translate(getTitle());
    }

    @Override
    public String name() {
        return getName();
    }

    @Override
    public String node() {
        return "dateRange";
    }
}
