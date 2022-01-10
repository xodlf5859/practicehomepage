<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
    
<script>
function regist_go(){
	
    var pwd = document.getElementById('mem_pwd').value;
    var pwd2 = document.getElementById('mem_pwd2').value;
	
	  alert("pwd1:"+pwd+"pwd2:"+pwd2)

	var emailRule = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;//이메일 정규식
	 
	if(!emailRule.test($("input[id='mem_mail']").val())) {            
	            //경고
	            alert("정확한 이메일을 입력해주세요");
	            return;
	}

	   if($('input[name="mem_id"]').val() == ""){
		      alert("아이디는 필수입니다.");
		       return;
		   }
	   
	   if($('input[name="mem_pwd"]').val()==""){
		      alert("패스워드는 필수입니다.");
		      return;
	   }
	   if($('input[name="mem_name"]').val()==""){
		      alert("이름은 필수입니다.");
		      return;
	   }
	   if($('input[name="mem_phone"]').val()==""){
		      alert("연락처는 필수입니다.");
		      return;
	   }
	   if(pwd != pwd2){
		   alert("비밀번호가 일치하지 않습니다.");
		   return;
	   }
	   var form = $('form[role="form"]');
	   form.submit();

}


function idCheck_go() {
// 	alert("id check btn");
    var input_ID=$('input[name="mem_id"]');
    
    $.ajax({ 
   	 url : "idCheck.do?mem_id="+input_ID.val().trim(),
   	 method : "post",	
   	 success : function(result){
  		   if(result == "duplicated"){
             alert("중복된 아이디 입니다.");
             $('input[name="mem_id"]').focus();
          }else{
             alert("사용가능한 아이디 입니다.");
             checkedID=input_ID.val().trim();
             $('input[name="mem_id"]').val(input_ID.val().trim());
            
          } 
   	 },
        error:function(error){
          alert("시스템장애로 가입이 불가합니다.");
        }
   });
}
</script>