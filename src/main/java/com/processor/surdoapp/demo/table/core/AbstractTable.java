package com.processor.surdoapp.demo.table.core;

import com.processor.surdoapp.demo.table.core.filter.*;
import com.processor.surdoapp.demo.table.core.render.TextRenderer;
import com.processor.surdoapp.demo.util.MessageHelper;
import com.processor.surdoapp.demo.util.Selectable;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Sort;
import org.springframework.util.StringUtils;


import javax.annotation.PostConstruct;
import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;

public abstract class AbstractTable<T> {

    public static final String ORDER_DESC = "desc";
    public static final String ORDER_ASC = "asc";

    private String titlePrefix = "";

    private Boolean autoWidth = false;

    private String dom = "<\"datatable-header\"fl><\"datatable-scroll\"t><\"datatable-footer\"ip>";

    private boolean serverSide = true;

    private final HttpServletRequest request;

    private List<Column> columns;

    private List<Button> buttons;

    private List<DropDownButton> dropDownButtons;

    private List<Filter> filters;

    private List<Object> orders;

    private Page<T> content;

    private int rowsPerPage = 10;

    abstract protected Class<T> getBaseClass();

    abstract protected String getUrl();

    abstract protected String getTitle();

    private String token = "?token=" + System.currentTimeMillis();


    public AbstractTable(Page<T> content, HttpServletRequest request) {
        this.content = content;
        this.request = request;
        init();
    }

    public String getToken() {
        return token;
    }

    public void setToken(String token) {
        this.token = token;
    }

    protected void reCreateToken() {
        this.token = "?token=" + System.currentTimeMillis();
    }

    protected void initButtons() {
    }

    protected void initColumns() {
    }

    protected void initFilters() {
    }

    protected void initDropDownButtons() {

    }

    protected void initLegend() {

    }

    protected void initRowsPerPage() {

    }

    protected void initPreferenceList() {

    }

    protected void initOrders() {
        addOrder(0, ORDER_DESC);
    }

    protected void addOrder(int index, String direction) {
        List<Object> deflt = new ArrayList<>();
        deflt.add(index);
        deflt.add(direction);
        orders.add(deflt);
    }

    protected void addOrder(String direction) {
        List<Object> deflt = new ArrayList<>();
        int index = 0;
        if (orders != null && orders.size() > 0)
            index = orders.size() - 1;

        deflt.add(index);
        deflt.add(direction);
        orders.add(deflt);
    }

    public String title() {
        return MessageHelper.translate(getTitle());
    }

    public String url() {
        return getUrl();
    }

    protected void addColumn(String name) {
        addColumn(name, false);
    }

    public String tableId() {
        return String.format(
                "%s_%s_%s",
                getBaseClass().getSimpleName().toLowerCase(),
                getClass().getSimpleName().toLowerCase(),
                "table"
        );
    }

    public String tableCamelCaseId() {
        return String.format(
                "%s%s%s",
                getBaseClass().getSimpleName().substring(0, 1).toUpperCase() + getBaseClass().getSimpleName().substring(1).toLowerCase(),
                getClass().getSimpleName().substring(0, 1).toUpperCase() + getClass().getSimpleName().substring(1).toLowerCase(),
                "Table"
        );
    }

    private String getClassName() {
        return StringUtils.uncapitalize(getBaseClass().getSimpleName());
    }

    protected void addFilterDateRange(String name, String start, String end) {
        String title = String.format("%s.%s", getClassName(), name);

        DateRangeFilter filter = new DateRangeFilter();
        filter
                .setName(name)
                .setTitle(title)
                .setStart(start)
                .setEnd(end);

        addFilter(filter);
    }

    protected void addFilterText(String name) {
        String title = String.format("%s.%s", getClassName(), name);

        TextFilter filter = new TextFilter();
        filter.setName(name)
                .setTitle(title);

        addFilter(filter);
    }

    protected void addFilterSelect(String name, String url) {
        String title = String.format("%s.%s", getClassName(), name);

        SelectFilter filter = new SelectFilter();
        filter.setName(name)
                .setTitle(title)
                .setUrl(url);

        addFilter(filter);
    }

    protected void addFilterSelectString(String name, List<String> strings) {
        String title = String.format("%s.%s", getClassName(), name);

        SelectStringFilter filter = new SelectStringFilter();
        filter.setName(name)
                .setTitle(title)
                .setStrings(strings);

        addFilter(filter);
    }

    protected void addFilterSelectStatic(String name, List<Selectable> options) {
        String title = String.format("%s.%s", getClassName(), name);

        SelectStaticFilter filter = new SelectStaticFilter();
        filter.setName(name)
                .setTitle(title)
                .setOptions(options);

        addFilter(filter);
    }

    protected void addFilterSelectStaticMultiple(String name, List<Selectable> options) {
        String title = String.format("%s.%s", getClassName(), name);

        SelectStaticMultipleFilter filter = new SelectStaticMultipleFilter();
        filter.setName(name)
                .setTitle(title)
                .setOptions(options);

        addFilter(filter);
    }

    protected void addFilterCheckbox(String name) {
        String title = String.format("%s.%s", getClassName(), name);

        CheckboxFilter filter = new CheckboxFilter();
        filter.setName(name)
                .setTitle(title);

        addFilter(filter);
    }

    protected void addFilterMonth(String name) {
        String title = String.format("%s.%s", getClassName(), name);

        MonthFilter filter = new MonthFilter();
        filter.setName(name)
                .setTitle(title);

        addFilter(filter);
    }

    protected void addFilter(Filter filter) {
        this.filters.add(filter);
    }

    protected void addColumn(String name, boolean orderable) {
        String title = String.format("%s.%s", getClassName(), name);

        Column column = new Column(sort().getOrderFor(name), request)
                .setName(name)
                .setTitle(title)
                .setOrderable(orderable)
                .setRender(new TextRenderer());

        this.columns.add(column);
    }

    protected void addColumn(String name, boolean orderable, ColumnValueRenderer render) {
        String title = String.format("%s.%s", getClassName(), name);

        Column column = new Column(sort().getOrderFor(name), request)
                .setName(name)
                .setTitle(title)
                .setOrderable(orderable)
                .setRender(render);

        this.columns.add(column);
    }

    protected void addInvisibleColumn(String name) {
        String title = String.format("%s.%s", getClassName(), name);

        Column column = new Column(sort().getOrderFor(name), request)
                .setName(name)
                .setTitle(title)
                .setVisible(false)
                .setOrderable(false)
                .setRender(new TextRenderer())
                .setRender(new TextRenderer());

        this.columns.add(column);
    }

    protected void addColumn(String name, boolean orderable, String width) {
        String title = String.format("%s.%s", getClassName(), name);

        Column column = new Column(sort().getOrderFor(name), request)
                .setWidth(width)
                .setName(name)
                .setTitle(title)
                .setOrderable(orderable)
                .setRender(new TextRenderer());

        this.columns.add(column);
    }

    protected void addColumn(String name, boolean orderable, String width, ColumnValueRenderer render) {
        String title = String.format("%s.%s", getClassName(), name);

        Column column = new Column(sort().getOrderFor(name), request)
                .setWidth(width)
                .setName(name)
                .setTitle(title)
                .setOrderable(orderable)
                .setRender(render);

        this.columns.add(column);
    }

    protected void addColumn(String name, String className, boolean orderable) {
        String title = String.format("%s.%s", getClassName(), name);

        Column column = new Column(sort().getOrderFor(name), request)
                .setName(name)
                .setClassName(className)
                .setTitle(title)
                .setOrderable(orderable)
                .setRender(new TextRenderer());

        this.columns.add(column);
    }

    protected void addButton(String title, String url, String icon) {
        addButton(title, url, Button.Color.Default, icon);
    }

    protected void addButton(String title, String url) {
        addButton(title, url, Button.Color.Default, null);
    }

    public void addDropDownButton(String title, String icon, Button.Color color, List<ActionButton> list) {
        this.dropDownButtons.add(new DropDownButton(title, color, icon, list));
    }

    protected void addButton(String title, String url, Button.Color color) {
        addButton(title, url, color, null);
    }

    protected void addButton(String title, String url, Button.Color color, String icon) {
        Button button = new Button()
                .setTitle(title)
                .setActionUrl(url)
                .setColor(color)
                .setIcon(icon);
        this.buttons.add(button);
    }

    protected void clearColumns() {
        this.columns.clear();
    }

    protected void clearButtons() {
        this.buttons.clear();
    }

    protected void clearFilters() {
        this.filters.clear();
    }

    protected void clearDropDownButtons() {
        this.dropDownButtons.clear();
    }

    public Boolean getAutoWidth() {
        return autoWidth;
    }

    public AbstractTable setAutoWidth(Boolean autoWidth) {
        this.autoWidth = autoWidth;
        return this;
    }

    public String getDom() {
        return dom;
    }

    public AbstractTable setDom(String dom) {
        this.dom = dom;
        return this;
    }

    public boolean isServerSide() {
        return serverSide;
    }

    public AbstractTable setServerSide(boolean serverSide) {
        this.serverSide = serverSide;
        return this;
    }

    public List<Filter> filters() {
        return filters;
    }

    public AbstractTable setFilters(List<Filter> filters) {
        this.filters = filters;
        return this;
    }

    public List<Column> columns() {
        return columns;
    }

    public AbstractTable setColumns(List<Column> columns) {
        this.columns = columns;
        return this;
    }

    public List<Button> buttons() {
        return buttons;
    }

    public AbstractTable setButtons(List<Button> buttons) {
        this.buttons = buttons;
        return this;
    }

    public boolean hasFilters() {
        return null != filters && !filters.isEmpty();
    }

    @PostConstruct
    public void init() {
        this.columns = new ArrayList<>();
        this.buttons = new ArrayList<>();
        this.filters = new ArrayList<>();
        this.orders = new ArrayList<>();
        this.dropDownButtons = new ArrayList<>();

        initButtons();
        initDropDownButtons();
        initColumns();
        initFilters();
        initOrders();
        initLegend();
        initPreferenceList();
        initRowsPerPage();
    }
    public List<DropDownButton> dropDownButtons() {
        return dropDownButtons;
    }

    public void setDropDownButtons(List<DropDownButton> dropDownButtons) {
        this.dropDownButtons = dropDownButtons;
    }

    public int rowsPerPage() {
        return rowsPerPage;
    }

    public void setRowsPerPage(int rowsPerPage) {
        this.rowsPerPage = rowsPerPage;
    }

    public void setTitlePrefix(String titlePrefix) {
        if(!titlePrefix.equals(""))
            this.titlePrefix = String.format(" (%s)", titlePrefix);
    }

    public List<T> content() {
        return content.getContent();
    }

    public Page<T> page() {
        return content;
    }

    public Sort sort() {
        return page().getSort();
    }

    public AbstractTable setContent(Page<T> content) {
        this.content = content;
        return this;
    }

}
