<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>MainPage</title>
    <link rel="stylesheet" href="../css/work_order_management.css">
    <script src="../js/work_order_management.js"></script>
</head>
<style>

</style>

<body>

    <%@ include file="../mainheader.jsp"%>
        <div id="content">
            
                <!-- div id="headerj" 시작 -->
    <div id="headerj">
        공정별작업지시관리
    </div>
    <!-- div id="headerj" 끝 -->




    <!-- updiv -->
    <div class="updiv">





        <!-- task_order_status_header_div -->
        <div id="task_order_status_header_div">
            <!-- task_order_status_header_text -->
            <div id="task_order_status_header_text">
                작업지시대기현황
            </div>
            <!-- task_order_status_header_text -->
            <!-- btn_req_div -->
            <div id="btn_warp">
                <button type="button" id="btn_req_sel">선택작업 지시</button>

                <button type="button" id="btn_req_all">모든작업 지시</button>
            </div>
            <!-- btn_req_div 끝 -->
        </div>
        <!-- task_order_status_header_div -->

        <!-- task_order_status_div -->
        <div id="task_order_status_div">
            <!-- task_order_status_table -->
            <table id="task_order_status_table">
                <!-- thead -->
                <thead id="task_order_status_table_thead">

                </thead>

                <!-- tbody -->
                <tbody id="task_order_status_table_tbody">

                </tbody>
            </table>
            <!-- task_order_status_table 끝 -->
        </div>
        <!-- task_order_status_div 끝 -->






    </div>
    <!-- updiv 끝 -->






    <!-- 중앙 구분선 -->
    <div id="center_line">
    </div>
    <!-- 중앙 구분선 끝 -->









    <!-- downdiv -->
    <div class="downdiv">





        <!-- task_order_header_div -->
        <div id="task_order_header_div">
            <!-- task_order_header_text -->
            <div id="task_order_header_text">
                작업지시현황
            </div>
            <!-- task_order_header_text -->
            <!-- btn_warp_2 -->
            <div id="btn_warp_2">
                작업순서변경
                <button type="button" id="btn_up">▲</button>
                <button type="button" id="btn_down">▼</button>
                <button type="button" id="btn_cancel">선택작업 취소</button>

                <button type="button" id="btn_accept">선택작업 확정</button>

                <button type="button" id="btn_accept_all">모든작업 지시</button>
            </div>
            <!-- btn_warp_2 끝 -->
        </div>
        <!-- task_order_header_div -->

        <!-- task_order_div -->
        <div id="task_order_div">
            <!-- task_order_table -->
            <table id="task_order_table">
                <!-- thead -->
                <thead id="task_order_table_thead">

                </thead>

                <!-- tbody -->
                <tbody id="task_order_table_tbody">

                </tbody>
            </table>
            <!-- task_order_table 끝 -->
        </div>
        <!-- task_orders_div 끝 -->






    </div>
    <!-- downdiv 끝 -->

        </div>
</body>

</html>