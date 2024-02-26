<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<jsp lang="ko">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>MainPage</title>
    <link rel="stylesheet" href="../css/styles.css">
    <script src="../js/script.js"></script>
</head>
<style>

</style>

<body>
    <div class="main_box">
        <!-- <div class="left-box"> -->
        <div id="header">
            <ul>
                <li id="li_icon">
                    <a href="../mainPage.jsp"><img src="../img/logo.png" id="icon"></a>
                </li>
                <li id="li_search">
                    <div id="search">
                        <div id="search_size">
                            <input type="text" id="search_txt" value="" placeholder="검색어를 입력해 주세요">
                        </div>
                        <div id="search_img">
                            <img src="../img/search.avif" id="search_img1">
                        </div>
                    </div>
                </li>
                <li id="li_user_icon">
                    <img src="../img/images.png" id="user_icon">
                </li>
            </ul>
        </div>
        <div id="menu_board">
            <div><a href="../group/project_calendar.jsp">그룹웨어</a></div>
            <div id="moniter">
                모니터링
            </div>
            <div id="standard">
                공정기준정보
            </div>
            <div id="plan">
                생산계획관리
            </div>

            <div id="performance">
                생산실적관리
            </div>
            <div id="prediction">
                예측분석관리

            </div>
            <div id="inventory">재고관리</div>
            <div id="store">
                입고관리
            </div>
        </div>
        <div id="monitering">
            <div id="moniter1"><a href="../monitoring/monitoring_equipment.jsp">모니터링(장비)</a></div>
            <div id="moniter2"><a href="../monitoring/project_operationRate.jsp">가동률현황</a></div>
            <div id="moniter3"><a href="../monitoring/project_downtimeRate.jsp">비가동현황</a></div>
            <div id="moniter4"><a href="../monitoring/monitoring_reflow.jsp">리플로우(온도)</a></div>
        </div>
        <div id="criteria">
            <div id="standard1"><a href="../process/process_code.jsp">공정코드관리</a></div>
            <div id="standard2"><a href="../process/process_produce.jsp">작업표준서</a></div>
            <div id="standard3"><a href="../process/process_equipment.jsp">장비정보관리</a></div>
            <div id="standard4"><a href="../process/process_part.jsp">부품정보관리</a></div>
        </div>
        <div id="planning">
            <div id="planning1"><a href="../productionplan/equipment_plan.jsp">생산장비 계획관리</a></div>
            <div id="planning3"><a href="../productionplan/employee_schedule.jsp">작업자별 일정현황</a></div>
            <div id="planning2"><a href="../productionplan/production_plan_detail.jsp">세부공정생산 계획관리</a></div>
            <div id="planning4"><a href="../productionplan/work_order_management.jsp">공정별 작업지시 관리</a></div>
        </div>
        <div id="performing">
            <div id="perform1"><a href="../productionperf/production_performance_chart.jsp">생산계획대비 실적현황</a></div>
            <div id="perform2"><a href="../productionperf/work_order_performance_chart.jsp">작업지시대비 실적현황</a></div>
            <div id="perform3"><a href="../productionperf/equipment_production_performance_chart.jsp">장비별 생산실적현황</a></div>
        </div>
        <div id="predicting">
            <div id="predicting1"><a href="../prediction/prediction_producting.jsp">생산량 예측분석</a></div>
            <div id="predicting2"><a href="../prediction/prediction_quality.jsp">부품 결함예측</a></div>
            <div id="predicting3"><a href="../prediction/prediction_quality_good.jsp">부품 품질예측</a></div>
        </div>
        <div id="invent">
            <div id="invent1"><a href="../jaegogwanli/inventory_management.jsp">재고현황</a></div>
            <div id="invent2"><a href="../jaegogwanli/outgoing.jsp">출하조회/입력</a></div>
            <div id="invent3"><a href="../jaegogwanli/outgoing_directions.jsp">출하지시서 조회/입력</a></div>
        </div>
        <div id="storing">
            <div id="storing1"><a href="../ibgogwanli/purchase.jsp">구매조회/입력</a></div>
            <div id="storing2"><a href="../ibgogwanli/item_registration.jsp">품목별단가조회 및 변경</a></div>
            <div id="storing3"><a href="../ibgogwanli/customerList.jsp">거래처 관리/등록</a></div>
        </div>
        
        