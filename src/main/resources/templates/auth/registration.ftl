<#import "/spring.ftl" as spring/>
<#import "../layout/index.ftl" as main/>

<@main.render "login-container" false false>
	<!-- Main content -->
		<div class="content-wrapper">

            <!-- Simple login form -->
            <form method="post">
                <div class="panel panel-body login-form">
                    <div class="text-center">
                        <div class="icon-object border-slate-300 text-slate-300"><i class="icon-reading"></i></div>
                        <h5 class="content-group"><@spring.message 'auth.registration.title'/>
                            <small class="display-block">Введите свои учетные данные ниже</small>
                        </h5>
                    </div>

                    <div class="form-group has-feedback has-feedback-left">
                        <@spring.formInput "UserCreateForm.username" " class='form-control' placeholder='Имя пользователя' " "text"/>
                        <@spring.showErrors "" "validation-error-label" />
                        <div class="form-control-feedback">
                            <i class="icon-user text-muted"></i>
                        </div>
                    </div>

                    <div class="form-group has-feedback has-feedback-left">
                        <@spring.formInput "UserCreateForm.password" " class='form-control' placeholder='Пароль' " "password"/>
                        <@spring.showErrors "" "validation-error-label" />
                        <div class="form-control-feedback">
                            <i class="icon-lock2 text-muted"></i>
                        </div>
                    </div>

                    <div class="form-group">
                        <button type="submit" class="btn btn-primary btn-block">
                            Подтвердить <i class="icon-circle-right2 position-right"></i>
                        </button>
                    </div>
                </div>
            </form>
            <!-- /simple login form -->

        </div>
		<!-- /main content -->
</@main.render>



