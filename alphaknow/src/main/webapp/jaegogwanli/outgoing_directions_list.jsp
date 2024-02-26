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
        /* 메인 css */
        #main_content {
            display: flex;
            flex-direction: column;
        }

        #nav {
            width: 100%;
            height: 50px;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        #nav ul {
            display: flex;
            list-style: none;
        }

        #nav ul li {
            background-color: #fff;
            color: #000;
            font-size: 0.8em;
            border-radius: 10px;
            margin: 2px;
            padding: 5px;
            cursor: pointer;
        }

        /* 마우스가 올라갔을 때의 스타일 */
        #nav_ul li:hover {
            background-color: #6495ED;
            color: #fff;
        }


        /* 선택된 항목의 스타일 */
        #nav_ul li.selected {
            background-color: #6495ED;
            color: #fff;
        }

        #nav_ul,
        #date_search {
            width: 50%;
        }


        /* 메인창 달력 */

        #start-date-select {
            display: flex;
        }

        #end-date-select {
            display: flex;
        }

        /* 출하지시서 pop*/

        #registration_pop_div_wrap .ul_wrap {
            width: 90%;
            list-style: none;
            background-color: #fff;
            margin: 0 auto;
            padding: 0;
            border-radius: 5px;

        }


        #basic_date,
        #empolyee_code,
        #cust,
        #outgoing_date {
            display: flex;
        }

        .form {
            display: flex;
            align-items: center;
            width: 80%;
        }

        .title {
            width: 15%;
            padding: 5px;
        }

        .nav_search_button {
            width: 8%;
            display: flex;
        }

        input {
            border: 1px solid rgb(217, 217, 236);
        }

        input:focus {
            outline: 1px solid rgb(50, 50, 230);
        }

        /* 중간에 발주,재고불러오기 버튼 */
        #registration_pop_table_button {
            height: 10%;
            margin: 1% 0 1% 5%;
        }

        #new_registration {
            border-spacing: 0;
            border-collapse: collapse;
        }

        /* 출하지시서 재고 불러오기 */
        #registration_pop_table_button {
            height: 10%;
            margin: 1% 0 1% 5%;
        }

        /* 출하지시서 테이블 설정 */
        #new_registration {
            border-spacing: 0;
            border-collapse: collapse;
        }

        #new_registration input[type="text"] {
            width: 95%;
            box-sizing: border-box;
        }
    </style>

    <script>

        window.addEventListener('load', function () {
            document.getElementById("new_register").addEventListener("click", function () {
                registration_pop.style.display = "block";
            });
        })
        // 출하지시서 등록 pop-up 이벤트
        window.addEventListener('load', function () {
            // 품목코드 입력시 자동으로 input row가 자동생성됨
            let tableBody = document.querySelector('#new_registration tbody');
            let tableFoot = document.querySelector('#new_registration tfoot');
            let resetButton = document.querySelector('#new_registration_reset');
            let closeButton = document.querySelector('#registration_pop_close');

            // 품목코드 입력 시 새로운 행 추가
            addEventListenerToItemCodeInputs();

            function addEventListenerToItemCodeInputs() {
                let itemCodeInputs = document.querySelectorAll('#new_registration tbody td:nth-child(2) input[type="text"]');
                itemCodeInputs.forEach(function (input) {
                    input.addEventListener('input', function () {
                        let row = input.closest('tr');
                        let lastRow = document.querySelector('#new_registration tbody tr:last-child');
                        if (row === lastRow) {
                            let newRow = document.createElement('tr');
                            newRow.innerHTML = '\
                    <td><input type="checkbox"></td>\
                    <td><input type="text" class="text"></td>\
                    <td><input type="text" class="text"></td>\
                    <td><input type="text" class="text"></td>\
                    <td><input type="text" class="text"></td>\
                    <td><input type="text" class="text"></td>';
                            let tbody = document.querySelector('#new_registration tbody');
                            tbody.appendChild(newRow);
                            addEventListenerToItemCodeInputs();
                        }
                    });
                });
            }
            //수량합계출력
            tableBody.addEventListener('input', function (event) {
                var target = event.target;
                if (target.matches('td:nth-child(5) .text')) {
                    var total = Array.from(tableBody.querySelectorAll('tr td:nth-child(5) .text'))
                        .reduce(function (sum, input) {
                            return sum + Number(input.value || 0);
                        }, 0);
                    tableFoot.querySelector('tr td:nth-child(5) .text').value = total;
                }
            });
            // 다시쓰기 후 없어진 행에 대해 새로은 행을 추가하는 함수
            // 다시쓰기 버튼 클릭 시 모든 입력 초기화 및 행 재생성
            resetButton.addEventListener('click', function () {
                while (tableBody.children.length > 1) {
                    tableBody.removeChild(tableBody.lastChild);
                }
                Array.from(tableBody.querySelectorAll('.text')).forEach(function (input) {
                    input.value = '';
                });

                Array.from(tableFoot.querySelectorAll('.text')).forEach(function (input) {
                    input.value = '';
                });
            });
            // 팝업닫기
            closeButton.addEventListener('click', function () {
                document.querySelector('#registration_pop').style.display = 'none';
            });
        });

        // 품목 더블클릭하면 품목검색창 div 생성
        window.addEventListener('load', function () {
            let item_search_pop = document.getElementById("item_search_pop");
            function addEventListenerToItemCodeInputs() {
                let itemCodeInputs = document.querySelectorAll('#new_registration tbody td:nth-child(2) input[type="text"]');
                itemCodeInputs.forEach(function (input) {
                    // 품목코드 입력 필드에 더블 클릭 이벤트 리스너 추가
                    input.addEventListener("dblclick", function () {
                        item_search_pop.style.display = "block";
                    });
                });
            }

            // 초기 실행
            addEventListenerToItemCodeInputs();

            // 추가된 새행의 품목코드를 클릭해도 품목등록 div 뜨게 설정
            document.querySelector('#new_registration').addEventListener('DOMNodeInserted', function (e) {
                if (e.target.tagName === 'TR') {
                    addEventListenerToItemCodeInputs();
                }
            });

            document.getElementById("item_search_pop_close").addEventListener("click", function () {
                item_search_pop.style.display = "none";
            });
        });

        // empolyee 사원검색 pop 관련
        window.addEventListener('load', function () {
            // 열기
            document.getElementById("registration_pop_empolyee_code_search").addEventListener("click", function () {
                employee_search_pop.style.display = "block";
            });

            //닫기
            document.getElementById("employee_search_pop_close").addEventListener("click", function () {
                employee_search_pop.style.display = "none";
            });
        });

        // new_empolyee pop 신규사원 관련
        window.addEventListener('load', function () {
            // 열기
            document.getElementById("new_employee_register_register_button").addEventListener("click", function () {
                new_employee_pop.style.display = "block";
            });

            //닫기
            document.getElementById("new_employee_pop_close").addEventListener("click", function () {
                new_employee_pop.style.display = "none";
            });
        });




        // 알림 보여주기 함수
        // 페이지 로딩 완료 후 실행
        window.addEventListener('load', function () {
            // 알림 메시지 관련 요소
            let alertDiv = document.getElementById('alert_div');
            let alertMessage = document.getElementById('alert_message');
            let alertClose = document.getElementById('alert_close');

            // 알림 메시지 표시 함수
            function showAlert(message) {
                alertMessage.textContent = message;
                alertDiv.style.display = "block";
            }

            // 알림 메시지 닫기 버튼 이벤트 추가
            alertClose.addEventListener('click', function () {
                alertDiv.style.display = "none";
            });

            // 날짜 선택기 설정
            $(".datepicker").datepicker({
                dateFormat: 'yy-mm-dd',
                onSelect: function (selectedDate) {
                    let today = new Date();
                    if (new Date(selectedDate) > today) {
                        showAlert('선택하신 날짜는 오늘보다 미래입니다. 다시 선택해주세요!');
                        $(".datepicker").val('');
                    }
                }
            });
        });


        // // 사원 검색 div ajax
        // $('#registration_pop_empolyee_code_search').click(function () {
        //     $('#purchase').load('purchase.html #employee_search_pop');
        // });

        // 팝업 이동 jquery
        $(function () {
            $(".div_pop").draggable();

        });
    </script>
</head>
<body>
	<%@ include file="../mainheader.jsp"%>
	<div id="content">


		<div id="main_header">
			<div id="list_title">출하지시서 조회</div>
			<div id="list_search">
				<div id="list_search">
					<input type="text" class="list_search_text" value=""
						placeholder="입력 후 enter">
					<div id="searchImg">
						<img
							src="https://cdn-icons-png.freepik.com/512/2311/2311526.png?ga=GA1.1.1347059133.1702859932&"
							class="list_search_img" alt="검색">
					</div>
				</div>
			</div>
		</div>

		<!-- 메인시작 -->
		<div id="main_content">
			<div id="nav">
				<ul id="nav_ul">
					<li>전체</li>
					<li>미확인</li>
					<li>결재중</li>
					<li>확인</li>
				</ul>
				<div id="date_search">
					<div class="date-select-container">
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
				</div>
			</div>
			<table id="main_board">
				<!-- 테이블 너비 조절 -->
				<colgroup>
					<col style="width: 5%" />
					<col style="width: 15%" />
					<col style="width: 30%" />
					<col style="width: 10%" />
					<col style="width: 15%" />
					<col style="width: 15%" />
					<col style="width: 10%" />
				</colgroup>
				<thead>
					<tr>
						<th><input type="checkbox"></th>
						<th>일자 No.</th>
						<th>품목명[규격]</th>
						<th>수량</th>
						<th>거래처명</th>
						<th>연락처</th>
						<th>인쇄</th>
					</tr>
				</thead>
				<tbody>
					<!-- 게시물 추가 예정 -->
				</tbody>

			</table>
		</div>

		<div id="footer">
			<div id="main_button">
				<!-- 신규등록 및 수정버튼-->
				<button id="new_register" class="change_button">신규</button>
				<button id="edit" class="change_button">선택삭제</button>
				<button id="edit" class="change_button">인쇄</button>
			</div>
		</div>




		<!-- 출하지시서입력 pop -->
		<div id="registration_pop" class="div_pop">
			<div id="registration_pop_title">출하지시서입력</div>
			<div id="pop_title">출하지시서입력</div>
			<div id="registration_pop_div_wrap">
				<ul class="ul_wrap">
					<li id="basic_date">
						<div class="title">일자</div>
						<div class="form">
							<div class="control_set">
								<div class="date_picker">
									<input type='text' class='datepicker' readonly /> <i
										class="fa fa-calendar" aria-hidden="true"></i>
								</div>
							</div>
						</div>
					</li>
					<!-- 검색 클릭시 거래처 div pop이랑 사원 pop 뜨게 할 예정 -->
					<li id="cust">
						<div class="title">거래처</div>
						<div class="form">
							<div class="customer_code">
								<input type="text" placeholder="거래처no">
							</div>
							<div class="nav_search_button">
								<button id="registration_pop_cust_code_search"
									class="button_basic">검색</button>
							</div>
							<input type="text" placeholder="거래처명">
						</div>
					</li>
					<li id="empolyee_code">
						<div class="title">담당자</div>
						<div class="form">
							<div>
								<input type="text" placeholder="사원번호">
							</div>
							<div class="nav_search_button">
								<button id="registration_pop_empolyee_code_search"
									class="button_basic">검색</button>
							</div>
							<div>
								<input type="text" placeholder="사원이름">
							</div>
						</div>
					</li>
					<li id="outgoing_date">
						<div class="title">일자</div>
						<div class="form">
							<div class="control_set">
								<div class="date_picker">
									<input type='text' class='datepicker' readonly /> <i
										class="fa fa-calendar" aria-hidden="true"></i>
								</div>
							</div>
						</div>
					</li>
				</ul>
			</div>
			<div id="registration_pop_table_button">
				<button type="button" class="button_basic">재고불러오기</button>
			</div>
			<div id="registration_pop_table_wrap">
				<table id="new_registration">
					<colgroup>
						<col style="width: 5%" />
						<col style="width: 10%" />
						<col style="width: 10%" />
						<col style="width: 15%" />
						<col style="width: 10%" />
						<col style="width: 10%" />
					</colgroup>
					<thead>
						<tr>
							<th><input type="checkbox"></th>
							<th>품목코드</th>
							<th>품목명</th>
							<th>규격</th>
							<th>수량</th>
							<th>적요</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td><input type="checkbox"></td>
							<td><input type="text" class="text"></td>
							<td><input type="text" class="text"></td>
							<td><input type="text" class="text"></td>
							<td><input type="text" class="text"></td>
							<td><input type="text" class="text"></td>
						</tr>

					</tbody>
					<!-- 합계 tr -->
					<tfoot>
						<tr>
							<td><input type="checkbox" disabled></td>
							<td><input type="text" class="text" readonly></td>
							<td><input type="text" class="text" readonly></td>
							<td><input type="text" class="text" readonly></td>
							<td><input type="text" class="text" readonly></td>
							<td><input type="text" class="text" readonly></td>
						</tr>
					</tfoot>
				</table>
			</div>
			<div id="setting_button">
				<button type="button" class="change_button">저장</button>
				<button type="button" class="button_basic">선택삭제</button>
				<button type="button" class="button_basic"
					id="new_registration_reset">다시쓰기</button>
				<button type="button" id="registration_pop_close"
					class="button_basic">닫기</button>
			</div>
		</div>


		<!-- 메인  box 끝나는 div -->
	</div>

	<!-- alert -->
	<div id="alert_div" class="div_pop">
		<div id="alert_title" class="alert_hidden">알림</div>
		<div class="alert_content" id="alert_message">내용</div>
		<div id="alert_button">
			<button id="alert_close" class="button_basic">확인</button>
		</div>
	</div>
</body>

</html>