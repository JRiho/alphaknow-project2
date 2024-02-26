// table1

    // 테이블 생성 이벤트
    window.addEventListener("load", function () {
        let thead = document.querySelector("#plan_req_table_thead");

        let rowCount1 = 1;
        let colCount1 = 11;

        for (let i = 1; i <= rowCount1; i++) {
            let tr = document.createElement('tr');
            thead.appendChild(tr);
            for (let j = 1; j <= colCount1; j++) {
                let th = document.createElement('th');
                tr.appendChild(th);
                th.setAttribute("id", `table1_1_${j}`);
            }
        }


        // 요일 컬럼
        let rowCount1_1 = 1;
        let colCount1_1 = 14;


        for (let i = 1; i <= rowCount1_1; i++) {
            let tr = document.createElement('tr');
            thead.appendChild(tr);
            for (let j = 1; j <= colCount1_1; j++) {
                let th = document.createElement('th');
                tr.appendChild(th);
                th.setAttribute("id", `table1_1_${j + 11}`);
            }
        }






        let tbody = document.querySelector("#plan_req_table_tbody")

        let rowCount2 = 12;
        let colCount2 = 23;

        for (let i = 1; i <= rowCount2; i++) {
            let tr = document.createElement('tr');
            tbody.appendChild(tr);
            for (let j = 1; j <= colCount2; j++) {
                let td = document.createElement('td');
                tr.appendChild(td);
                td.setAttribute("id", `table1_${i + 1}_${j}`);
            }
        }

        // 체크박스 추가, 중앙정렬, 순번 번호 추가, 중앙정렬
        for (let k = 2; k <= rowCount2 + 1; k++) {
            let checkbox = document.createElement("input");
            checkbox.type = "checkbox";
            checkbox.classList.add("table1_chkChild");
            checkbox.setAttribute("id", "table1_chkChild" + (k - 1));


            document.querySelector("#table1_" + k + "_2").appendChild(checkbox);
            // 체크박스 중앙정렬
            document.querySelector("#table1_" + k + "_2").style.cssText = "text-align: center";

            // 순번 번호 추가
            document.querySelector("#table1_" + k + "_1").appendChild(document.createTextNode(k - 1));
            // 순번 번호 중앙정렬
            document.querySelector("#table1_" + k + "_1").style.cssText = "text-align: center";
        }

    })

    // 컬럼명
    window.addEventListener("load", function () {
        document.querySelector("#table1_1_1").appendChild(document.createTextNode("순번"))
        document.querySelector("#table1_1_1").setAttribute('rowspan', '2')

        // checkbox 생성 ////////////////////////////////////////////////
        let checkbox = document.createElement("input");
        checkbox.type = "checkbox";
        checkbox.id = "table1_chkAll"
        /////////////////////////////////////////////////////////////////
        document.querySelector("#table1_1_2").appendChild(checkbox);
        document.querySelector("#table1_1_2").setAttribute('rowspan', '2')
        document.querySelector("#table1_1_3").appendChild(document.createTextNode("장비번호"))
        document.querySelector("#table1_1_3").setAttribute('rowspan', '2')
        document.querySelector("#table1_1_4").appendChild(document.createTextNode("장비명"))
        document.querySelector("#table1_1_4").setAttribute('rowspan', '2')
        document.querySelector("#table1_1_5").appendChild(document.createTextNode("가동계획시간(분)"))
        document.querySelector("#table1_1_5").setAttribute('colspan', '7')
        document.querySelector("#table1_1_6").appendChild(document.createTextNode("누적가동시간"))
        document.querySelector("#table1_1_6").setAttribute('rowspan', '2')
        document.querySelector("#table1_1_7").appendChild(document.createTextNode("계획생산량(EA)"))
        document.querySelector("#table1_1_7").setAttribute('colspan', '7')
        document.querySelector("#table1_1_8").appendChild(document.createTextNode("누적생산량"))
        document.querySelector("#table1_1_8").setAttribute('rowspan', '2')
        document.querySelector("#table1_1_9").appendChild(document.createTextNode("최근점검일"))
        document.querySelector("#table1_1_9").setAttribute('rowspan', '2')
        document.querySelector("#table1_1_10").appendChild(document.createTextNode("장비책임자"))
        document.querySelector("#table1_1_10").setAttribute('rowspan', '2')
        document.querySelector("#table1_1_11").appendChild(document.createTextNode("상태"))
        document.querySelector("#table1_1_11").setAttribute('rowspan', '2')




        document.querySelector("#table1_1_12").appendChild(document.createTextNode("월"))
        document.querySelector("#table1_1_13").appendChild(document.createTextNode("화"))
        document.querySelector("#table1_1_14").appendChild(document.createTextNode("수"))
        document.querySelector("#table1_1_15").appendChild(document.createTextNode("목"))
        document.querySelector("#table1_1_16").appendChild(document.createTextNode("금"))
        document.querySelector("#table1_1_17").appendChild(document.createTextNode("토"))
        document.querySelector("#table1_1_18").appendChild(document.createTextNode("일"))


        document.querySelector("#table1_1_19").appendChild(document.createTextNode("월"))
        document.querySelector("#table1_1_20").appendChild(document.createTextNode("화"))
        document.querySelector("#table1_1_21").appendChild(document.createTextNode("수"))
        document.querySelector("#table1_1_22").appendChild(document.createTextNode("목"))
        document.querySelector("#table1_1_23").appendChild(document.createTextNode("금"))
        document.querySelector("#table1_1_24").appendChild(document.createTextNode("토"))
        document.querySelector("#table1_1_25").appendChild(document.createTextNode("일"))
    })

    // 장비 추가
    window.addEventListener("load", function () {
        document.querySelector("#table1_2_3").appendChild(document.createTextNode("HM-300-1"))
        document.querySelector("#table1_2_4").appendChild(document.createTextNode("PCB LOADER/UNLOADER"))
        document.querySelector("#table1_2_5").appendChild(document.createTextNode("720"))
        document.querySelector("#table1_2_6").appendChild(document.createTextNode("720"))
        document.querySelector("#table1_2_7").appendChild(document.createTextNode("720"))
        document.querySelector("#table1_2_8").appendChild(document.createTextNode("720"))
        document.querySelector("#table1_2_9").appendChild(document.createTextNode("720"))
        document.querySelector("#table1_2_10").appendChild(document.createTextNode("360"))
        document.querySelector("#table1_2_11").appendChild(document.createTextNode("360"))
        document.querySelector("#table1_2_12").appendChild(document.createTextNode("220160"));
        document.querySelector("#table1_2_13").appendChild(document.createTextNode("4800"));
        document.querySelector("#table1_2_14").appendChild(document.createTextNode("4800"));
        document.querySelector("#table1_2_15").appendChild(document.createTextNode("4800"));
        document.querySelector("#table1_2_16").appendChild(document.createTextNode("4800"));
        document.querySelector("#table1_2_17").appendChild(document.createTextNode("4800"));
        document.querySelector("#table1_2_18").appendChild(document.createTextNode("2400"));
        document.querySelector("#table1_2_19").appendChild(document.createTextNode("2400"));
        document.querySelector("#table1_2_20").appendChild(document.createTextNode("1497600"));
        document.querySelector("#table1_2_21").appendChild(document.createTextNode("2023-12-04"));
        document.querySelector("#table1_2_22").appendChild(document.createTextNode("하은성"));
        document.querySelector("#table1_2_23").appendChild(document.createTextNode("정상"));


        document.querySelector("#table1_3_3").appendChild(document.createTextNode("HM-300-2"))
        document.querySelector("#table1_3_4").appendChild(document.createTextNode("PCB LOADER/UNLOADER"))
        document.querySelector("#table1_3_5").appendChild(document.createTextNode("720"))
        document.querySelector("#table1_3_6").appendChild(document.createTextNode("720"))
        document.querySelector("#table1_3_7").appendChild(document.createTextNode("720"))
        document.querySelector("#table1_3_8").appendChild(document.createTextNode("720"))
        document.querySelector("#table1_3_9").appendChild(document.createTextNode("720"))
        document.querySelector("#table1_3_10").appendChild(document.createTextNode("360"))
        document.querySelector("#table1_3_11").appendChild(document.createTextNode("360"))
        document.querySelector("#table1_3_12").appendChild(document.createTextNode("220160"))
        document.querySelector("#table1_3_13").appendChild(document.createTextNode("4800"))
        document.querySelector("#table1_3_14").appendChild(document.createTextNode("4800"))
        document.querySelector("#table1_3_15").appendChild(document.createTextNode("4800"))
        document.querySelector("#table1_3_16").appendChild(document.createTextNode("4800"))
        document.querySelector("#table1_3_17").appendChild(document.createTextNode("4800"))
        document.querySelector("#table1_3_18").appendChild(document.createTextNode("2400"))
        document.querySelector("#table1_3_19").appendChild(document.createTextNode("2400"))
        document.querySelector("#table1_3_20").appendChild(document.createTextNode("1497600"))
        document.querySelector("#table1_3_21").appendChild(document.createTextNode("2024-02-05"))
        document.querySelector("#table1_3_22").appendChild(document.createTextNode("지하운"))
        document.querySelector("#table1_3_23").appendChild(document.createTextNode("정상"));

        document.querySelector("#table1_4_3").appendChild(document.createTextNode("US-1113X-1"))
        document.querySelector("#table1_4_4").appendChild(document.createTextNode("solder printing"))
        document.querySelector("#table1_4_5").appendChild(document.createTextNode("720"));
        document.querySelector("#table1_4_6").appendChild(document.createTextNode("720"));
        document.querySelector("#table1_4_7").appendChild(document.createTextNode("720"));
        document.querySelector("#table1_4_8").appendChild(document.createTextNode("720"));
        document.querySelector("#table1_4_9").appendChild(document.createTextNode("720"));
        document.querySelector("#table1_4_10").appendChild(document.createTextNode("360"));
        document.querySelector("#table1_4_11").appendChild(document.createTextNode("360"));
        document.querySelector("#table1_4_12").appendChild(document.createTextNode("220160"));
        document.querySelector("#table1_4_13").appendChild(document.createTextNode("480"));
        document.querySelector("#table1_4_14").appendChild(document.createTextNode("480"));
        document.querySelector("#table1_4_15").appendChild(document.createTextNode("480"));
        document.querySelector("#table1_4_16").appendChild(document.createTextNode("480"));
        document.querySelector("#table1_4_17").appendChild(document.createTextNode("480"));
        document.querySelector("#table1_4_18").appendChild(document.createTextNode("240"));
        document.querySelector("#table1_4_19").appendChild(document.createTextNode("240"));
        document.querySelector("#table1_4_20").appendChild(document.createTextNode("149760"));
        document.querySelector("#table1_4_21").appendChild(document.createTextNode("2024-01-03"));
        document.querySelector("#table1_4_22").appendChild(document.createTextNode("염인성"));
        document.querySelector("#table1_4_23").appendChild(document.createTextNode("정상"));

        document.querySelector("#table1_5_3").appendChild(document.createTextNode("US-1113X-2"))
        document.querySelector("#table1_5_4").appendChild(document.createTextNode("solder printing"))
        document.querySelector("#table1_5_5").appendChild(document.createTextNode("720"));
        document.querySelector("#table1_5_6").appendChild(document.createTextNode("720"));
        document.querySelector("#table1_5_7").appendChild(document.createTextNode("720"));
        document.querySelector("#table1_5_8").appendChild(document.createTextNode("720"));
        document.querySelector("#table1_5_9").appendChild(document.createTextNode("720"));
        document.querySelector("#table1_5_10").appendChild(document.createTextNode("360"));
        document.querySelector("#table1_5_11").appendChild(document.createTextNode("360"));
        document.querySelector("#table1_5_12").appendChild(document.createTextNode("220160"));
        document.querySelector("#table1_5_13").appendChild(document.createTextNode("480"));
        document.querySelector("#table1_5_14").appendChild(document.createTextNode("480"));
        document.querySelector("#table1_5_15").appendChild(document.createTextNode("480"));
        document.querySelector("#table1_5_16").appendChild(document.createTextNode("480"));
        document.querySelector("#table1_5_17").appendChild(document.createTextNode("480"));
        document.querySelector("#table1_5_18").appendChild(document.createTextNode("240"));
        document.querySelector("#table1_5_19").appendChild(document.createTextNode("240"));
        document.querySelector("#table1_5_20").appendChild(document.createTextNode("149760"));
        document.querySelector("#table1_5_21").appendChild(document.createTextNode("2023-11-28"));
        document.querySelector("#table1_5_22").appendChild(document.createTextNode("김민수"));
        document.querySelector("#table1_5_23").appendChild(document.createTextNode("점검필요"));


        document.querySelector("#table1_6_3").appendChild(document.createTextNode("Hmzenith-1"))
        document.querySelector("#table1_6_4").appendChild(document.createTextNode("SPI"))
        document.querySelector("#table1_6_5").appendChild(document.createTextNode("1200"));
        document.querySelector("#table1_6_6").appendChild(document.createTextNode("1200"));
        document.querySelector("#table1_6_7").appendChild(document.createTextNode("1200"));
        document.querySelector("#table1_6_8").appendChild(document.createTextNode("1200"));
        document.querySelector("#table1_6_9").appendChild(document.createTextNode("1200"));
        document.querySelector("#table1_6_10").appendChild(document.createTextNode("600"));
        document.querySelector("#table1_6_11").appendChild(document.createTextNode("600"));
        document.querySelector("#table1_6_12").appendChild(document.createTextNode("360000"));
        document.querySelector("#table1_6_13").appendChild(document.createTextNode("800"));
        document.querySelector("#table1_6_14").appendChild(document.createTextNode("800"));
        document.querySelector("#table1_6_15").appendChild(document.createTextNode("800"));
        document.querySelector("#table1_6_16").appendChild(document.createTextNode("800"));
        document.querySelector("#table1_6_17").appendChild(document.createTextNode("800"));
        document.querySelector("#table1_6_18").appendChild(document.createTextNode("400"));
        document.querySelector("#table1_6_19").appendChild(document.createTextNode("400"));
        document.querySelector("#table1_6_20").appendChild(document.createTextNode("250880"));
        document.querySelector("#table1_6_21").appendChild(document.createTextNode("2024-01-21"));
        document.querySelector("#table1_6_22").appendChild(document.createTextNode("이수진"));
        document.querySelector("#table1_6_23").appendChild(document.createTextNode("정상"));


        document.querySelector("#table1_7_3").appendChild(document.createTextNode("Hmzenith-2"))
        document.querySelector("#table1_7_4").appendChild(document.createTextNode("SPI"))
        document.querySelector("#table1_7_5").appendChild(document.createTextNode("1200"));
        document.querySelector("#table1_7_6").appendChild(document.createTextNode("1200"));
        document.querySelector("#table1_7_7").appendChild(document.createTextNode("1200"));
        document.querySelector("#table1_7_8").appendChild(document.createTextNode("1200"));
        document.querySelector("#table1_7_9").appendChild(document.createTextNode("1200"));
        document.querySelector("#table1_7_10").appendChild(document.createTextNode("600"));
        document.querySelector("#table1_7_11").appendChild(document.createTextNode("600"));
        document.querySelector("#table1_7_12").appendChild(document.createTextNode("360000"));
        document.querySelector("#table1_7_13").appendChild(document.createTextNode("800"));
        document.querySelector("#table1_7_14").appendChild(document.createTextNode("800"));
        document.querySelector("#table1_7_15").appendChild(document.createTextNode("800"));
        document.querySelector("#table1_7_16").appendChild(document.createTextNode("800"));
        document.querySelector("#table1_7_17").appendChild(document.createTextNode("800"));
        document.querySelector("#table1_7_18").appendChild(document.createTextNode("400"));
        document.querySelector("#table1_7_19").appendChild(document.createTextNode("400"));
        document.querySelector("#table1_7_20").appendChild(document.createTextNode("250880"));
        document.querySelector("#table1_7_21").appendChild(document.createTextNode("2023-08-25"));
        document.querySelector("#table1_7_22").appendChild(document.createTextNode("박지윤"));
        document.querySelector("#table1_7_23").appendChild(document.createTextNode("점검필요"));

        document.querySelector("#table1_8_3").appendChild(document.createTextNode("HM520W HP-1"))
        document.querySelector("#table1_8_4").appendChild(document.createTextNode("Chip Mounter"))
        document.querySelector("#table1_8_5").appendChild(document.createTextNode("1200"));
        document.querySelector("#table1_8_6").appendChild(document.createTextNode("1200"));
        document.querySelector("#table1_8_7").appendChild(document.createTextNode("1200"));
        document.querySelector("#table1_8_8").appendChild(document.createTextNode("1200"));
        document.querySelector("#table1_8_9").appendChild(document.createTextNode("1200"));
        document.querySelector("#table1_8_10").appendChild(document.createTextNode("600"));
        document.querySelector("#table1_8_11").appendChild(document.createTextNode("600"));
        document.querySelector("#table1_8_12").appendChild(document.createTextNode("360000"));
        document.querySelector("#table1_8_13").appendChild(document.createTextNode("480"));
        document.querySelector("#table1_8_14").appendChild(document.createTextNode("480"));
        document.querySelector("#table1_8_15").appendChild(document.createTextNode("480"));
        document.querySelector("#table1_8_16").appendChild(document.createTextNode("480"));
        document.querySelector("#table1_8_17").appendChild(document.createTextNode("480"));
        document.querySelector("#table1_8_18").appendChild(document.createTextNode("240"));
        document.querySelector("#table1_8_19").appendChild(document.createTextNode("240"));
        document.querySelector("#table1_8_20").appendChild(document.createTextNode("149760"));
        document.querySelector("#table1_8_21").appendChild(document.createTextNode("2023-11-21"));
        document.querySelector("#table1_8_22").appendChild(document.createTextNode("김황산"));
        document.querySelector("#table1_8_23").appendChild(document.createTextNode("정상"));

        document.querySelector("#table1_9_3").appendChild(document.createTextNode("HM520W HP-2"))
        document.querySelector("#table1_9_4").appendChild(document.createTextNode("Chip Mounter"))
        document.querySelector("#table1_9_5").appendChild(document.createTextNode("1200"));
        document.querySelector("#table1_9_6").appendChild(document.createTextNode("1200"));
        document.querySelector("#table1_9_7").appendChild(document.createTextNode("1200"));
        document.querySelector("#table1_9_8").appendChild(document.createTextNode("1200"));
        document.querySelector("#table1_9_9").appendChild(document.createTextNode("1200"));
        document.querySelector("#table1_9_10").appendChild(document.createTextNode("600"));
        document.querySelector("#table1_9_11").appendChild(document.createTextNode("600"));
        document.querySelector("#table1_9_12").appendChild(document.createTextNode("360000"));
        document.querySelector("#table1_9_13").appendChild(document.createTextNode("480"));
        document.querySelector("#table1_9_14").appendChild(document.createTextNode("480"));
        document.querySelector("#table1_9_15").appendChild(document.createTextNode("480"));
        document.querySelector("#table1_9_16").appendChild(document.createTextNode("480"));
        document.querySelector("#table1_9_17").appendChild(document.createTextNode("480"));
        document.querySelector("#table1_9_18").appendChild(document.createTextNode("240"));
        document.querySelector("#table1_9_19").appendChild(document.createTextNode("240"));
        document.querySelector("#table1_9_20").appendChild(document.createTextNode("149760"));
        document.querySelector("#table1_9_21").appendChild(document.createTextNode("2023-07-28"));
        document.querySelector("#table1_9_22").appendChild(document.createTextNode("이은정"));
        document.querySelector("#table1_9_23").appendChild(document.createTextNode("점검필요"));

        document.querySelector("#table1_10_3").appendChild(document.createTextNode("1080 mkv-e-1"))
        document.querySelector("#table1_10_4").appendChild(document.createTextNode("Reflow Soldering"))
        document.querySelector("#table1_10_5").appendChild(document.createTextNode("1200"));
        document.querySelector("#table1_10_6").appendChild(document.createTextNode("1200"));
        document.querySelector("#table1_10_7").appendChild(document.createTextNode("1200"));
        document.querySelector("#table1_10_8").appendChild(document.createTextNode("1200"));
        document.querySelector("#table1_10_9").appendChild(document.createTextNode("1200"));
        document.querySelector("#table1_10_10").appendChild(document.createTextNode("600"));
        document.querySelector("#table1_10_11").appendChild(document.createTextNode("600"));
        document.querySelector("#table1_10_12").appendChild(document.createTextNode("360000"));
        document.querySelector("#table1_10_13").appendChild(document.createTextNode("10000"));
        document.querySelector("#table1_10_14").appendChild(document.createTextNode("10000"));
        document.querySelector("#table1_10_15").appendChild(document.createTextNode("10000"));
        document.querySelector("#table1_10_16").appendChild(document.createTextNode("10000"));
        document.querySelector("#table1_10_17").appendChild(document.createTextNode("10000"));
        document.querySelector("#table1_10_18").appendChild(document.createTextNode("5000"));
        document.querySelector("#table1_10_19").appendChild(document.createTextNode("5000"));
        document.querySelector("#table1_10_20").appendChild(document.createTextNode("3120000"));
        document.querySelector("#table1_10_21").appendChild(document.createTextNode("2023-11-19"));
        document.querySelector("#table1_10_22").appendChild(document.createTextNode("김학수"));
        document.querySelector("#table1_10_23").appendChild(document.createTextNode("수리필요"));


        document.querySelector("#table1_11_3").appendChild(document.createTextNode("1080 mkv-e-2"))
        document.querySelector("#table1_11_4").appendChild(document.createTextNode("Reflow Soldering"))
        document.querySelector("#table1_11_5").appendChild(document.createTextNode("1200"));
        document.querySelector("#table1_11_6").appendChild(document.createTextNode("1200"));
        document.querySelector("#table1_11_7").appendChild(document.createTextNode("1200"));
        document.querySelector("#table1_11_8").appendChild(document.createTextNode("1200"));
        document.querySelector("#table1_11_9").appendChild(document.createTextNode("1200"));
        document.querySelector("#table1_11_10").appendChild(document.createTextNode("600"));
        document.querySelector("#table1_11_11").appendChild(document.createTextNode("600"));
        document.querySelector("#table1_11_12").appendChild(document.createTextNode("360000"));
        document.querySelector("#table1_11_13").appendChild(document.createTextNode("10000"));
        document.querySelector("#table1_11_14").appendChild(document.createTextNode("10000"));
        document.querySelector("#table1_11_15").appendChild(document.createTextNode("10000"));
        document.querySelector("#table1_11_16").appendChild(document.createTextNode("10000"));
        document.querySelector("#table1_11_17").appendChild(document.createTextNode("10000"));
        document.querySelector("#table1_11_18").appendChild(document.createTextNode("5000"));
        document.querySelector("#table1_11_19").appendChild(document.createTextNode("5000"));
        document.querySelector("#table1_11_20").appendChild(document.createTextNode("3120000"));
        document.querySelector("#table1_11_21").appendChild(document.createTextNode("2023-06-22"));
        document.querySelector("#table1_11_22").appendChild(document.createTextNode("박지수"));
        document.querySelector("#table1_11_23").appendChild(document.createTextNode("점검필요"));

        document.querySelector("#table1_12_3").appendChild(document.createTextNode("AMF1234-1"))
        document.querySelector("#table1_12_4").appendChild(document.createTextNode("AOI 자동광학검사기"))
        document.querySelector("#table1_12_5").appendChild(document.createTextNode("480"));
        document.querySelector("#table1_12_6").appendChild(document.createTextNode("480"));
        document.querySelector("#table1_12_7").appendChild(document.createTextNode("480"));
        document.querySelector("#table1_12_8").appendChild(document.createTextNode("480"));
        document.querySelector("#table1_12_9").appendChild(document.createTextNode("480"));
        document.querySelector("#table1_12_10").appendChild(document.createTextNode("240"));
        document.querySelector("#table1_12_11").appendChild(document.createTextNode("240"));
        document.querySelector("#table1_12_12").appendChild(document.createTextNode("324000"));
        document.querySelector("#table1_12_13").appendChild(document.createTextNode("10000"));
        document.querySelector("#table1_12_14").appendChild(document.createTextNode("10000"));
        document.querySelector("#table1_12_15").appendChild(document.createTextNode("10000"));
        document.querySelector("#table1_12_16").appendChild(document.createTextNode("10000"));
        document.querySelector("#table1_12_17").appendChild(document.createTextNode("10000"));
        document.querySelector("#table1_12_18").appendChild(document.createTextNode("5000"));
        document.querySelector("#table1_12_19").appendChild(document.createTextNode("5000"));
        document.querySelector("#table1_12_20").appendChild(document.createTextNode("3120000"));
        document.querySelector("#table1_12_21").appendChild(document.createTextNode("2023-12-14"));
        document.querySelector("#table1_12_22").appendChild(document.createTextNode("이지수"))
        document.querySelector("#table1_12_23").appendChild(document.createTextNode("정상"));

        document.querySelector("#table1_13_3").appendChild(document.createTextNode("AMF1234-2"))
        document.querySelector("#table1_13_4").appendChild(document.createTextNode("AOI 자동광학검사기"))
        document.querySelector("#table1_13_5").appendChild(document.createTextNode("480"));
        document.querySelector("#table1_13_6").appendChild(document.createTextNode("480"));
        document.querySelector("#table1_13_7").appendChild(document.createTextNode("480"));
        document.querySelector("#table1_13_8").appendChild(document.createTextNode("480"));
        document.querySelector("#table1_13_9").appendChild(document.createTextNode("480"));
        document.querySelector("#table1_13_10").appendChild(document.createTextNode("240"));
        document.querySelector("#table1_13_11").appendChild(document.createTextNode("240"));
        document.querySelector("#table1_13_12").appendChild(document.createTextNode("324000"));
        document.querySelector("#table1_13_13").appendChild(document.createTextNode("10000"));
        document.querySelector("#table1_13_14").appendChild(document.createTextNode("10000"));
        document.querySelector("#table1_13_15").appendChild(document.createTextNode("10000"));
        document.querySelector("#table1_13_16").appendChild(document.createTextNode("10000"));
        document.querySelector("#table1_13_17").appendChild(document.createTextNode("10000"));
        document.querySelector("#table1_13_18").appendChild(document.createTextNode("5000"));
        document.querySelector("#table1_13_19").appendChild(document.createTextNode("5000"));
        document.querySelector("#table1_13_20").appendChild(document.createTextNode("3120000"));
        document.querySelector("#table1_13_21").appendChild(document.createTextNode("2023-12-31"));
        document.querySelector("#table1_13_22").appendChild(document.createTextNode("이명선"));
        document.querySelector("#table1_13_23").appendChild(document.createTextNode("정상"));

    })




    // 전체선택 이벤트
    window.addEventListener("load", function () {
        document.querySelector("#table1_chkAll").addEventListener("click", function (e) {

            if (document.querySelector("#table1_chkAll").checked == true) {
                document.querySelectorAll(".table1_chkChild").forEach(function (chkChild) {
                    chkChild.checked = true;
                })
            } else {
                document.querySelectorAll(".table1_chkChild").forEach(function (chkChild) {
                    chkChild.checked = false;
                })
            }

        })
    })

    // 선택 추가 이벤트
    window.addEventListener("load", function () {

        let checkboxes = document.querySelectorAll(".table1_chkChild");

        checkboxes.forEach(function (checkbox) {
            checkbox.addEventListener("click", function (e) {
                let allbox = checkboxes.length;
                let nowbox = 0;

                checkboxes.forEach(function (checkbox) {
                    if (checkbox.checked) {
                        nowbox++;
                    }
                });

                if (allbox == nowbox) {
                    document.querySelector("#table1_chkAll").checked = true;
                } else {
                    document.querySelector("#table1_chkAll").checked = false;
                }
            });
        });
    });












    // table2

    // 테이블 생성 이벤트
    window.addEventListener("load", function () {
        let thead = document.querySelector("#plan_accept_table_thead");

        let rowCount1 = 1;
        let colCount1 = 10;

        for (let i = 1; i <= rowCount1; i++) {
            let tr = document.createElement('tr');
            thead.appendChild(tr);
            for (let j = 1; j <= colCount1; j++) {
                let th = document.createElement('th');
                tr.appendChild(th);
                th.setAttribute("id", `table2_1_${j}`);
            }
        }

        let tbody = document.querySelector("#plan_accept_table_tbody")

        let rowCount2 = 15;
        let colCount2 = 10;

        for (let i = 1; i <= rowCount2; i++) {
            let tr = document.createElement('tr');
            tbody.appendChild(tr);
            for (let j = 1; j <= colCount2; j++) {
                let td = document.createElement('td');
                tr.appendChild(td);
                td.setAttribute("id", `table2_${i + 1}_${j}`);
            }
        }

        // 체크박스 추가, 중앙정렬, 순번 번호 추가, 중앙정렬
        for (let k = 2; k <= rowCount2 + 1; k++) {
            let checkbox = document.createElement("input");
            checkbox.type = "checkbox";
            checkbox.classList.add("table2_chkChild");

            document.querySelector("#table2_" + k + "_2").appendChild(checkbox);
            // 체크박스 중앙정렬
            document.querySelector("#table2_" + k + "_2").style.cssText = "text-align: center";

            // 순번 번호 추가
            document.querySelector("#table2_" + k + "_1").appendChild(document.createTextNode(k - 1));
            // 순번 번호 중앙정렬
            document.querySelector("#table2_" + k + "_1").style.cssText = "text-align: center";
        }

    })

    // 컬럼명
    window.addEventListener("load", function () {
        document.querySelector("#table2_1_1").appendChild(document.createTextNode("순번"))

        // checkbox 생성
        let checkbox = document.createElement("input");
        checkbox.type = "checkbox";
        checkbox.id = "table2_chkAll"
        document.querySelector("#table2_1_2").appendChild(checkbox)
        document.querySelector("#table2_1_3").appendChild(document.createTextNode("신청일"))
        document.querySelector("#table2_1_4").appendChild(document.createTextNode("구분"))
        document.querySelector("#table2_1_5").appendChild(document.createTextNode("장비번호"))
        document.querySelector("#table2_1_6").appendChild(document.createTextNode("장비명"))
        document.querySelector("#table2_1_7").appendChild(document.createTextNode("관리업체"))
        document.querySelector("#table2_1_8").appendChild(document.createTextNode("라인"))
        document.querySelector("#table2_1_9").appendChild(document.createTextNode("책임자"))
        document.querySelector("#table2_1_10").appendChild(document.createTextNode("상태"))
    })

    // 전체선택 이벤트
    window.addEventListener("load", function () {
        document.querySelector("#table2_chkAll").addEventListener("click", function (e) {

            if (document.querySelector("#table2_chkAll").checked == true) {
                document.querySelectorAll(".table2_chkChild").forEach(function (chkChild) {
                    chkChild.checked = true;
                })
            } else {
                document.querySelectorAll(".table2_chkChild").forEach(function (chkChild) {
                    chkChild.checked = false;
                })
            }

        })
    })


    // 선택 추가 이벤트
    window.addEventListener("load", function () {

        let checkboxes = document.querySelectorAll(".table2_chkChild");

        checkboxes.forEach(function (checkbox) {
            checkbox.addEventListener("click", function (e) {
                let allbox = checkboxes.length;
                let nowbox = 0;

                checkboxes.forEach(function (checkbox) {
                    if (checkbox.checked) {
                        nowbox++;
                    }
                });

                if (allbox === nowbox) {
                    document.querySelector("#table2_chkAll").checked = true;
                } else {
                    document.querySelector("#table2_chkAll").checked = false;
                }
            });
        });
    });









    // 알람 이벤트
    window.addEventListener("load", function () {

        // 알림창 취소버튼기능
        document.querySelector(".cancelOut").addEventListener("click", function (e) {
            document.querySelector("#alarm_wrap").style.cssText = "display: none;"
            document.querySelector("#overlay").style.cssText = "display: none;"
        })

        // 수리신청
        document.querySelector("#btn_eqcheck").addEventListener("click", function (e) {
            let falseCount = 0;
            for (let i = 1; i <= 12; i++) {
                if (!(document.querySelector("#table1_chkChild" + i + "").checked)) {
                    falseCount++
                    console.log(falseCount)
                }
            }
            if (falseCount == 12) {
                document.querySelector("#alarm_content_text").textContent = "하나 이상 선택해야 합니다!"
                document.querySelector("#alarm_wrap").style.cssText = "display: block; pointer-events: auto;"
                document.querySelector("#overlay").style.cssText = "display: block;"
            } else {
                document.querySelector("#alarm_content_text").textContent = "선택한 장비를 수리 신청하시겠습니까?"
                document.querySelector("#alarm_wrap").style.cssText = "display: block; pointer-events: auto;"
                document.querySelector("#overlay").style.cssText = "display: block;"

            }
        })

        // 점검신청
        document.querySelector("#btn_eqfix").addEventListener("click", function (e) {
            let falseCount = 0;
            for (let i = 1; i <= 12; i++) {
                if (!(document.querySelector("#table1_chkChild" + i + "").checked)) {
                    falseCount++
                    console.log(falseCount)
                }
            }
            if (falseCount == 12) {
                document.querySelector("#alarm_content_text").textContent = "하나 이상 선택해야 합니다!"
                document.querySelector("#alarm_wrap").style.cssText = "display: block; pointer-events: auto;"
                document.querySelector("#overlay").style.cssText = "display: block;"
            } else {
                document.querySelector("#alarm_content_text").textContent = "선택한 장비를 점검 신청하시겠습니까?"
                document.querySelector("#alarm_wrap").style.cssText = "display: block; pointer-events: auto;"
                document.querySelector("#overlay").style.cssText = "display: block;"
            }
        })

        // 계획수정신청
        document.querySelector("#btn_modify").addEventListener("click", function (e) {
            let falseCount = 0;
            for (let i = 1; i <= 12; i++) {
                if (!(document.querySelector("#table1_chkChild" + i + "").checked)) {
                    falseCount++
                    console.log(falseCount)
                }
            }
            if (falseCount == 12 || falseCount <= 10) {
                document.querySelector("#alarm_content_text").textContent = "하나만 선택해서 수정할 수 있습니다!"
                document.querySelector("#alarm_wrap").style.cssText = "display: block; pointer-events: auto;"
                document.querySelector("#overlay").style.cssText = "display: block;"
            } else {
                document.querySelector("#alarm_content_text").textContent = "선택한 장비의 계획을 수정하시겠습니까?"
                document.querySelector("#alarm_wrap").style.cssText = "display: block; pointer-events: auto;"
                document.querySelector("#overlay").style.cssText = "display: block;"
            }
        })


        // 일정신청
        document.querySelector("#btn_req").addEventListener("click", function (e) {
            let falseCount = 0;
            for (let i = 1; i <= 12; i++) {
                if (!(document.querySelector("#table1_chkChild" + i + "").checked)) {
                    falseCount++
                    console.log(falseCount)
                }
            }
            if (falseCount == 12) {
                document.querySelector("#alarm_content_text").textContent = "하나 이상 선택해야 합니다!"
                document.querySelector("#alarm_wrap").style.cssText = "display: block; pointer-events: auto;"
                document.querySelector("#overlay").style.cssText = "display: block;"
            } else {
                document.querySelector("#alarm_content_text").textContent = "선택한 일정을 신청하시겠습니까?"
                document.querySelector("#alarm_wrap").style.cssText = "display: block; pointer-events: auto;"
                document.querySelector("#overlay").style.cssText = "display: block;"
            }
        })

        // 일정취소
        document.querySelector("#btn_reqcancel").addEventListener("click", function (e) {


            document.querySelector("#alarm_content_text").innerHTML = "선택한 일정을 취소합니다.<br>취소한 일정은 목록에서 삭제됩니다.<br>정말 취소하시겠습니까?"
            document.querySelector("#alarm_wrap").style.cssText = "display: block; pointer-events: auto;"
            document.querySelector("#overlay").style.cssText = "display: block;"

        })

        // 일정확정
        document.querySelector("#btn_accept").addEventListener("click", function (e) {


            document.querySelector("#alarm_content_text").innerHTML = "선택한 일정을 확정합니다.<br>확정한 일정은 목록에서 삭제가 불가능합니다.<br>정말 확정하시겠습니까?"
            document.querySelector("#alarm_wrap").style.cssText = "display: block; pointer-events: auto;"
            document.querySelector("#overlay").style.cssText = "display: block;"

        })
    })

    window.addEventListener("load", function () {

    })