<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title> <style>
        #content_main_wrap {
            width: 95%;
            background-color: #fff;
            margin: 2% auto 0 auto;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        #status_search {
            list-style: none;
            width: 100%;
            padding: 0;
            margin: 0;
            display: flex;
            flex-direction: column;
            justify-content: space-evenly;
        }
        .form {
            width: 90%;
        }
        #status_search li {
            display: flex;
            align-items: center;
            width: 100%;
        }

        .search_wrap{
            display : flex;
            width : 100%;
        }
        .search_wrap input{
            /* display : flex; */
            width : 40%;
            height : 100%;
        }
        .search_wrap .search_button{
            width : 20%;
        }

        .title {
            width: 20%;
            margin: 2%;
        }

       
    

        .search_wrap input,
        .date-select {
            border: 1px solid rgba(0,0,0,0.1);
            border-radius: 5px;
        }
        
        .search_wrap input:hover,
        .date-select:hover {
            outline: 1px solid rgb(50, 50, 230);
        }

        .search_wrap input:focus,
        .date-select:focus {
            outline: 1px solid rgb(50, 50, 230);
        }
        
        .search_wrap button{
            /* width:50%; */
            margin-left: 10px;
        }

        a{
            text-decoration: none;
        }
        a:active{
            color : #000;
        }
    </style>
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

</head>
<body>
	<%@ include file="../mainheader.jsp"%>
	<div id="content">

		<div id="main_header">
			<div id="list_title">출하지시서현황</div>
		</div>
		<div id="content_main_wrap">
			<!-- 현황조회 box -->
			<ul id="status_search">
				<li id="base_date">
					<div class="title">일자</div>

					<div class="form">
						<div class="search_wrap">
							<!-- <div class="date-select-container"> -->
							<div id="start-date-select">
								<select class="date-select" id="start-year"></select> <select
									class="date-select" id="start-month"></select> <select
									class="date-select" id="start-day"></select> <span
									class="calendar-button" id="start-calendar">📅</span>
							</div>
							~
							<div id="end-date-select">
								<select class="date-select" id="end-year"></select> <select
									class="date-select" id="end-month"></select> <select
									class="date-select" id="end-day"></select> <span
									class="calendar-button" id="end-calendar">📅</span>
							</div>

							<!-- 숨겨진 날짜 선택기 입력 필드 -->
							<input type='text' id='hidden-start-datepicker' /> <input
								type='text' id='hidden-end-datepicker' />
						</div>
						<!-- </div> -->
					</div>
				</li>
				<li id="cust">
					<div class="title">거래처</div>
					<div class="form">
						<div class="search_wrap">
							<input type="text" placeholder="거래처검색">
							<div class="search_button">
								<button type="button" class="button_basic">검색</button>
							</div>
						</div>
					</div>
				</li>
				<li id="item_code">
					<div class="title">품목코드</div>
					<div class="form">
						<div class="search_wrap">
							<input type="text" placeholder="품목코드">
							<div class="search_button">
								<button type="button" class="button_basic">검색</button>
							</div>
						</div>
				</li>
				<li id="manager">
					<div class="title">담당자</div>
					<div class="form">
						<div class="search_wrap">
							<input type="text" placeholder="담당자">
							<div class="search_button">
								<button type="button" class="button_basic">검색</button>
							</div>
						</div>
				</li>
				<li id="status">
					<div class="title">진행상태</div>
					<div class="form">
						<!-- <div class="search_wrap"> -->
						<!-- <div class="search_status"> -->
						<div id="status_check">
							<input type="radio" name="status_checkbox"> 전체 <input
								type="radio" name="status_checkbox"> 결재중 <input
								type="radio" name="status_checkbox"> 완료
						</div>
						<!-- </div> -->
					</div>
				</li>

			</ul>
		</div>

		<!-- content div 끝 -->
	</div>
	<footer>
		<div id="main_button">
			<button id="outgoing_search" class="change_button">
				<a href="outgoing_directions_list.html">검색</a>
			</button>

		</div>
	</footer>


</body>
</html>