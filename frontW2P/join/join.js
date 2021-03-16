

/*변수 선언*/

var email = document.querySelector('#email');

var pw1 = document.querySelector('#pswd1');
var pwMsg = document.querySelector('#alertTxt');
var pwImg1 = document.querySelector('#pswd1_img1');

var pw2 = document.querySelector('#pswd2');
var pwImg2 = document.querySelector('#pswd2_img1');
var pwMsgArea = document.querySelector('.int_pass');

var nickName = document.querySelector('#nickname');

var error = document.querySelectorAll('.error_next_box');
var error1 = document.querySelector('.error_next_box1');


/*이벤트 핸들러 연결*/

email.addEventListener("focusout", isEmailCorrect);
pw1.addEventListener("focusout", checkPw);
pw2.addEventListener("focusout", comparePw);
nickName.addEventListener("focusout", checkNickname);




/*콜백 함수*/

function isEmailCorrect() {
    var emailPattern = /[a-z0-9]{2,}@[a-z0-9-]{2,}\.[a-z0-9]{2,}/;

    if(email.value === ""){ 
        error[0].innerHTML = "필수 정보입니다.";
        error[0].style.display = "block";
    } else if(!emailPattern.test(email.value)) {
        error[0].innerHTML = "이메일 형식을 지켜주세요.";
        error[0].style.display = "block";
    } else {
        error[0].innerHTML = "사용가능한 이메일입니다!";
        error[0].style.color = "#08A600";
        error[0].style.display = "block";
    }

}


function checkPw() {
    var pwPattern = /[a-zA-Z0-9~!@#$%^&*()_+|<>?:{}]{8,16}/;
    if(pw1.value === "") {
        error[1].innerHTML = "필수 정보입니다.";
        error[1].style.display = "block";
    } else if(!pwPattern.test(pw1.value)) {
        error[1].innerHTML = "8~16자 영문 대 소문자, 숫자, 특수문자를 사용하세요.";
        pwMsg.innerHTML = "사용불가";
        pwMsgArea.style.paddingRight = "93px";
        error[1].style.display = "block";
        
        pwMsg.style.display = "block";
        pwMsg.style.color = "#03c75a";
        pwImg1.src = "m_icon_not_use.png";
    } else {
        error[1].style.display = "none";
        pwMsg.innerHTML = "안전";
        pwMsg.style.display = "block";
        pwMsg.style.color = "#03c75a";
        pwImg1.src = "m_icon_safe.png";
    }
}

function comparePw() {
    if(pw2.value === pw1.value && pw2.value != "") {
        pwImg2.src = "m_icon_check_enable.png";
        error[2].style.display = "none";
    } else if(pw2.value !== pw1.value) {
        pwImg2.src = "m_icon_check_disable.png";
        error[2].innerHTML = "비밀번호가 일치하지 않습니다.";
        error[2].style.display = "block";
    } 

    if(pw2.value === "") {
        error[2].innerHTML = "필수 정보입니다.";
        error[2].style.display = "block";
    }
}

function checkNickname() {
    var nickPattern = /[a-zA-Z0-9_-]{5,20}/;
    if(nickName.value === "") {
        error1.innerHTML = "필수 정보입니다.";
        error1.style.display = "block";
    } else if(!nickPattern.test(nickName.value)) {
        error1.innerHTML = "5~20자의 영문 소문자, 숫자와 특수기호(_),(-)만 사용 가능합니다.";
        error1.style.display = "block";
    } else {
        error1.innerHTML = "멋진 닉네임이네요!";
        error1.style.color = "#08A600";
        error1.style.display = "block";
    }
}






