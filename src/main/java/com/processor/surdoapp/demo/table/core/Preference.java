package com.processor.surdoapp.demo.table.core;

import java.util.List;

/**
 * Created by abdysamat on 9/18/17.
 * n.u.abdysamat@gmail.com
 */
public class Preference {
    private String title;
    private List<PreferenceValue> list;
    private boolean active;

    public Preference(String title, boolean active, List<PreferenceValue> list) {
        this.title = title;
        this.list = list;
        this.active = active;
    }

    public Preference(String title, List<PreferenceValue> list) {
        this.title = title;
        this.list = list;
        this.active = false;
    }

    public Preference() {
    }

    public Preference(List<PreferenceValue> list) {
        this.list = list;
    }

    public String getId() {
        return title.replaceAll("\\.", "-");
    }

    public static class PreferenceValue {
        private String key;
        private String value;

        public PreferenceValue(String key, String value) {
            this.key = key;
            this.value = value;
        }
    }

    public String getTitle() {
        return title;
    }

    public Preference setTitle(String title) {
        this.title = title;
        return this;
    }

    public List<PreferenceValue> getList() {
        return list;
    }

    public Preference setList(List<PreferenceValue> list) {
        this.list = list;
        return this;
    }

    public boolean isActive() {
        return active;
    }

    public Preference setActive(boolean active) {
        this.active = active;
        return this;
    }
}