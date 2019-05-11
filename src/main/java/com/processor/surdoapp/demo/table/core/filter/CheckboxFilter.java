package com.processor.surdoapp.demo.table.core.filter;

import com.processor.surdoapp.demo.table.core.Filter;
import com.processor.surdoapp.demo.util.MessageHelper;

/**
 * Date: 14.04.17
 * Time: 12:51
 *
 * @author Mark Korzhov (megasdev@gmail.com)
 */
public class CheckboxFilter implements Filter {

    private String title;

    private String name;

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
        return "checkbox";
    }

    public String getTitle() {
        return title;
    }

    public CheckboxFilter setTitle(String title) {
        this.title = title;
        return this;
    }

    public String getName() {
        return name;
    }

    public CheckboxFilter setName(String name) {
        this.name = name;
        return this;
    }
}
