package com.processor.surdoapp.demo.table.core;


import com.processor.surdoapp.demo.util.MessageHelper;
import com.processor.surdoapp.demo.util.Selectable;

public class Button {

    protected String title;
    protected Integer type;
    protected String actionUrl;
    protected Color color;
    protected String icon;

    public String text() {
        return null != icon ?
                String.format(
                        "<i class=\"icon-%s position-left\"></i>%s", icon, getTitle()
                ) :
                getTitle();
    }

    public String getTitle() {
        return MessageHelper.translate(title);
    }

    public Button setTitle(String title) {
        this.title = title;
        return this;
    }

    public Integer getType() {
        return type;
    }

    public Button setType(Integer type) {
        this.type = type;
        return this;
    }

    public String getActionUrl() {
        return actionUrl;
    }

    public Button setActionUrl(String actionUrl) {
        this.actionUrl = actionUrl;
        return this;
    }

    public Color getColor() {
        return color;
    }

    public Button setColor(Color color) {
        this.color = color;
        return this;
    }

    public String getIcon() {
        return icon;
    }

    public Button setIcon(String icon) {
        this.icon = icon;
        return this;
    }

    public enum Color implements Selectable {
        success(0), danger(1), warning(2), primary(3), Default(4);
        private static final String TRANSLATE_MASK = "button.color.%s";
        private int order;

        Color(int i) {
        }

        public int getOrder() {
            return order;
        }

        public void setOrder(int order) {
            this.order = order;
        }

        @Override
        public String toString() {
            return super.toString().toLowerCase();
        }

        public String getColor() {
            return this.name();
        }

        @Override
        public String getSelectorId() {
            return name();
        }

        @Override
        public String getSelectorTitle() {
            return MessageHelper.translate(
                    String.format(TRANSLATE_MASK, name())
            );
        }
    }
}
