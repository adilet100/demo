<#import "/spring.ftl" as spring>

<#macro label path>
    <label class="col-sm-3 control-label"><@spring.message path /></label>
</#macro>

<#macro fullImage imageObj class="" alt="">
    <@image imageObj "full" class alt />
</#macro>

<#macro image imageObj="" type="" class="" alt="">
    <img src="${(imageObj?hasContent)?then(imageHelper.getImagePath(imageDomain, imageObj, type), "/static/assets/images/placeholder.jpg")}"
         alt="${alt}" class="${class}">
</#macro>

<#macro imagePath imageObj="">${(imageObj?hasContent)?then(imageHelper.getImagePath(imageDomain, imageObj), "")}</#macro>

<#macro imagePathType imageObj type>${imageHelper.getImagePath(imageDomain, imageObj, type)}</#macro>

<#macro print path title="" name="">
    <!-- Basic layout-->
    <form action="${path}" name="${name}" method="POST" class="form-horizontal" enctype="multipart/form-data">
        <div class="panel panel-flat">

            <#if title?hasContent>
                <div class="panel-heading">
                    <h5 class="panel-title"><@spring.message title/></h5>
                </div>
            </#if>

            <div class="panel-body">
                <#nested />
                <div class="text-right">
                    <button type="submit" class="btn btn-primary"><@spring.message "form.submit"/> <i
                            class="icon-arrow-right14 position-right"></i></button>
                </div>
            </div>
        </div>
    </form>
    <!-- /basic layout -->
</#macro>

<#macro inputText path fieldType="text" placeholder="" required=false class="" attributes="">
    <#assign attr = 'class="form-control ' + class + '"'/>
    <#assign attr = attr + (placeholder?hasContent)?then(' placeholder="'+springMacroRequestContext.getMessage(placeholder)+'"', "")/>
    <#assign attr = attr + (required)?then(' required="required"', "")/>
    <#assign attr = attr + attributes/>

    <div class="form-group">
        <label class="control-label col-lg-3">
            <@spring.message path/>
            <#if required>
                <span class="text-danger">*</span>
            </#if>
        </label>
        <div class="col-lg-9">
            <@spring.formInput path attr fieldType/>
            <@spring.showErrors "" "validation-error-label" />
        </div>
    </div>
</#macro>

<#macro inputTextMulti path fieldType="text" placeholder="" required=false class="" attributes="">
    <#assign attr = 'class="form-control ' + class + '"'/>
    <#assign attr = attr + (placeholder?hasContent)?then(' placeholder="'+springMacroRequestContext.getMessage(placeholder)+'"', "")/>
    <#assign attr = attr + (required)?then(' required="required"', "")/>
    <#assign attr = attr + attributes/>

    <@spring.bind path/>
    <div class="form-group">
        <label class="control-label col-lg-3">
            <@spring.message path/>
            <#if required>
                <span class="text-danger">*</span>
            </#if>
        </label>
        <div class="col-lg-9">
            <input type="${fieldType}" name="${spring.status.expression}"
                   value="<#if fieldType!="password">${spring.stringStatusValue}</#if>" ${attr}/>
            <@spring.showErrors "" "validation-error-label" />
        </div>
    </div>
</#macro>

<#macro fileInput path required=false fileMask="">
    <@spring.bind path/>
<div class="form-group">
    <label class="control-label col-lg-3">
            <@spring.message path/>
            <#if required>
                <span class="text-danger">*</span>
            </#if>
    </label>
    <div class="col-lg-9">
        <input name="${spring.status.expression}" type="file" class="file-styled" accept="${fileMask}">
        <@spring.showErrors "" "validation-error-label" />
    </div>
</div>
</#macro>

<#macro textArea path>
    <@spring.bind path />
    <div class="form-group">
        <label class="col-sm-3 control-label"><@spring.message path />: </label>
        <div class="col-sm-9">
            <@spring.formTextarea path 'rows="5" cols="5" class="elastic form-control" style="overflow: hidden; word-wrap: break-word; resize: horizontal; height: 80px;"' />
        </div>
    </div>
</#macro>

<#macro select2list path options value="">
    <@spring.bind path/>
    <#assign replacedPath = path?replace(".", "-") />
    <#assign selectId = "select-id-${replacedPath}" />
    <div class="form-group">
        <@label path/>
        <div class="col-sm-9">
            <select id="${selectId}" class="select" name="${spring.status.expression}">
                <#list options as option>
                    <#if value?hasContent && value.getSelectorId() == option.getSelectorId()>
                        <#assign selected = true>
                    <#else>
                        <#assign selected = false>
                    </#if>
                    <option value="${option.getSelectorId()}"${selected?then(' selected="selected"','')}><@spring.message option.getSelectorTitle() /></option>
                </#list>
            </select>
            <@spring.showErrors "<br>" "text-danger" />
        </div>
    </div>

    <script type="application/javascript">
        $("#${selectId}").select2({
            width: "100%",
            minimumResultsForSearch: Infinity
        });
    </script>
</#macro>

<#macro select2 path url selected attributes="">
    <@spring.bind path/>
    <#assign replacedPath = path?replace(".", "-") />
    <#assign selectId = "select-id-${replacedPath}" />
    <div class="form-group">
        <@label path/>
        <div class="col-sm-9">
            <select id="${selectId}" name="${spring.status.expression}" ${attributes}>
                <#if selected?? && selected?hasContent>
                    <option value="${selected.getSelectorId()}"
                            selected="selected">${selected.getSelectorTitle()}</option>
                </#if>
            </select>
            <@spring.showErrors "<br>" "text-danger" />
        </div>
    </div>

    <script type="application/javascript">
        $(function () {
            $("#${selectId}").select2({
                width: "100%",
                ajax: {
                    url: "${url}",
                    dataType: 'json',
                    delay: 250,
                    data: function (params) {
                        console.log(params);

                        return {
                            q: params.term, // search term
                            page: params.page ? params.page - 1 : params.page
                        };
                    },
                    processResults: function (data, params) {
                        return {
                            results: data.content,
                            pagination: {
                                more: ((data.page.number + 1) * data.page.size) < data.page.totalElements
                            }
                        };
                    },
                    cache: true
                },
                templateSelection: function (data) {
                    return data.title || data.text;
                },
                templateResult: function (data) {
                    return data.title;
                }
            });
        });
    </script>
</#macro>