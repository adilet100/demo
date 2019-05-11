package com.processor.surdoapp.demo.util;

public class SelectOption implements Selectable {

    public final String id;
    public final String title;

    public SelectOption(String id, String title) {
        this.id     = id;
        this.title  = title;
    }

    @Override
    public String getSelectorId() {
        return id;
    }

    @Override
    public String getSelectorTitle() {
        return title;
    }

}
