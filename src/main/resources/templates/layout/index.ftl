<#import "../partials/navbar.ftl" as navbar />

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
	<!-- /global stylesheets -->

	<link rel="shortcut icon" href="favicon.ico">
	<link href='http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>
	<!-- Global CSS -->
	<link rel="stylesheet" src="assets/plugins/bootstrap/css/bootstrap.min.css">
	<!-- Plugins CSS -->
	<link rel="stylesheet" src="assets/plugins/font-awesome/css/font-awesome.css">
	<!-- Theme CSS -->
	<link id="theme-style" rel="stylesheet" href="../../static/assets/css/styles.css">
	<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
	<!--[if lt IE 9]>
	<script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
	<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
	<![endif]-->


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

	<!-- Main navbar -->
		<@navbar.render auth/>
	<!-- /main navbar -->



	<!-- Page container -->
	<div class="page-container">


		<!-- Page content -->
		<div class="page-content">

			<#nested />

		</div>
		<!-- /page content -->

	</div>
	<!-- /page container -->


	<!-- Footer -->
	<#include "../partials/footer.ftl"/>
	<!-- /footer -->

</body>
</html>
</#macro>