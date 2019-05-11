<#import "/spring.ftl" as spring>

<#macro label path>
    <label class="control-label"><@spring.message path /></label>
</#macro>

<#macro fullImage path="" class="" alt="">
    <@image imageDomain path class alt />
</#macro>

<#macro image domain path class alt>
    <img src="${(path?hasContent)?then(domain + path, "/static/assets/images/placeholder.jpg")}" alt="${alt}" class="${class}">
</#macro>

<#macro print path title="" name="">
    <!-- Basic layout-->
    <form action="${path}" name="${name}" method="POST" enctype="multipart/form-data">
        <div class="panel panel-flat">

            <#if title?hasContent>
                <div class="panel-heading">
                    <h5 class="panel-title"><@spring.message title/></h5>
                </div>
            </#if>

            <div class="panel-body">
                <#nested />
                <div class="text-right">
                    <button type="submit" class="btn btn-primary"><@spring.message "form.submit"/> <i class="icon-arrow-right14 position-right"></i></button>
                </div>
            </div>
        </div>
    </form>
    <!-- /basic layout -->
</#macro>

<#macro inputText path fieldType="text" placeholder="" required=false class="">
    <#assign attr = 'class="form-control ' + class + '"'/>
    <#assign attr = attr + (placeholder?hasContent)?then(' placeholder="'+springMacroRequestContext.getMessage(placeholder)+'"', "")/>
    <#assign attr = attr + (required)?then(' required="required"', "")/>

    <div class="form-group">
        <div class="col-lg-12">
            <label class="control-label">
                <@spring.message path/>
                <#if required>
                    <span class="text-danger">*</span>
                </#if>
            </label>
            <@spring.formInput path attr fieldType/>
            <@spring.showErrors "" "validation-error-label" />
        </div>
    </div>
</#macro>

<#macro textArea path>
    <@spring.bind path />
    <div class="form-group">
        <div class="col-sm-12">
            <label class="control-label"><@spring.message path />: </label>
            <@spring.formTextarea path 'rows="5" cols="5" class="elastic form-control" style="overflow: hidden; word-wrap: break-word; resize: horizontal; height: 80px;"' />
        </div>
    </div>
</#macro>

<#macro select2list path options value="">
    <@spring.bind path/>
    <#assign replacedPath = path?replace(".", "-") />
    <#assign selectId = "select-id-${replacedPath}" />
    <div class="form-group">
        <div class="col-sm-12">
            <@label path/>
            <select id="${selectId}" class="select" name="${spring.status.expression}">
                <#list options as option>
                    <#if value?hasContent && value.getSelectorId() == option.getSelectorId()>
                        <#assign selected = true>
                    <#else>
                        <#assign selected = false>
                    </#if>
                    <option value="${option.getSelectorId()}" ${selected?then(' selected="selected"','')}><@spring.message option.getSelectorTitle() /></option>
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
        <div class="col-sm-12">
            <@label path/>
            <select id="${selectId}" name="${spring.status.expression}" ${attributes}>
                <#if selected?? && selected?hasContent>
                    <option value="${selected.getSelectorId()}" selected="selected">${selected.getSelectorTitle()}</option>
                </#if>
            </select>
            <@spring.showErrors "<br>" "text-danger" />
        </div>
    </div>

    <script type="application/javascript">
        $(function() {
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
                templateSelection: function(data) {
                    return  data.title || data.text;
                },
                templateResult: function(data) {
                    return data.title;
                }
            });
        });
    </script>
</#macro>