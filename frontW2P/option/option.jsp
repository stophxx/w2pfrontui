<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap"
        rel="stylesheet">
    <title>Document</title>
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

        .cont{
            padding-top: 20px;
        }

        .main-container .option {
            font-size: 20px;
            padding-top: 20px;

        }

        .main-container .main-wrap {
            width: 465px;
            padding-top: 50px;
            padding-bottom: 100px;
        }

        .noti {
            padding-bottom: 30px;
        }

        .congr {
            font-size: 20px;
            color: rgb(118, 156, 238);
            font-weight: 100;
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


        /* 
        .box.int_carnumber {
            padding-right: 40px;
        } */

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


        /* 버튼 */


        .skip-perfect-wrap {

            display: flex;
            flex-direction: column;
            align-items: center;
            padding-top: 40px;

        }

        .skip-perfect-wrap h2 {
            font-size: 20px;
        }

        .skip-perfect-wrap .sign-button-list {
            padding-top: 25px;
            list-style: none;
            width: 465px;
            display: flex;
            align-items: center;
        }

        .skip-perfect-wrap .sign-button-list li {
            padding-bottom: 10px;
        }

        .skip-perfect-wrap .sign-button-list li button {
            width: 200px;
            height: 56px;
            border: solid 1px var(--border-gray-color);
            text-align: center;
            background: white;


        }

        #btnSkip {
            border: solid 1px #f0eded;
            cursor: pointer;
            margin-left: 10px;
            margin-right: 20px;

        }

        #btnSkip span {
            color: #b9b7b7;
        }

        #btnPerfect {
            background: rgb(118, 156, 238);
            cursor: pointer;
            margin-left: 20px;
            margin-right: 20px;
        }

        #btnPerfect span {
            color: white;
        }

        .skip-perfect-wrap .sign-button-list li button i {
            padding-left: 15px;
            font-size: 20px;
            align-items: center;

        }

        .skip-perfect-wrap .sign-up {
            color: var(--font-color);
            font-size: 14px;
            padding-top: 50px;

        }

        .skip-perfect-wrap .sign-up input {
            margin-left: 10px;
            color: rgb(118, 156, 238);
            border: none;
            width: 110px;
            cursor: pointer;
        }



        /* ----------------- */
        /* 차종선택 */



        /* The container must be positioned relative: */
        .custom-select {
            position: relative;
            font-family: Arial;
        }

        .custom-select select {
            display: none;
            /*hide original SELECT element: */
        }

        .select-selected {
            background-color: rgb(219, 228, 236);
        }

        /* Style the arrow inside the select element: */
        .select-selected:after {
            position: absolute;
            content: "";
            top: 14px;
            right: 10px;
            width: 0;
            height: 0;
            border: 6px solid transparent;
            border-color: #fff transparent transparent transparent;
        }

        /* Point the arrow upwards when the select box is open (active): */
        .select-selected.select-arrow-active:after {
            border-color: transparent transparent #fff transparent;
            top: 7px;
        }

        /* style the items (options), including the selected item: */
        .select-items div,
        .select-selected {
            color: rgb(88, 88, 88);
            padding: 8px 16px;
            border: 1px solid transparent;
            border-color: transparent transparent white transparent;
            cursor: pointer;
        }

        .select-items div,
        .select-selected div {
            color: #fff;

        }



        /* Style items (options): */
        .select-items {
            position: absolute;
            background-color: rgb(140, 194, 255);
            top: 100%;
            left: 0;
            right: 0;
            z-index: 99;
        }

        /* Hide the items when the select box is closed: */
        .select-hide {
            display: none;
        }

        .select-items div:hover,
        .same-as-selected {
            background-color: DodgerBlue;
        }


        table {
            border-spacing: 10px;
            border-collapse: separate;
        }

        table td {
            width: 120px;
        }

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
                <p class="option"> 추가입력 </p>
                <div class="main-wrap">
                    <p class="congr">회원가입 감사합니다.</p>
                    <p class="noti">어따세워 이용시 필요한 정보를 입력해주세요.</p>


<!-- 사용자 사진첨부 -->




                    <!-- 차 번호  -->
                    <div>
                        <h3 class="join_title"><label for="carnumber">차 번호</label></h3>
                        <span class="box int_carnumber">
                            <input type="text" id="carnumber" class="int" maxlength="100" placeholder="자동차번호 입력">
                        </span>
                        <span class="error_next_box"></span>
                    </div>




                    <!-- 차종 -->
                    <div class="cont">
                        <h3 class="join_title"><label for="carkind">차종</label></h3>
                        <div class="custom-select" style="width:200px;">
                            <select>
                                <div class="chooseUrCar">
                                    <option value="0">차종을 선택하세요</option>
                                </div>
                                <option value="1">대형</option>
                                <option value="2">중형</option>
                                <option value="3">준중형</option>
                                <option value="4">경차</option>
                                <option value="5">기타</option>
                            </select>
                        </div>


                    </div>



                    <!-- 지역 -->
                    <div class="cont">
                        <h3 class="join_title"><label for="nickname">지역 (최대 3개 선택 가능)</label></h3>

                        <FORM action=" " method=post name=Check><input type="hidden" name="PHPSESSID"
                                value="3e4d6b67a20ac04e692c00c715f5cb08" />
                            <table align="auto">

                                <tr>
                                    <td>
                                        <INPUT name=1 onclick=CountChecked(this) type=checkbox> 강남구
                                    </td>
                                    <td>
                                        <INPUT name=2 onclick=CountChecked(this) type=checkbox> 강동구
                                    </td>
                                    <td>
                                        <INPUT name=3 onclick=CountChecked(this) type=checkbox> 강북구
                                    </td>
                                    <td>
                                        <INPUT name=4 onclick=CountChecked(this) type=checkbox> 강서구
                                    </td>
                                </tr>

                                <tr>
                                    <td>
                                        <INPUT name=5 onclick=CountChecked(this) type=checkbox> 관악구
                                    </td>
                                    <td>
                                        <INPUT name=6 onclick=CountChecked(this) type=checkbox> 광진구
                                    </td>
                                    <td>
                                        <INPUT name=7 onclick=CountChecked(this) type=checkbox> 구로구
                                    </td>
                                    <td>
                                        <INPUT name=8 onclick=CountChecked(this) type=checkbox> 금천구
                                    </td>
                                </tr>

                                <tr>
                                    <td>
                                        <INPUT name=9 onclick=CountChecked(this) type=checkbox> 노원구
                                    </td>
                                    <td>
                                        <INPUT name=10 onclick=CountChecked(this) type=checkbox> 도봉구
                                    </td>
                                    <td>
                                        <INPUT name=11 onclick=CountChecked(this) type=checkbox> 동대문구
                                    </td>
                                    <td>
                                        <INPUT name=12 onclick=CountChecked(this) type=checkbox> 동작구
                                    </td>
                                </tr>

                                <tr>
                                    <td>
                                        <INPUT name=13 onclick=CountChecked(this) type=checkbox> 마포구
                                    </td>
                                    <td>
                                        <INPUT name=14 onclick=CountChecked(this) type=checkbox> 서대문구
                                    </td>
                                    <td>
                                        <INPUT name=15 onclick=CountChecked(this) type=checkbox> 서초구
                                    </td>
                                    <td>
                                        <INPUT name=16 onclick=CountChecked(this) type=checkbox> 성동구
                                    </td>
                                </tr>

                                <tr>
                                    <td>
                                        <INPUT name=17 onclick=CountChecked(this) type=checkbox> 성북구
                                    </td>
                                    <td>
                                        <INPUT name=18 onclick=CountChecked(this) type=checkbox> 송파구
                                    </td>
                                    <td>
                                        <INPUT name=19 onclick=CountChecked(this) type=checkbox> 양천구
                                    </td>
                                    <td>
                                        <INPUT name=20 onclick=CountChecked(this) type=checkbox> 영등포구
                                    </td>
                                </tr>

                                <tr>
                                    <td>
                                        <INPUT name=21 onclick=CountChecked(this) type=checkbox> 용산구
                                    </td>
                                    <td>
                                        <INPUT name=22 onclick=CountChecked(this) type=checkbox> 종로구
                                    </td>
                                    <td>
                                        <INPUT name=23 onclick=CountChecked(this) type=checkbox> 중구
                                    </td>
                                    <td>
                                        <INPUT name=24 onclick=CountChecked(this) type=checkbox> 중랑구
                                    </td>
                                </tr>



                            </table>
                        </FORM>


                    </div>








                    <section class="skip-perfect-wrap">

                        <ul class="sign-button-list">
                            <li><button type="button" id="btnSkip"><span>건너뛰기</span></button></li>
                            <li><button type="button" id="btnPerfect"><span>입력완료</span></button></li>
                        </ul>

                    </section>


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
                <p>｜ 상호 : ㈜어따세워 ｜ 대표 : 문상환 ｜ 사업자등록번호 : 210-42-10003<br> ｜ 주소 : 서울특별시 마포구 신수동 63-14 거구장 지층 비트캠프 신촌센터
                    5호<br> ｜ 전화 : 02-3486-9600 ｜ 팩스 : 02-6007-1245 ｜ 통신판매업 신고번호 : 제 서초-00098호</p>
                <p>Copyright © 어따세워. All Rights Reserved.</p>
            </div>
        </div>
    </div>
    <script src="main.js"></script>
</body>

</html>