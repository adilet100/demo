package com.processor.surdoapp.demo.table.core;

import j2html.TagCreator;
import j2html.tags.ContainerTag;
import org.apache.catalina.util.ParameterMap;
import org.springframework.data.domain.Sort;
import com.processor.surdoapp.demo.util.MessageHelper;
import com.processor.surdoapp.demo.util.UriHelper;

import javax.servlet.http.HttpServletRequest;

public class Column {

    private String width;

    private String name;

    private String title;

    private String className;

    private String defaultContent = "";

    private boolean visible = true;

    private boolean orderable = false;

    private ColumnValueRenderer render;

    private final Sort.Order order;

    private final HttpServletRequest request;

    @Deprecated
    public String getWidth() {
        return width;
    }

    public Column setWidth(String width) {
        this.width = width;
        return this;
    }

    public Column(
        Sort.Order order,
        HttpServletRequest request
    ) {
        this.order = order;
        this.request = request;
    }

    public Column setName(String name) {
        this.name = name;
        return this;
    }

    public Column setTitle(String title) {
        this.title = title;
        return this;
    }

    public String getClassName() {
        return className;
    }

    public Column setClassName(String className) {
        this.className = className;
        return this;
    }

    public boolean isVisible() {
        return visible;
    }

    public Column setVisible(boolean visible) {
        this.visible = visible;
        return this;
    }

    public boolean isOrderable() {
        return orderable;
    }

    public Column setOrderable(boolean orderable) {
        this.orderable = orderable;
        return this;
    }

    public Column setDefaultContent(String defaultContent) {
        this.defaultContent = defaultContent;
        return this;
    }

    public Column setRender(ColumnValueRenderer render) {
        this.render = render;
        return this;
    }

    public String defaultContent() {
        return defaultContent;
    }

    public String title() {
        return title;
    }

    public String name() {
        return name;
    }

    public String width() {
        return width;
    }

    public String render() {
        String title = MessageHelper.translate(title());

        if(!isOrderable())
            return title;


        ParameterMap<String, String[]> params = new ParameterMap<>(request.getParameterMap());
        params.setLocked(false);
        params.put("sort", new String[]{name() + ",asc"});

        ContainerTag i = TagCreator.i().withClass("icon-menu-open");
        if (null != order)
            if (order.isAscending()) {
                i = TagCreator.i().withClass("icon-arrow-up5");
                params.put("sort", new String[]{name() + ",desc"});
            } else {
                i = TagCreator.i().withClass("icon-arrow-down5");
//                params.remove("sort");
            }


        return TagCreator.a(title)
                        .withClass("text-default")
                        .withHref(new UriHelper(request).getNewUrl(params))
                        .with(i)
                        .render();
    }

    public String renderValue(Object value) {
        if(null == value)
            return defaultContent();

        return render.render(value);
    }

}
