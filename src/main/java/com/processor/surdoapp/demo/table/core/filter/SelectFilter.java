package com.processor.surdoapp.demo.table.core.filter;

import com.processor.surdoapp.demo.table.core.Filter;
import com.processor.surdoapp.demo.util.MessageHelper;

public class SelectFilter implements Filter {

    private String title;

    private String name;

    private String url;

    @Override
    public String title() {
        return MessageHelper.translate(title);
    }

    @Override
    public String name() {
        return name;
    }

    @Override
    public String node() {
        return "select";
    }

    public String getTitle() {
        return title;
    }

    public SelectFilter setTitle(String title) {
        this.title = title;
        return this;
    }

    public String getName() {
        return name;
    }

    public SelectFilter setName(String name) {
        this.name = name;
        return this;
    }

    public String getUrl() {
        return url;
    }

    public SelectFilter setUrl(String url) {
        this.url = url;
        return this;
    }

    public String url() {
        return getUrl();
    }
}
