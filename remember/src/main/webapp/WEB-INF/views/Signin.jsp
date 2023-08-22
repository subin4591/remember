<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>기억하길</title>
<script src="/js/jquery-3.6.4.min.js"></script>
</head>
<body>

	<form  method="post" name = "loginform" action="/Login" id="login_form">
        <input type="text" 
        class = "id-pw" 
        name ="user_id" 
        id = "id" 
        alt="id입력"
        placeholder="아이디 입력" 
        required>
        
        <input type="password" 
        class = "id-pw" 
        name = "password" 
        id = "password" 
        alt="pw입력" 
        placeholder="비밀번호 입력" 
        required>
        
        <input type="submit" 
        class ="loginbtn" 
        value="로그인" 
        onclick="return check()"
        disabled>
        <div class="sign_up_pw"><a href="/Signup" >회원가입 </a><a>I</a> 
        
        <a id="find" href="javascript: Findpasswordopen()">비밀번호찾기</a></div>
        
      </form>
<script>
$(document).ready(function() {
    // 아이디와 비밀번호 입력 필드에 keyup 이벤트 리스너를 추가합니다.
    $('#id, #password').on('keyup', function() {
        var userId = $('#id').val().trim();
        var password = $('#password').val().trim();

        // 두 입력 필드 모두에 값이 입력된 경우
        if (userId && password) {
            $('.loginbtn').prop('disabled', false);  // 버튼 활성화
        } else {
            $('.loginbtn').prop('disabled', true);   // 버튼 비활성화
        }
    });
});
function check() {
    var userId = document.getElementById("id").value;
    var password = document.getElementById("password").value;
    
    if (userId === "" || password === "") {
        alert("아이디나 비밀번호가 입력되지 않았습니다.");
        return false; // form 제출을 막음
    }
    return true; // form 제출을 허용함
}
</script>

</body>
<script src="/js/signincheck.js"></script>
<script src="/js/loginevent.js"></script>
<script src="/js/Findpassword.js"></script>
</html>