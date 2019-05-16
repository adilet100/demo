<#import "/spring.ftl" as spring/>
<#import "../layout/index.ftl" as main/>

<@main.render "payment-container" false false>
<!-- Main content -->
<div class="content-wrapper">

    <!-- Simple login form -->
    <form action="/auth/login" method="post">
        <div class="panel panel-body login-form">
            <div class="text-center">

            </div>





            <div class="form-group">
                <button type="submit" class="btn btn-primary btn-block">Войти <i
                        class="icon-circle-right2 position-right"></i></button>
            </div>


        </div>
    </form>
    <!-- /simple login form -->

</div>
<!-- /main content -->
</@main.render>



