package com.processor.surdoapp.demo.table.core.render;

import j2html.TagCreator;
import com.processor.surdoapp.demo.table.core.ColumnValueRenderer;

public class LabelRenderer implements ColumnValueRenderer<Object> {

    private String color;

    public LabelRenderer() {
        this.color = TagColor.DEFAULT;
    }

    public LabelRenderer(String color) {
        this.color = color;
    }

    //<span class="label label-warning" > text </span>
    @Override
    public String render(Object value) {
        return TagCreator
                .span(value.toString())
                .withClasses("label", color())
                .render();
    }

    protected String color() {
        return String.format(
            "label-%s", color
        );
    }

}
