package com.processor.surdoapp.demo.table.core.filter;

import com.processor.surdoapp.demo.table.core.Filter;
import com.processor.surdoapp.demo.util.MessageHelper;

public class TextFilter implements Filter {

    private String title;

    private String name;

    public String getTitle() {
        return MessageHelper.translate(title);
    }

    public TextFilter setTitle(String title) {
        this.title = title;
        return this;
    }

    public String getName() {
        return name;
    }

    public TextFilter setName(String name) {
        this.name = name;
        return this;
    }

    @Override
    public String title() {
        return getTitle();
    }

    @Override
    public String name() {
        return getName();
    }

    @Override
    public String node() {
        return "text";
    }
}
