<#import "../layout/index.ftl" as main/>

<@main.render "login-container" false false>
<div class="content-wrapper">
    <div class="text-center content-group">
        <h1 class="error-title">500</h1>
        <h5>${path!""}</h5>
        <h5>${status!""}</h5>
        <h5>${error!""}</h5>
        <h5>${message!""}</h5>
        <h5>${exception!""}</h5>
    </div>
    <div class="row">
        <div class="col-lg-4 col-lg-offset-4 col-sm-6 col-sm-offset-3">
            <div class="text-center">
                <a href="/" class="btn bg-pink-400 legitRipple"><i class="icon-circle-left2 position-left"></i>
                    На главную
                </a>
            </div>
        </div>
    </div>
</div>
</@main.render>



