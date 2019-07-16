<#import "index.ftl" as main/>

<#macro render bodyClass="" header=true auth=true>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Surdo Web </title>

        <!--	 Global stylesheets-->
        <link href="https://fonts.googleapis.com/css?family=Roboto:400,300,100,500,700,900" rel="stylesheet" type="text/css">
        <link href="/static/assets/css/icons/icomoon/styles.css" rel="stylesheet" type="text/css">
        <link href="/static/assets/css/bootstrap.css" rel="stylesheet" type="text/css">
        <link href="/static/assets/css/core.css" rel="stylesheet" type="text/css">
        <link href="/static/assets/css/components.css" rel="stylesheet" type="text/css">
        <link href="/static/assets/css/colors.css" rel="stylesheet" type="text/css">
        <link href="/static/assets/images" rel="stylesheet" type="text/css">
        <!-- /global stylesheets -->

<#--        <link rel="shortcut icon" href="/assets/favicon.ico">-->
        <link href='http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>
        <!-- Global CSS -->
        <link rel="stylesheet" href="/static/assets/plugins/bootstrap/css/bootstrap.min.css">
        <!-- Plugins CSS -->
        <link rel="stylesheet" href="/static/assets/plugins/font-awesome/css/font-awesome.css">
        <!-- Theme CSS -->
        <link id="theme-style" rel="stylesheet" href="../../static/assets/css/styles.css">

        <!-- Core JS files -->
        <script type="text/javascript" src="/static/assets/js/core/libraries/jquery.min.js"></script>
        <script type="text/javascript" src="/static/assets/js/core/libraries/bootstrap.min.js"></script>
        <!-- /core JS files -->

        <!-- Theme JS files -->
        <script type="text/javascript" src="/static/assets/js/core/libraries/jquery_ui/interactions.min.js"></script>
        <script type="text/javascript" src="/static/assets/js/plugins/forms/selects/select2.min.js"></script>
        <script type="text/javascript" src="/static/assets/js/plugins/editors/ace/ace.js"></script>
        <script type="text/javascript" src="/static/assets/js/plugins/ui/prism.min.js"></script>

        <script type="text/javascript" src="/static/assets/js/core/app.js"></script>

        <script type="text/javascript" src="/static/assets/js/plugins/ui/ripple.min.js"></script>
        <!--	 /theme JS files-->

    </head>

    <body class="navbar-bottom ${bodyClass}">
        <ul> <header id="header" class="header">
            <div class="container">
                <h1 class="logo">
                    <a class="scrollto" href="/">
                       <span class="logo-icon-wrapper border-slate-500 text-slate-500">
                           <img class="logo-icon" src="/static/assets/images/mainlocdgo.png" alt="icon"></span>
                        <span class="text"><span class="highlight">SURDO</span>WEB</span></a>
                </h1><!--//logo-->
                <nav class="main-nav navbar-right" role="navigation">
                    <div class="navbar-header">
                        <button class="navbar-toggle" type="button" data-toggle="collapse" data-target="#navbar-collapse">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button><!--//nav-toggle-->
                    </div><!--//navbar-header-->
                    <div id="navbar-collapse" class="navbar-collapse collapse">
                        <ul class="nav navbar-nav">
                            <li class="active nav-item"><a class="scrollto" href="#about">О нас </a></li>
                            <li class="nav-item"><a class="scrollto" href="#testimonials">Рекомендации</a></li>
                            <li class="nav-item"><a class="scrollto" href="#features">Особенности</a></li>
                            <li class="nav-item"><a class="scrollto" href="#team">Команда</a></li>
                            <li class="nav-item"><a class="scrollto" href="#pricing">Цены на услуги</a></li>
                            <li class="nav-item"><a class="scrollto" href="#contact">Контакты</a></li>
                        </ul><!--//nav-->
                    </div><!--//navabr-collapse-->
                </nav><!--//main-nav-->
            </div><!--//container-->
        </header><!--//header--></ul>

        <div id="hero" class="hero-section">

            <div id="hero-carousel" class="hero-carousel carousel carousel-fade slide" data-ride="carousel" data-interval="10000">

                <div class="figure-holder-wrapper">
                    <div class="container">
                        <div class="row">
                            <div class="figure-holder">

                            </div><!--//figure-holder-->
                        </div><!--//row-->
                    </div><!--//container-->
                </div><!--//figure-holder-wrapper-->

                <!-- Indicators -->
                <ol class="carousel-indicators">
                    <li class="active" data-slide-to="0" data-target="#hero-carousel"></li>
                    <li data-slide-to="1" data-target="#hero-carousel"></li>
                    <li data-slide-to="2" data-target="#hero-carousel"></li>
                </ol>

                <!-- Wrapper for slides -->
                <div class="carousel-inner">

                    <div class="item item-1 active">
                        <div class="item-content container">
                            <div class="item-content-inner">

                                <h2 class="heading">Мобильное приложение SurdoApp <br class="hidden-xs">Удобный онлайн переводчик</h2>
                                <p class="intro">Это возможность в любое время 24/7 проконсультироваться у специалиста!</p>
                                <a href="https://192.168.0.106:8443" class="btn btn-primary btn-cta" >Пробный звонок</a>

                            </div><!--//item-content-inner-->
                        </div><!--//item-content-->
                    </div><!--//item-->

                    <div class="item item-2">
                        <div class="item-content container">
                            <div class="item-content-inner">

                                <h2 class="heading">КОММЕРЧЕСКИЕ ТАРИФЫ</h2>
                                <p class="intro">Делай мир добрее. Устовоните приложение онлайн сурдо перевода для удобства ваших клиентов с ограниченными возможностями.</p>
                                <a class="btn btn-primary btn-cta" href="https://wrapbootstrap.com/theme/admin-appkit-admin-theme-angularjs-WB051SCJ1?ref=3wm" target="_blank">Условия сотруднечество</a>

                            </div><!--//item-content-inner-->
                        </div>
                    </div><!--//item-->

                    <div class="item item-3">
                        <div class="item-content container">
                            <div class="item-content-inner">

                                <h2 class="heading">Конференции</h2>
                                <p class="intro">Мы предостовляем специальные устройства в конференцзалах, так же будет присуствовать опытный специалист для качественного перевода.</p>
                                <a class="btn btn-primary btn-cta" href="https://wrapbootstrap.com/theme/admin-appkit-admin-theme-angularjs-WB051SCJ1?ref=3wm" target="_blank">Узнать подробнее</a>

                            </div><!--//item-content-inner-->
                        </div>
                    </div><!--//item-->
                </div><!--//carousel-inner-->

            </div><!--//carousel-->
        </div><!--//hero-->

        <div id="about" class="about-section">
            <div class="container text-center">
                <h2 class="section-title">Почему нужен Surdo app?</h2>
                <p class="intro">Surdo app использует современные интерфейсные технологии и упакован с полезными компонентами и виджетами для удобного и быстрого пользование онлайн сурдо переводами.</p>
                <div class="items-wrapper row">
                    <div class="item col-sm-4 col-xs-12">
                        <div class="item-inner">
                            <div class="figure-holder">

                            </div><!--//figure-holder-->
                            <h3 class="item-title">UX-Centered Design</h3>
                            <div class="item-desc">
                                Bespoke UX/UI design to enhance your app's user experience. Let AppKit take care of the design so you can develop without design resources.
                            </div><!--//item-desc-->
                        </div><!--//item-inner-->
                    </div><!--//item-->
                    <div class="item col-sm-4 col-xs-12">
                        <div class="item-inner">
                            <div class="figure-holder">

                            </div><!--//figure-holder-->
                            <h3 class="item-title">Supercharge App Development</h3>
                            <div class="item-desc">
                                AppKit provides developers with a ready-made front-end solution so you can concentrate on making your app’s back-end robust and awesome. It empowers small teams to create big things. </div><!--//item-desc-->
                        </div><!--//item-inner-->
                    </div><!--//item-->
                    <div class="item col-sm-4 col-xs-12">
                        <div class="item-inner">
                            <div class="figure-holder">

                            </div><!--//figure-holder-->
                            <h3 class="item-title">Mobile First</h3>
                            <div class="item-desc">
                                Built on the popular Bootstrap framework, so the design is “Mobile First” and fully responsive. For a startup, building an HTML5 webapp which also works across mobile devices is the most cost-effective way to get your product off the ground.</div><!--//item-desc-->
                        </div><!--//item-inner-->
                    </div><!--//item-->
                </div><!--//items-wrapper-->
            </div><!--//container-->
        </div><!--//about-section-->

        <div id="testimonials" class="testimonials-section">
            <div class="container">
                <h2 class="section-title text-center">Отзывы клиентов</h2>
                <div class="item center-block">
                    <div class="profile-holder">

                    </div>
                    <div class="quote-holder">
                        <blockquote class="quote">
                            <p>Testimonial goes here Donec felis odio, sagittis eu cursus ac, porttitor eu purus. In a bibendum dui. Nullam id est sed felis rutrum tincidunt eu nec nisi morbi euismod semper neque sed lobortis.</p>
                            <div class="quote-source">
                                <span class="name">@JohnK,</span>
                                <span class="meta">San Francisco</span>
                            </div><!--//quote-source-->
                        </blockquote>
                    </div><!--//quote-holder-->
                </div><!--//item-->
                <div class="item item-reversed center-block">
                    <div class="profile-holder">

                    </div>
                    <div class="quote-holder">
                        <blockquote class="quote">
                            <p>Testimonial goes here fermentum sed pharetra in, aliquet sodales quam. Ut sed turpis quis orci viverra aliquet interdum ut ipsum. </p>
                            <div class="quote-source">
                                <span class="name">@LisaWhite,</span>
                                <span class="meta">London</span>
                            </div><!--//quote-source-->
                        </blockquote>
                    </div><!--//quote-holder-->
                </div><!--//item-->
                <div class="item center-block">
                    <div class="profile-holder">

                    </div>
                    <div class="quote-holder">
                        <blockquote class="quote">
                            <p>Testimonial goes here vestibulum non hendrerit lorem, luctus tincidunt erat. Sed pharetra aliquam posuere. Pellentesque sollicitudin.</p>
                            <div class="quote-source">
                                <span class="name">@MattH,</span>
                                <span class="meta">Berlin</span>
                            </div><!--//quote-source-->
                        </blockquote>
                    </div><!--//quote-holder-->
                </div><!--//item-->
                <div class="item item-reversed center-block">
                    <div class="profile-holder">

                    </div>
                    <div class="quote-holder">
                        <blockquote class="quote">
                            <p>Testimonial goes here lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis</p>
                            <div class="quote-source">
                                <span class="name">@RyanW,</span>
                                <span class="meta">Paris</span>
                            </div><!--//quote-source-->
                        </blockquote>

                    </div><!--//quote-holder-->
                </div><!--//item-->
            </div><!--//container-->
        </div><!--//testimonials-->

        <div id="features" class="features-section">
            <div class="container text-center">
                <h2 class="section-title">Возможности приложения</h2>
                <div class="items-wrapper row">
                    <div class="item col-sm-4 col-xs-12">
                        <div class="item-inner">
                            <div class="figure-holder">

                            </div><!--//figure-holder-->
                            <h3 class="item-title">UX-Centered Design</h3>
                            <div class="item-desc">
                                Bespoke UX/UI design to enhance your app's user experience. Let AppKit take care of the design so you can develop without design resources.
                            </div><!--//item-desc-->
                        </div><!--//item-inner-->
                    </div><!--//item-->
                    <div class="item col-sm-4 col-xs-12">
                        <div class="item-inner">
                            <div class="figure-holder">

                            </div><!--//figure-holder-->
                            <h3 class="item-title">Supercharge App Development</h3>
                            <div class="item-desc">
                                AppKit provides developers with a ready-made front-end solution so you can concentrate on making your app’s back-end robust and awesome. It empowers small teams to create big things. </div><!--//item-desc-->
                        </div><!--//item-inner-->
                    </div><!--//item-->
                    <div class="item col-sm-4 col-xs-12">
                        <div class="item-inner">
                            <div class="figure-holder">

                            </div><!--//figure-holder-->
                            <h3 class="item-title">Mobile First</h3>
                            <div class="item-desc">
                                Built on the popular Bootstrap framework, so the design is “Mobile First” and fully responsive. For a startup, building an HTML5 webapp which also works across mobile devices is the most cost-effective way to get your product off the ground.</div><!--//item-desc-->
                        </div><!--//item-inner-->
                    </div><!--//item-->
                </div><!--//items-wrapper-->



            </div><!--//container-->
        </div><!--//features-->

        <div class="team-section" id="team">
            <div class="container text-center">
                <h2 class="section-title">Наша команда</h2>
                <p class="intro">Компитентные специалисты к вашим услугам</p>
                <div class="story">
                    <p>Мы подобрали для вас лучших спесиалистов по переводу и консультации на сурдо языке. Наши специласти так же атестированы в юридической сфере. Мы готовы вам помочь зашитить ваши права в юридической, банковкой,комунальной и других сферах которые могут вам понадобиться. Мы стремимся сделать этот мир добрее и все люди в нашем обшестве должны иметь равные права. </p>
                </div>
                <div class="members-wrapper row">
                    <div class="item col-md-6 col-sm-6 col-xs-12">
                        <div class="item-inner">
                            <div class="profile">

                            </div>

                            <div class="member-content">
                                <h3 class="member-name">Гулзат Мамытбек</h3>
                                <div class="member-title">Директор по поднятию духа</div>
                                <ul class="social list-inline">
                                    <li><a class="twitter" href="https://twitter.com/3rdwave_themes" target="_blank"><i class="fa fa-twitter"></i></a></li>

                                    <li><a class="facebook" href="https://www.facebook.com/3rdwavethemes/" target="_blank"><i class="fa fa-facebook"></i></a></li>
                                    <li><a class="github" href="https://github.com/xriley" target="_blank"><i class="fa fa-github"></i></a></li>
                                    <li><a class="dribbble" href="https://dribbble.com/Xiaoying" target="_blank"><i class="fa fa-dribbble"></i></a></li>
                                    <li><a class="linkedin" href="https://uk.linkedin.com/in/xiaoying" target="_blank"><i class="fa fa-linkedin"></i></a></li>

                                </ul>
                                <div class="member-desc">
                                    <p>Буквально несколько недель назад в интернет кыргызского сегмента ворвалась Гульзат Мамытбек. Она считает себя вдохновителем кыргызского народа, а народ называет ее девушкой-будильником.
                                        Также известно, что Гульзат - основатель языковых курсов High Time.<a href="https://twitter.com/3rdwave_themes" target="_blank">Twitter</a> and <a href="https://www.facebook.com/3rdwavethemes/" target="_blank">Facebook</a>. Follow her if you like what she does!</p>
                                </div><!--//member-desc-->
                            </div><!--//member-content-->
                        </div><!--//item-inner-->
                    </div><!--//item-->
                    <div class="item col-md-6 col-sm-6 col-xs-12">
                        <div class="item-inner">
                            <div class="profile">

                            </div>

                            <div class="member-content">
                                <h3 class="member-name">Владимир Путин</h3>
                                <div class="member-title">Просто царь горы</div>
                                <ul class="social list-inline">
                                    <li><a class="twitter" href="http://twitter.com/tnajdek" target="_blank"><i class="fa fa-twitter"></i></a></li>
                                    <li><a href="https://www.doppnet.com/" target="_blank"><i class="fa fa-globe"></i></a></li>
                                    <li><a class="github" href="https://github.com/tnajdek" target="_blank"><i class="fa fa-github"></i></a></li>


                                </ul>
                                <div class="member-desc">
                                    <p>Влади́мир Влади́мирович Пу́тин (род. 7 октября 1952, Ленинград, РСФСР, СССР[7][8]) — российский государственный и политический деятель, действующий президент Российской Федерации, Верховный главнокомандующий Вооружёнными силами Российской Федерации с 31 декабря 1999 года по 7 мая 2008 года и с 7 мая 2012 года[9][10].

                                        <a href="https://twitter.com/tnajdek" target="_blank">Twitter</a> for fresh developer tips and check out his <a href="https://github.com/tnajdek" target="_blank">Github</a> for useful open-source tools.
                                    </p>
                                </div><!--//member-desc-->
                            </div><!--//member-content-->
                        </div><!--//item-inner-->
                    </div><!--//item-->
                </div><!--//members-wrapper-->
            </div>
        </div><!--//team-section-->

        <div id="pricing" class="pricing-section">
            <div class="container text-center">
                <h2 class="section-title">Тарифы</h2>
                <div class="intro">Цены указаны с учетом НДС.</div>
                <div class="pricing-wrapper">
                    <div class="item item-1 col-md-4 col-sm-4 col-xs-12">
                        <div class="item-inner">
                            <h3 class="item-heading">Индивидуальный </h3>
                            <div class="price-figure">
                                <span class="currency">с</span><span class="number">20</span>
                            </div><!--//price-figure-->
                            <div class="price-desc">
                                <p>Получи свободу общения! Любой город, любое место! 24/7
                                    Используй свой смартфон!</p>
                                <a  target="_blank">1 пользователь
                                    6 часов перевода</a>


                            </div><!--//price-desc-->
                            <a class="btn btn-cta" href="https://appr.tc/r/494266066" id="btnIndividual" >Купить</a>

                        </div><!--//item-inner-->
                    </div><!--//item-->
                    <div class="item item-2 col-md-4 col-sm-4 col-xs-12">
                        <div class="item-inner">
                            <h3 class="item-heading">Коммерческий</h3>
                            <div class="price-figure">
                                <span class="currency">с</span><span class="number">80</span>
                            </div><!--//price-figure-->
                            <div class="price-desc">
                                <p>неограниченное количество бизнес пользователей</p>
                                <a target="_blank">100 часов перевода</a>


                            </div><!--//price-desc-->
                            <a class="btn btn-cta" href="#" id="btnCom" >Купить</a>

                        </div><!--//item-inner-->
                    </div><!--//item-->

                    <div class="item item-3 col-md-4 col-sm-4 col-xs-12">
                        <div class="item-inner">
                            <h3 class="item-heading">Конференция</h3>
                            <div class="price-figure">
                                <span class="currency">с</span><span class="number">1200</span>
                            </div><!--//price-figure-->
                            <div class="price-desc">
                                <p>Обеспечение мероприятия платформой для перевода.Неограниченное количество слушателей</p>
                                <a target="_blank">1 час аренда</a>
                            </div><!--//price-desc-->
                            <a class="btn btn-cta" href="#" id="btnConferenc" target="_blank">Купить</a>

                        </div><!--//item-inner-->
                    </div><!--//item-->
                </div><!--//pricing-wrapper-->

            </div><!--//container-->
        </div><!--//pricing-section-->
        <div id="contact" class="contact-section">
            <div class="container text-center">
                <h2 class="section-title">Контакты</h2>
                <div class="contact-content">
                    <p>телефон: +996555-666-777 <br>
                        Факс: +996312-45-05-68<br>
                        e-mail: surdokg@gmail.com<br>
                        Адрес: г.Бишкек ул. Ахунбаева 175</p>

                </div>
                <a class="btn btn-cta btn-primary" href="https://wrapbootstrap.com/theme/admin-appkit-admin-theme-angularjs-WB051SCJ1?ref=3wm">Позвонить</a>

            </div><!--//container-->
        </div><!--//contact-section-->

        <footer class="footer text-center">
            <div class="container">
                <!--/* This template is released under the Creative Commons Attribution 3.0 License. Please keep the attribution link below when using for your own project. Thank you for your support. :) If you'd like to use the template without the attribution, you can check out other license options via our website: themes.3rdwavemedia.com */-->
                <small class="copyright">Designed with <i class="fa fa-heart"></i> by <a href="http://themes.3rdwavemedia.com/" target="_blank">Xiaoying Riley</a> for developers</small>


            </div><!--//container-->
        </footer>



        <#include "../partials/footer.ftl"/>
    </body>
</html>
</#macro>