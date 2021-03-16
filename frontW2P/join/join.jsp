<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
        <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
            <html>

            <head>
               
                <meta charset="UTF-8">
                <meta http-equiv="X-UA-Compatible" content="IE=edge">
                <meta name="viewport" content="width=device-width, initial-scale=1.0">
                <link rel="preconnect" href="https://fonts.gstatic.com">
                <link
                    href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap"
                    rel="stylesheet">
                <script src="js/jquery-1.12.4.min.js"></script>
                <title>어따세워 회원가입</title>
                <style>
                    * {
                        margin: 0;
                        padding: 0;
                        list-style-type: none;
                        text-decoration: none;
                        font-family: 'Noto Sans KR', sans-serif;
                        font-size: 1em;
                        font-weight: 300;
                        color: #000;
                    }

                    body {
                        width: 100%;
                        height: auto;
                        /* body에 스타일링을 지양해주십시오. */
                    }

                    #hdr {
                        width: 100%;
                        min-height: 150px;
                        height: auto;
                        box-sizing: border-box;
                        padding: 0 50px 0 40px;
                        box-shadow: 1px 1px 5px rgba(0, 0, 0, 0.1);
                        overflow: hidden;
                    }

                    #hdr .hdr-logo {
                        width: 150px;
                        height: 150px;
                        background: url("logo.png") no-repeat;
                        background-size: cover;
                        float: left;
                    }

                    #hdr #nav {
                        float: right;
                    }

                    #hdr #nav ul {
                        float: right;
                    }

                    #hdr #nav li {
                        float: right;
                        padding: 0px 20px;
                        line-height: 150px;
                    }

                    #cntnr {
                        clear: both;
                        width: 60%;
                        min-height: 800px;
                        height: auto;
                        margin: 0 auto;
                    }

                    #cntnr .cntnr-top-margin {
                        width: 100%;
                        height: 40px;
                    }

                    #cntnr .article {
                        width: 100%;
                        /* height:200px; */
                        /* border:1px solid #ccc; */
                        box-sizing: border-box;
                        margin: 0 0 20px 0;
                    }


                    /* ------  삽입  ------ */


                    .main-container {
                        width: 100%;
                        display: flex;
                        flex-direction: column;
                        align-items: center;

                    }

                    .main-container .join {
                        font-size: 20px;
                        padding-top: 20px;

                    }


                    .main-container .main-wrap {
                        width: 465px;
                        padding-top: 40px;

                    }




                    /* 입력폼 */


                    h3 {
                        margin: 19px 0 8px;
                        font-size: 14px;
                        font-weight: 700;
                    }


                    .box {
                        display: block;
                        width: 100%;
                        height: 51px;
                        border: solid 1px #dadada;
                        padding: 10px 14px 10px 14px;
                        box-sizing: border-box;
                        background: #fff;
                        position: relative;
                    }

                    .int {
                        display: block;
                        position: relative;
                        width: 100%;
                        height: 29px;
                        border: none;
                        background: #fff;
                        font-size: 15px;
                    }

                    input {
                        font-family: Dotum, '돋움', Helvetica, sans-serif;
                    }

                    .box.int_email {
                        /* width: 70%; */
                    }




                    .box.int_nickname {
                        padding-right: 110px;
                    }

                    .box.int_pass {
                        padding-right: 40px;
                    }

                    .box.int_pass_check {
                        padding-right: 40px;
                    }

                    /* 
.step_url {
    position: absolute;
    top: 16px;
    right: 13px;
    font-size: 15px;
    color: #8e8e8e;
} */

                    .pswdImg {
                        width: 18px;
                        height: 20px;
                        display: inline-block;
                        position: absolute;
                        top: 50%;
                        right: 16px;
                        margin-top: -10px;
                        cursor: pointer;
                    }


                    /* 에러메세지 */

                    .error_next_box {
                        margin-top: 9px;
                        font-size: 12px;
                        color: red;
                        display: none;
                    }

                    #alertTxt {
                        position: absolute;
                        top: 19px;
                        right: 38px;
                        font-size: 12px;
                        color: red;
                        display: none;
                    }

                    /* 버튼 */

                    .btn_area {
                        padding-top: 40px;
                        color: rgb(118, 156, 238);

                    }

                    #btnJoin {

                        cursor: pointer;
                        width: 465px;
                        height: 48px;
                        font-size: 18px;
                        background: white;
                        color: rgb(118, 156, 238);
                        border: solid 1px;
                        margin: auto;

                    }

                    #btnJoin span {
                        color: rgb(118, 156, 238);
                    }


                    /* ----------------- */





                    #ftr {
                        width: 100%;
                        min-height: 200px;
                        height: auto;
                        background: #eee;
                        font-size: 0.8em;
                        line-height: 2em;
                    }

                    #ftr .wrapper {
                        width: 60%;
                        min-height: 200px;
                        height: auto;
                        margin: 0 auto;
                    }

                    #ftr .wrapper #ftr-nav {
                        height: 50px;
                    }

                    #ftr .wrapper #ftr-nav ul {
                        float: left;
                    }

                    #ftr .wrapper #ftr-nav ul li {
                        padding: 20px 20px 15px 20px;
                        float: left;
                    }

                    #ftr .wrapper #ftr-nav ul li:first-child {
                        padding: 20px 20px 15px 0px;
                    }

                    #ftr .wrapper .ftr-arti {
                        clear: both;
                    }

                    #ftr .wrapper .ftr-arti p {
                        padding: 0 0 10px 0;
                    }
                </style>
            </head>

			<script type="text/javascript">


				$(document).ready(function () {
					// 취소
					$(".cencle").on("click", function () {
						location.href = "/login";
					})
				   // #btnJoin  #email #pswd2 #nickname
					$("#btnJoin").on("click", function () {
						if ($("#email").val() == "") {
							alert("이메일을 입력해주세요.");
							$("#email").focus();
							return false;
						}
						if ($("#pswd2").val() == "") {
							alert("비밀번호를 입력해주세요.");
							$("#pswd2").focus();
							return false;
						}
						if ($("#nickname").val() == "") {
							alert("닉네임을 입력해주세요.");
							$("#nickname").focus();
							return false;
						}
					});
				})
			</script>

            <body>
                <div id="hdr">
                    <div class="hdr-logo"></div>
                    <div id="nav">
                        <ul>
                            <li><a href="#">로그인 · 회원가입</a></li>
                            <li><a href="#">내 주차장 공유하기</a></li>
                            <li><a href="#">장기주차</a></li>
                            <li><a href="#">단기주차</a></li>
                        </ul>
                    </div>
                </div>
                <div id="cntnr">
                    <!-- 각자의 파트는 이곳에서부터 작업하실 수 있습니다. -->
                    <div class="cntnr-top-margin"></div>
                    <div class="article">


                        <div class="main-container">
                            <p class="join"> 회원가입 </p>
                            <div class="main-wrap">


                                <form action="/user/join" method="post">
                                    <!-- EMAIL -->
                                    <div>
                                        <h3 class="join_title"><label for="email">이메일</label></h3>
                                        <span class="box int_email">
                                            <input type="text" id="email" class="int" maxlength="100"
                                                placeholder="사용하는 Email을 입력하세요">
                                        </span>
                                        <span class="error_next_box"></span>
                                    </div>

                                    <!-- EMAIL AUTHNUM-->
                                    <div>
                                        <h3 class="join_title"><label for="authnum">인증번호</label></h3>
                                        <span class="box int_authnum">
                                            <input type="text" id="authnum" class="int" maxlength="100"
                                                placeholder="인증번호를 입력하세요">
                                        </span>
                                        <span class="error_next_box"></span>
                                    </div>

                                    <!-- PW1 -->
                                    <div>
                                        <h3 class="join_title"><label for="pswd1">비밀번호</label></h3>
                                        <span class="box int_pass">
                                            <input type="text" id="pswd1" class="int" maxlength="20">
                                            <span id="alertTxt">사용불가</span>
                                            <img src="m_icon_pass.png" id="pswd1_img1" class="pswdImg">
                                        </span>
                                        <span class="error_next_box"></span>
                                    </div>

                                    <!-- PW2 -->
                                    <div>
                                        <h3 class="join_title"><label for="pswd2">비밀번호 재확인</label></h3>
                                        <span class="box int_pass_check">
                                            <input type="text" id="pswd2" class="int" maxlength="20">
                                            <img src="m_icon_check_disable.png" id="pswd2_img1" class="pswdImg">
                                        </span>
                                        <span class="error_next_box"></span>
                                    </div>

                                    <!-- NICKNAME -->
                                    <div>
                                        <h3 class="join_title"><label for="nickname">닉네임</label></h3>
                                        <span class="box int_nickname">
                                            <input type="text" id="nickname" class="int" maxlength="20">
                                        </span>
                                        <span class="error_next_box"></span>
                                    </div>

                                    <!-- JOIN BTN-->
                                    <div class="btn_area">
                                        <button type="submit" id="btnJoin">
                                            <span>가입하기</span>
                                        </button>
                                    </div>

                                </form>


                            </div>
                        </div>
                    </div>



                    <!-- 각자의 파트는 이곳까지 작업해주시면 되겠습니다. -->
                </div>
                <div id="ftr">
                    <div class="wrapper">
                        <div id="ftr-nav">
                            <ul>
                                <li><a href="#">이용약관</a></li>
                                <li><a href="#">회사소개</a></li>
                                <li><a href="#">개인정보 처리방침</a></li>
                                <li><a href="#">위치기반 서비스 이용약관</a></li>
                                <li><a href="#">안심운영정책</a></li>
                            </ul>
                        </div>
                        <div class="ftr-arti">
                            <p>｜ 상호 : ㈜어따세워 ｜ 대표 : 문상환 ｜ 사업자등록번호 : 210-42-10003<br> ｜ 주소 : 서울특별시 마포구 신수동 63-14 거구장 지층
                                비트캠프 신촌센터
                                5호<br> ｜ 전화 : 02-3486-9600 ｜ 팩스 : 02-6007-1245 ｜ 통신판매업 신고번호 : 제 서초-00098호</p>
                            <p>Copyright © 어따세워. All Rights Reserved.</p>
                        </div>
                    </div>
                </div>
                <script src="join.js"></script>

            </body>

            </html>