<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../css/star.css">
<link rel="stylesheet" href="../css/calendar.css">

<!-- jQuery 라이브러리를 불러오는 코드 -->
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<!--  jQuery UI 라이브러리를 불러오는 코드 ex. 달력,드래그 // 압축x버전 -->
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

<!-- 달력 jquery -->
<link rel="stylesheet"
	href="http://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">

<!-- 달력 js -->
<script src="../js/calendar.js"></script>

<style>
        #title_content{
            text-align : center;
            background-color:#e9e3e3;;
            font-size : 2em;
        }
        .wrap_toolbar{
            display: flex;
            background-color:#e9e3e3;
            justify-content: space-between;
            padding : 5px;
        }
        .toolbar_left{
            display : flex;
            flex-wrap : wrap;
            align-items : center;
            align-content: stretch;
            margin-left : 3%;
            
        }
        .toolbar_right{
            display : flex;
            flex-wrap : wrap;
            align-items : center;
            align-content: stretch;
            margin-right : 3%;
        }
        
    </style>
</head>
<body>
	<%@ include file="../mainheader.jsp"%>
	
	<div id="content">

            <div id="main_header">
                <div id="list_title"> 재고현황</div>
                <div id="list_search">
                    <input type="text" class="list_search_text" value="" placeholder="입력 후 enter">
                    <div id="searchImg">
                        <img src="https://cdn-icons-png.freepik.com/512/2311/2311526.png?ga=GA1.1.1347059133.1702859932&"
                             class="list_search_img" alt="검색">
                    </div>
                </div>
            </div>
            <div id = "title_content"> 재고현황 </div>
            <!-- 메인시작 -->
            <div class = "wrap_toolbar">
                <div class = "toolbar_left"> 회사명 : 주식회사 alphaknow</div>
                <div class = "toolbar_right"> 설정한 조회날짜</div>
            </div>
            <div id="main_content">
                <table id="main_board">
                    <!-- 테이블 너비 조절 -->
                    <colgroup>
                        <col style="width:15%" />
                        <col style="width:10%" />
                        <col style="width:20%" />
                        <col style="width:15%" />
                        <col style="width:15%" />
                        <col style="width:15%" />
                        <col style="width:10%" />
                    </colgroup>
                    <thead>
                        <tr>
                            <th>품목코드</th>
                            <th>품목명</th>
                            <th>규격</th>
                            <th>단위</th>
                            <th>재고수량</th>
                            <th>입고단가</th>
                            <th>금액</th>
                        </tr>

                    </thead>
                    <tbody>
                        <!-- 게시물 추가 예정 -->
                    </tbody>

                </table>

            </div>
            
            <div id="main_button">
                <!-- 신규등록 및 수정버튼-->
                <button id="new_register" class="change_button">인쇄</button>
                <button id="edit" class="change_button">excel</button>
            </div>

        <!-- content 끝 div -->
    </div>

        <div id="footer">
            <!-- 페이지 넘버 , 페이지네이션 추가예정, 1차는 기본 박스로 -->
            <div id="pagination">
                <ul class="page-box">
                    <li>
                        << </li>
                    <li>1</li>
                    <li>>></li>
                </ul>
            </div>
        </div>

















    

</body>

</html>