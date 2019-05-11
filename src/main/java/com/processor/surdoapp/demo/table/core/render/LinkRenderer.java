package com.processor.surdoapp.demo.table.core.render;


import j2html.TagCreator;
import com.processor.surdoapp.demo.table.core.ColumnValueRenderer;

public class LinkRenderer implements ColumnValueRenderer<Object> {

    private final String href;

    public LinkRenderer(String href) {
        this.href = href;
    }

    @Override
    public String render(Object value) {
        return TagCreator.a(value.toString()).withHref(href(value)).render();
    }

    protected String href(Object value) {
        return String.format(
            href, value
        );
    }

}
