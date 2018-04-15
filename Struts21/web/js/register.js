function isPwd(){
	var str1=$("#upwd").val();
	var str2 = $("#newPwd").val();
	if(str1.eq(str2)){
		alert("两者相等");
		return true;
	}else{
		return false;
	}
} 
function rule() {
	if($("#rule").is('checked')){
		return true;
	}else {
		return false;
	}
}
function isChinaName(name) {
	 var pattern = /^[\u4E00-\u9FA5]{1,6}$/;
	 return pattern.test(name);
	}
	 
	// 验证手机号
	function isPhoneNo(phone) { 
	 var pattern = /^1[3|5|7|8]\d{9}$/g;
	 return pattern.test(phone); 
	}
	 
	// 验证身份证 
	function isCardNo(card) { 
	 var pattern = /(^\d{15}$)|(^\d{18}$)|(^\d{17}(\d|X|x)$)/; 
	 return pattern.test(card); 
	} 
	 
 function check(){
	 if(rule()==false){
	 	alert("请查看是否同意条款");
	 }
	 if(isPwd()==false){
		 $('#pwdMes').text("密码两次输入不一致");
	 }
	 if(isChinaName($.trim($('#uname').val())) == false){
		 $('#unameMes').text("名称输入错误");
	 }
	 if(isPhoneNo($.trim($('#uphone').val()))== false) {
		 $('#uphoneMes').text("电话输入错误");
	 }
	 if(isCardNo($.trim($('#ucard').val())) == false) {
		 $('#ucardMes').text("身份证输入错误");
	 }
	 if(rule()&&isPwd()&&isChinaName($.trim($('#uname').val()))
			 &&isPhoneNo($.trim($('#uphones').val()))&&isCardNo($.trim($('#ucard').val()))){
		 return true;
	 }else{
		 return false;
	 }
	 
 }
