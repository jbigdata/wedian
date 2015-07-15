<script src="${base}/resources/273cn/g.__1375315200__.js" tppabs="http://static.273.cn/g.__1375315200__.js" type="text/javascript"></script>
<script src="${base}/resources/273cn/config.__1375315200__.js" tppabs="http://static.273.cn/config.__1375315200__.js" type="text/javascript"></script>
<link href="${base}/resources/273cn/app/ms/css/basic.__1375315200__.css" tppabs="http://static.273.cn/app/ms/css/basic.__1375315200__.css" rel="stylesheet" type="text/css">
<link href="${base}/resources/273cn/app/ms/css/index.__1375315200__.css" tppabs="http://static.273.cn/app/ms/css/index.__1375315200__.css" rel="stylesheet" type="text/css">

<script type="text/javascript">
$().ready(function() {

	var $headerLogin = $("#headerLogin");
	var $headerRegister = $("#headerRegister");
	var $headerUsername = $("#headerUsername");
	var $headerLogout = $("#headerLogout");
	var $productSearchForm = $("#productSearchForm");
	var $keyword = $("#productSearchForm input");
	var defaultKeyword = "${message("shop.header.keyword")}";
	
	var username = getCookie("username");
	if (username != null) {
		$headerUsername.text("${message("shop.header.welcome")}, " + username).show();
		$headerLogout.show();
	} else {
		$headerLogin.show();
		$headerRegister.show();
	}
	
	$keyword.focus(function() {
		if ($keyword.val() == defaultKeyword) {
			$keyword.val("");
		}
	});
	
	$keyword.blur(function() {
		if ($keyword.val() == "") {
			$keyword.val(defaultKeyword);
		}
	});
	
	$productSearchForm.submit(function() {
		if ($.trim($keyword.val()) == "" || $keyword.val() == defaultKeyword) {
			return false;
		}
	});

});
</script>
