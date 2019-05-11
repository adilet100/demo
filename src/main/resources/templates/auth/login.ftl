<#import "/spring.ftl" as spring/>
<#import "../layout/index.ftl" as main/>

<@main.render "login-container" false false>
	<!-- Main content -->
		<div class="content-wrapper">

            <!-- Simple login form -->
            <form action="/auth/login" method="post">
                <div class="panel panel-body login-form">
                    <div class="text-center">
                        <div class="icon-object border-slate-300 text-slate-300"><i class="icon-reading"></i></div>
                        <h5 class="content-group">Войдите в свой аккаунт
                            <small class="display-block">Введите свои учетные данные ниже</small>
                        </h5>
                    </div>

                    <div class="form-group has-feedback has-feedback-left">
                        <input type="text" class="form-control" placeholder="Логин" name="email">
                        <div class="form-control-feedback">
                            <i class="icon-user text-muted"></i>
                        </div>
                    </div>

                    <div class="form-group has-feedback has-feedback-left">
                        <input type="password" class="form-control" placeholder="Пароль" name="password">
                        <div class="form-control-feedback">
                            <i class="icon-lock2 text-muted"></i>
                        </div>
                    </div>

                    <div class="form-group">
                        <button type="submit" class="btn btn-primary btn-block">Войти <i
                                class="icon-circle-right2 position-right"></i></button>
                    </div>

                    <div class="form-group">
                        <a href="/auth/registration" class="btn btn-default btn-block">Зарегестрироваться
                            <i class="icon-circle-right2 position-right"></i>
                        </a>
                    </div>
                					<div class="text-center">
                                        <a href="login_password_recover.html">Забыли пароль?</a>
                                    </div>
                </div>
            </form>
            <!-- /simple login form -->

        </div>
		<!-- /main content -->
</@main.render>



