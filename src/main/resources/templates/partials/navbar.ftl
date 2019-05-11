<#import "/spring.ftl" as spring />
<#macro render auth=true>
<div class="navbar navbar-inverse bg-blue-700">
    <div class="icon-object border-slate-40 text-slate-40">
        <img src="/static/assets/images/logo_icon_light.png">
        <i class="icon-reading"></i></div>

<!--    <ul class="nav navbar-nav navbar-center">-->
<!--        <div class="navbar-collapse collapse" id="navbar-mobile">-->
<!--            <p class="navbar-text"><span class="label bg-success-600">Онлайн сурдо переводчик</span></p>-->
<!--        </ul>-->
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
</div>
</#macro>