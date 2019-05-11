package com.processor.surdoapp.demo.table.core;

public class ActionButton extends Button {

    private String ajaxUrl;
    private String ajaxAccept;
    private String dialogTitle;
    private ActionButtonType actionButtonType;
    public ActionButton() {
    }

    @Override
    public ActionButton setTitle(String title) {
        super.setTitle(title);
        return this;
    }

    @Override
    public ActionButton setActionUrl(String actionUrl) {
        super.setActionUrl(actionUrl);
        return this;
    }

    public String getAjaxUrl() {
        return ajaxUrl;
    }

    public ActionButton setAjaxUrl(String ajaxUrl) {
        this.ajaxUrl = ajaxUrl;
        return this;
    }

    public String getAjaxAccept() {
        return ajaxAccept;
    }

    public ActionButton setAjaxAccept(String ajaxAccept) {
        this.ajaxAccept = ajaxAccept;
        return this;
    }

    public String getDialogTitle() {
        return dialogTitle;
    }

    public ActionButton setDialogTitle(String dialogTitle) {
        this.dialogTitle = dialogTitle;
        return this;
    }

    public ActionButtonType getActionButtonType() {
        return actionButtonType;
    }

    public ActionButton setActionButtonType(ActionButtonType actionButtonType) {
        this.actionButtonType = actionButtonType;
        return this;
    }

    @Override
    public String text() {
        return null != icon ?
                String.format(
                        "<i class=\"icon-%s position-left\"></i>%s", icon, getTitle()
                ) :
                getTitle();
    }

    public enum ActionButtonType {
        function, // Ajax
        select, // Выбор из списка - не ги
        action, // переход на другую страницу
        datepicker;

        @Override
        public String toString() {
            return super.toString().toLowerCase();
        }
    }
}
