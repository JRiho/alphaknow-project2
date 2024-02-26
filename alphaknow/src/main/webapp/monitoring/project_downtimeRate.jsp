<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>MainPage</title>
    <link rel="stylesheet" href="../css/downtimeRate.css">
    <script src="../js/downtimeRate.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
</head>
<style>

</style>

<body>

    <%@ include file="../mainheader.jsp"%>

        <div id="content">
            <div id="downtime_menu">
                <button type="button" class="toggleButton" data-target="PCB 로더">
                    PCB 로더
                </button>
                <button type="button" class="toggleButton" data-target="솔더 프린팅">
                    솔더 프린팅
                </button>
                <button type="button" class="toggleButton" data-target="SPI (솔더 페이스트 검사기)">
                    SPI
                </button>
                <button type="button" class="toggleButton" data-target="칩 마운터">
                    칩 마운터
                </button>
                <button type="button" class="toggleButton" data-target="리플로우 솔더링">
                    리플로우 솔더링
                </button>
                <button type="button" class="toggleButton" data-target="자동광학검사">
                    자동광학검사
                </button>
                <button type="button" class="toggleButton" data-target="PCB 언로더">
                    PCB 언로더
                </button>
            </div>

            <div id="equip_downtime">

                <div id="downtime_info">
                    <select id="downtime_date">
                        <option value="통계 날짜">통계 날짜</option>
                    </select>
                </div>

                <div id="downtime_chart">
                    <canvas id="downtime_pie" width="500" height="581"></canvas>
                </div>

                <div id="operationStats">
                    <p>가동률: <span id="operatingRate"></span></p>
                    <p>비가동률: <span id="downtimeRate"></span></p>
                    <p>총 작동시간: <span id="totalOperationTime"></span></p>
                </div>

                <div id="downtime_reason">
                    <p>준비시간 99.0%</p>
                    <p>장비고장 0.1%</p>
                    <p>청소(계획/비계획) 0.5%</p>
                    <p>이상대기 0.4%</p>
                </div>
            </div>
        </div>

</body>

</html>