<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/alphaknow/css/star.css">
<link rel="stylesheet" href="/alphaknow/css/calendar.css">

<!-- jQuery 라이브러리를 불러오는 코드 -->
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<!--  jQuery UI 라이브러리를 불러오는 코드 ex. 달력,드래그 // 압축x버전 -->
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

<!-- 달력 jquery -->
<link rel="stylesheet"
	href="http://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">

<!-- 달력 js -->
<script src="/alphaknow/js/calendar.js"></script>

<style>
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

#nav_ul, #date_search {
	width: 50%;
}

/* 메인창 달력 */
#start-date-select {
	display: flex;
}

#end-date-select {
	display: flex;
}

/* 등록 pop의 nav 편집*/
#registration_pop_div_wrap .ul_wrap {
	width: 90%;
	list-style: none;
	background-color: #fff;
	margin: 0 auto;
	padding: 0;
	border-radius: 5px;
}

#basic_date, #empolyee_code, #cust {
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

/*사원등록, 품목검색 pop*/

/* 사원검색 pop */
#employee_search_pop {
	display: none;
	width: 30%;
	height: 70%;
	background-color: #e0dcdc;
	border-radius: 5px;
	position: fixed;
	top: 10%;
	right: 20%;
}

#employee_search_title {
	width: 100%;
	font-size: 2em;
	border-top-left-radius: 5px;
	border-top-right-radius: 5px;
	background-color: #4169E1;
}

#employee_search_head {
	width: 100%;
	height: 10%;
	font-size: 1em;
	/* padding: 3px; */
	margin-top: 2%;
	display: flex;
	justify-content: space-between;
}

#employee_search_head_right, #employee_search_head_left {
	margin: 2%;
	width: 50%;
	display: flex;
}

#employee_search_head_right {
	display: flex;
	width: 100%;
}

#employee_table_wrap {
	width: 95%;
	height: 65%;
	background-color: #fff;
	margin: 0 auto;
	overflow-y: auto;
}

#employee_search_table {
	width: 100%;
	margin: 0 auto;
	border-spacing: 0;
	border-collapse: collapse;
}

#employee_search_pop_button {
	margin: 3% 0 2% 5%;
}

/* 신규사원 등록 pop */
#new_employee_pop {
	display: none;
	width: 60%;
	height: 48%;
	background-color: #e0dcdc;
	border-radius: 5px;
	position: fixed;
	top: 10%;
	right: 20%;
}

#new_employee_pop_title {
	width: 100%;
	font-size: 2em;
	border-top-left-radius: 5px;
	border-top-right-radius: 5px;
	background-color: #4169E1;
	/* padding-left: 2%; */
}

#new_employee_pop_head {
	height: 7%;
	font-size: 1.0em;
	font-weight: bold;
	margin: 1% 0 1% 5%;
}

.content_wrap .ul_wrap {
	width: 90%;
	list-style: none;
	background-color: #fff;
	margin: 0 auto;
	padding: 0;
	border-radius: 5px;
}

#employee_code, #employee_name, #manager_email, #manager_code,
	#manager_email {
	display: flex;
}

#new_employee_pop .title {
	width: 50%;
	display: flex;
	justify-content: space-between;
	align-items: center;
}

#new_employee_pop_button {
	margin: 3% 0 2% 5%;
}

/* 품목검색 pop */
#item_search_pop {
	display: none;
	width: 40%;
	height: 70%;
	background-color: #e0dcdc;
	border-radius: 5px;
	position: fixed;
	top: 10%;
	right: 20%;
}

#item_search_pop_title {
	width: 100%;
	font-size: 2em;
	border-top-left-radius: 5px;
	border-top-right-radius: 5px;
	background-color: #4169E1;
}

#item_search_pop_head {
	width: 100%;
	height: 10%;
	font-size: 1em;
	/* padding: 3px; */
	margin-top: 2%;
	display: flex;
	justify-content: space-between;
}

#item_search_pop_head_right, #item_search_pop_head_left {
	margin: 2%;
	width: 50%;
	display: flex;
}

#item_search_pop_wrap {
	width: 95%;
	height: 65%;
	background-color: #fff;
	margin: 0 auto;
	overflow-y: auto;
}

#item_search_pop_table {
	width: 100%;
	border-spacing: 0;
	border-collapse: collapse;
}

#item_search_pop_button {
	margin: 3% 0 2% 5%;
}

.search_customer {
	display: flex;
}
</style>

<script>

        window.addEventListener('load', function () {
            // 품목코드 입력시 자동으로 input row가 자동생성됨
            // 수량만 입력하면 공급가액, 부가세가 자동으로 입력되고 tfooter는 합계금액
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
                    <td><input type="text" class="text" readonly></td>\
                    <td><input type="text" class="text" readonly></td>\
                    <td><input type="text" class="text" readonly></td>\
                    <td><input type="text" class="text" readonly></td>';
                            let tbody = document.querySelector('#new_registration tbody');
                            tbody.appendChild(newRow);
                            addEventListenerToItemCodeInputs();
                        }

                    });

                });

                let priceInputs = document.querySelectorAll('#new_registration tbody td:nth-child(6) input[type="text"]');
                let quantityInputs = document.querySelectorAll('#new_registration tbody td:nth-child(5) input[type="text"]');
                priceInputs.forEach(function (input, index) {
                    input.addEventListener('input', function () {
                        calculateSupply(quantityInputs[index], input);
                    });
                });
                quantityInputs.forEach(function (input, index) {
                    input.addEventListener('input', function () {
                        calculateSupply(input, priceInputs[index]);
                    });
                });
            }
            // 공급가액, 부가세 계산
            function calculateSupply(quantityInput, priceInput) {
                let row = quantityInput.closest('tr');
                let quantity = Number(quantityInput.value || 0);
                let price = Number(priceInput.value || 0);
                let supply = quantity * price;
                row.querySelector('td:nth-child(7) input[type="text"]').value = supply;
                let vat = Math.floor(supply / 11);  // 부가세 계산을 원단위 절삭 방법으로 수정
                row.querySelector('td:nth-child(8) input[type="text"]').value = vat;
                calculateTotal();
            }

            //  합계 금액 계산 함수
            function calculateTotal() {
                let rows = document.querySelectorAll('#new_registration tbody tr');
                let totalQuantity = 0;
                let totalSupply = 0;
                let totalVat = 0;
                rows.forEach(function (row) {
                    let quantity = Number(row.querySelector('td:nth-child(5) input[type="text"]').value || 0);
                    let supply = Number(row.querySelector('td:nth-child(7) input[type="text"]').value || 0);
                    let vat = Number(row.querySelector('td:nth-child(8) input[type="text"]').value || 0);
                    totalQuantity += quantity;
                    totalSupply += supply;
                    totalVat += vat;
                });
                document.querySelector('#new_registration tfoot tr td:nth-child(5) input[type="text"]').value = totalQuantity;
                document.querySelector('#new_registration tfoot tr td:nth-child(7) input[type="text"]').value = totalSupply;
                document.querySelector('#new_registration tfoot tr td:nth-child(8) input[type="text"]').value = totalVat;
                document.querySelector('#new_registration tfoot tr td:nth-child(9) input[type="text"]').value = totalSupply + totalVat;

                let tfootInputs = tfoot.querySelectorAll('input[type="text"]');
                tfootInputs.forEach(function (input) {
                    input.setAttribute('readonly', '');
                });
            }

            // '금액' 입력 필드에 이벤트 리스너를 추가
            let amountInputs = document.querySelectorAll('#new_registration tbody td:nth-child(8) input[type="text"]');
            amountInputs.forEach(function (input) {
                input.addEventListener('input', calculateTotal);
            });

            // 다시쓰기 누르면 테이블 내용 지워짐
            document.getElementById("new_registration_reset").addEventListener("click", function () {
                // 테이블의 tbody를 비웁니다.
                document.querySelector('#new_registration tbody').innerHTML = '';
                // 초기 행을 추가합니다.
                addRow();
            });

        });
        // 다시쓰기 후 없어진 행에 대해 새로은 행을 추가하는 함수
        function addRow() {
            let tbody = document.querySelector('#new_registration tbody');
            let row = document.createElement('tr');
            row.innerHTML = '\
            <td><input type="checkbox"></td>\
            <td><input type="text" class="text"></td>\
            <td><input type="text" class="text"></td>\
            <td><input type="text" class="text"></td>\
            <td><input type="text" class="text"></td>\
            <td><input type="text" class="text" readonly></td>\
            <td><input type="text" class="text" readonly></td>\
            <td><input type="text" class="text" readonly></td>\
            <td><input type="text" class="text" readonly></td>';
            tbody.append(row);
            // 새 행에 이벤트 리스너 추가
            addEventListenerToItemCodeInputs();
        }

     


        // 합계를 계산하고 'tfoot' 섹션에 표시하는 함수
        function calculateTotal() {
            let rows = document.querySelectorAll('#new_registration tbody tr');
            let total = 0;
            rows.forEach(function (row) {
                let amount = row.querySelector('td:nth-child(8) input[type="text"]').value;
                total += Number(amount || 0);
            });
            document.querySelector('#new_registration tfoot tr td:nth-child(8) input[type="text"]').value = total;
        }




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

        // new_register 신규등록 관련
        window.addEventListener('load', function () {
            // 열기
            document.getElementById("new_register").addEventListener("click", function () {
                registration_pop.style.display = "block";
            });
            document.getElementById("registration_pop_close").addEventListener("click", function () {
                registration_pop.style.display = "none";
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


        // 팝업 이동 jquery
        $(function () {
            $(".div_pop").draggable();

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
                        showAlert('금일 이후의 날짜는 설정할 수 없습니다');
                        $(".datepicker").val('');
                    }
                }
            });
        });



    </script>

</head>
<body>
	<%@ include file="../mainheader.jsp"%>
	
	<div id="main_header">
		<div id="list_title">구매조회/입력</div>
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

	<!-- 메인시작 -->
	<div id="main_content">
		<div id="nav">
			<ul id="nav_ul">
				<li>전체</li>
				<li>결재중</li>
				<li>미확인</li>
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
					<button type="button" class="button_basic">검색</button>
				</div>
			</div>
		</div>
		<table id="main_board">
			<!-- 테이블 너비 조절 -->
			<colgroup>
				<col style="width: 5%" />
				<col style="width: 10%" />
				<col style="width: 10%" />
				<col style="width: 25%" />
				<col style="width: 10%" />
				<col style="width: 10%" />
				<col style="width: 10%" />
				<col style="width: 10%" />
				<col style="width: 10%" />
			</colgroup>
			<thead>
				<tr>
					<th><input type="checkbox"></th>
					<th>구매번호</th>
					<th>거래처</th>
					<th>품목</th>
					<th>공급가액합계</th>
					<th>부가세합계</th>
					<th>금액</th>
					<th>진행상태</th>
					<th>인쇄</th>
				</tr>
			</thead>
			<tbody>
				<!-- 게시물 추가 예정 -->
			</tbody>

		</table>
	</div>
	<div id="main_button">
		<!-- 신규등록 및 수정버튼-->
		<button id="new_register" class="change_button">신규등록</button>
		<button id="edit" class="change_button">수정하기</button>
		<button id="delete" class="change_button">선택삭제</button>
	</div>




	<!-- 구매입력(구매등록) pop -->
	<div id="registration_pop" class="div_pop">
		<div id="registration_pop_title">구매입력</div>
		<div id="pop_title">구매입력</div>
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
			</ul>


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
						<col style="width: 10%" />
						<col style="width: 10%" />
						<col style="width: 10%" />
					</colgroup>
					<thead>
						<tr>
							<th><input type="checkbox"></th>
							<th>품목코드</th>
							<th>품목명</th>
							<th>품목규격</th>
							<th>수량</th>
							<th>단가</th>
							<th>공급가액</th>
							<th>부가세</th>
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
							<td><input type="text" class="text" readonly></td>
							<td><input type="text" class="text" readonly></td>
							<td><input type="text" class="text" readonly></td>
							<td><input type="text" class="text" readonly></td>
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
							<td><input type="text" class="text" readonly></td>
							<td><input type="text" class="text" readonly></td>
							<td><input type="text" class="text" readonly></td>
						</tr>
					</tfoot>
				</table>
			</div>
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




	<!--  사원 검색 div_pop -->
	<div id="employee_search_pop" class="div_pop">
		<div id="employee_search_title">사원검색</div>
		<div id="employee_search_head">
			<div id="employee_search_head_left">사원검색</div>
			<div id="employee_search_head_right">
				<input type="text" placeholder="사원검색">
				<button type="button">search</button>
			</div>
		</div>
		<div id="employee_table_wrap">
			<table id="employee_search_table">
				<colgroup>
					<col style="width: 50%" />
					<col style="width: 50%" />
				</colgroup>
				<thead>
					<tr>
						<th>사원코드</th>
						<th>사원명</th>
					</tr>
				</thead>
				<tbody>
					<!-- 데이터 추가 예정 -->
				</tbody>
			</table>
		</div>

		<div id="employee_search_pop_button">
			<button type="button" id="new_employee_register_register_button"
				class="change_button">신규</button>
			<button type="button" id="employee_search_pop_close"
				class="button_basic">닫기</button>
		</div>
	</div>
	<!-- 신규사원 사원등록 추가 div -->
	<div id="new_employee_pop" class="div_pop">
		<div id="new_employee_pop_title">사원(담당)등록</div>
		<div class="pop_head_wrap">
			<div id="new_employee_pop_head">사원(담당)등록</div>
		</div>
		<div class="content_wrap">
			<ul class="ul_wrap">
				<li>
					<div class="title" id="employee_code">
						사원(담당)코드
						<div class="title_option">
							<input type="text" placeholder="사원코드">
						</div>
					</div>
				</li>
				<li>
					<div class="title" id="employee_name">
						사원(담당)명
						<div class="title_option">
							<input type="text" placeholder="사원명">
						</div>
					</div>
				</li>
				<li>
					<div class="title" id="manager_email">
						담당자이메일
						<div class="title_option">
							<input type="text" placeholder="담당자이메일">
						</div>
					</div>
				</li>
				<li>
					<div class="title" id="manager_code">
						담당코드
						<div class="title_option" id="code_radio">
							<input type="radio" name="code_in_charge">구매 <input
								type="radio" name="code_in_charge">판매
						</div>
					</div>
				</li>
				<li>
					<div class="title" id="manager_email">
						담당자연락처
						<div class="title_option">
							<input type="text" placeholder="담당자연락처">
						</div>
					</div>
				</li>
			</ul>
		</div>


		<div id="new_employee_pop_button">
			<button type="button" id="employee_save_button" class="change_button">저장</button>
			<button type="button" id="new_employee_pop_close_reset"
				class="button_basic">다시작성</button>
			<button type="button" id="new_employee_pop_close"
				class="button_basic">닫기</button>
		</div>
	</div>

	<!-- 품목검색 div 품목 input칸을 더블클릭하면 pop-up생성 -->
	<div id="item_search_pop" class="div_pop">
		<div id="item_search_pop_title">품목검색</div>
		<div id="item_search_pop_head">
			<div id="item_search_pop_head_left">품목검색</div>
			<div id="item_search_pop_head_right">
				<input type="text" style="width: 95%;" placeholder="입력 후 [Enter]">
				<button type="button">search</button>
			</div>
		</div>
		<div id="item_search_pop_wrap">
			<table id="item_search_pop_table">
				<colgroup>

				</colgroup>
				<thead>
					<!-- 데이터 추가예정 -->
				</thead>
				<tbody>
					<!-- 데이터 추가 예정 -->
				</tbody>
			</table>
		</div>

		<div id="item_search_pop_button">
			<button type="button" id="item_search_pop_close" class="button_basic">닫기</button>
		</div>
	</div>
	<!-- alert -->
	<div id="alert_div" class="div_pop">
		<div id="alert_title" class="alert_hidden">알림</div>
		<div class="alert_content" id="alert_message">내용</div>
		<div id="alert_button">
			<button id="alert_close" class="button_basic">확인</button>
		</div>
	</div>


	<!-- 메인  box 끝나는 div -->
	</div>
	<div id="footer">
		<!-- 페이지 넘버 , 페이지네이션 추가예정, 1차는 기본 박스로 -->
		<div id="pagination">
			<ul class="page-box">
				<li><<</li>
				<li>1</li>
				<li>>></li>
			</ul>
		</div>
	</div>
</body>
</html>