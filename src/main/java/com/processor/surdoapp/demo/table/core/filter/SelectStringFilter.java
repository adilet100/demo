package com.processor.surdoapp.demo.table.core.filter;

import com.processor.surdoapp.demo.table.core.Filter;
import com.processor.surdoapp.demo.util.MessageHelper;

import java.util.ArrayList;
import java.util.List;

public class SelectStringFilter implements Filter {

    private String title;

    private String name;

    private List<String> strings;

    public SelectStringFilter() {
        this.strings = new ArrayList<>();
    }

    public SelectStringFilter addOption(String option) {
        strings.add(option);
        return this;
    }

    public String getTitle() {
        return MessageHelper.translate(title);
    }

    public SelectStringFilter setTitle(String title) {
        this.title = title;
        return this;
    }

    public String getName() {
        return name;
    }

    public SelectStringFilter setName(String name) {
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
        return "selectString";
    }

    public List<String> getStrings() {
        return strings;
    }

    public void setStrings(List<String> strings) {
        this.strings = strings;
    }
}
