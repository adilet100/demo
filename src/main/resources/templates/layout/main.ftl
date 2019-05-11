<#import "index.ftl" as main/>

<#macro render>
    <@main.render>

    <div class="sidebar sidebar-main sidebar-default">
        <div class="sidebar-content">

            <!-- Main navigation -->
            <div class="sidebar-category sidebar-category-visible">
                <div class="category-title h6">
                    <span>Навигация</span>
                </div>

                <div class="category-content no-padding">
                    <ul class="navigation navigation-main navigation-accordion">
                        <li class="navigation-header"><span>Основные</span>
                            <i class="icon-menu" title="" data-original-title="Main pages"></i>
                        </li>
                        <li class="">
                            <a href="/address" class="legitRipple">
                                <i class="icon-stack2"></i>
                                <span>Адреса</span>
                            </a>
                        </li>
                        <li class="">
                            <a href="/transaction" class="legitRipple">
                                <i class="icon-list"></i>
                                <span>Транзакции</span>
                            </a>
                        </li>
                        <li class="">
                            <a href="/address/airdrop" class="legitRipple">
                                <i class="icon-list"></i>
                                <span>Рассылка Airdrop</span>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
            <!-- /main navigation -->
        </div>
    </div>

    <!-- Main content -->
    <div class="content-wrapper">
        <#nested />
    </div>
    <!-- /main content -->
    </@main.render>
</#macro>