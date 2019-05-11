package com.processor.surdoapp.demo.table.core;

import java.util.List;

public class DropDownButton extends Button {

    private List<ActionButton> buttons;

    public DropDownButton() {
    }

    public DropDownButton(String title, Color color, String icon, List<ActionButton> buttons) {
        this.title = title;
        this.color = color;
        this.icon = icon;
        this.buttons = buttons;
    }

    public List<ActionButton> getButtons() {
        return buttons;
    }

    public void setButtons(List<ActionButton> buttons) {
        this.buttons = buttons;
    }

    @Override
    public String text() {
        return null != icon ?
                String.format(
                        "<i class=\"icon-%s position-left\"></i>%s <span class=\"caret\"></span>", icon, getTitle()
                ) :
                getTitle();
    }
}
