<#import "/spring.ftl" as spring />
<#macro render auth=true>

    <div class="navbar navbar-inverse bg-white-700">
        <div class="icon-object border-slate-40 text-slate-40">
            <img alt="" src="/static/assets/images/logo_icon_light.png">
            <i class="icon-reading"></i></div>

        <ul class="nav navbar-text location-mid">
            <li class="navbar-text text-size-large">Онлайн сурдо переводчик</li>
        </ul>
        <ul class="nav navbar-nav navbar-right">
            <li class="dropdown language-switch">
                <a class="dropdown-toggle" data-toggle="dropdown">
                    <img src="/static/assets/images/flags/${.lang}.png" alt=""> <@spring.message "${.lang}" /> <i
                            class="caret"></i>
                </a>


                <ul class="dropdown-menu">
                    <li><a class="kyrghiz" href="?lang=kg"><img src="/static/assets/images/flags/kg.png" alt="">
                            Кыргызча</a></li>
                    <li><a class="russian" href="?lang=ru"><img src="/static/assets/images/flags/ru.png" alt="">
                            Русский</a></li>
                </ul>
            </li>
            <#if auth>
                <li class="dropdown dropdown-user">
                    <a class="dropdown-toggle" data-toggle="dropdown">
                        <img src="/static/assets/images/image.png" alt="">
                        <i class="caret"></i>
                    </a>

                    <ul class="dropdown-menu dropdown-menu-right">
                        <li><a href="/auth/logout"><i class="icon-switch2"></i> Logout</a></li>
                    </ul>
                </li>
            </#if>
        </ul>
    </div>
</#macro>