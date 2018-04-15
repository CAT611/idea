function isPwd(pwd,newpwd){
	if(pwd==newpwd){
		return true;
	}else{
		return false;
	}
} 

function isChinaName(name) {
	 var pattern = /^[\u4E00-\u9FA5]{1,6}$/;
	 return pattern.test(name);
	}
	 
	// 验证手机号
	function isPhoneNo(phone) { 
	 var pattern = /^1[3,5,8]\d{9}$/; 
	 return pattern.test(phone); 
	}
	 
	// 验证身份证 
	function isCardNo(card) { 
	 var pattern = /(^\d{15}$)|(^\d{18}$)|(^\d{17}(\d|X|x)$)/; 
	 return pattern.test(card); 
	} 
	 
 function check(){
	 
	 if(isPwd($('#newPwd').val(),$('#pwd').val())==false){
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
	 if(isPwd($('#newPwd').val(),$('#pwd').val())&&isChinaName($.trim($('#uname').val()))
			 &&isPhoneNo($.trim($('#uphones').val()))&&isCardNo($.trim($('#ucard').val()))){
		 return true;
	 }else{
		 return false;
	 }
	 
 }
