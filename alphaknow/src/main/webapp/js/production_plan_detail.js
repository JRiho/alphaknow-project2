// table1

    // 테이블 생성 이벤트
    window.addEventListener("load", function () {
        let thead = document.querySelector("#plan_req_table_thead");

        let rowCount1 = 1;
        let colCount1 = 10;

        for (let i = 1; i <= rowCount1; i++) {
            let tr = document.createElement('tr');
            thead.appendChild(tr);
            for (let j = 1; j <= colCount1; j++) {
                let th = document.createElement('th');
                tr.appendChild(th);
                th.setAttribute("id", `table1_1_${j}`);
            }
        }

        let tbody = document.querySelector("#plan_req_table_tbody")

        let rowCount2 = 15;
        let colCount2 = 10;

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

        // checkbox 생성
        let checkbox = document.createElement("input");
        checkbox.type = "checkbox";
        checkbox.id = "table1_chkAll"
        document.querySelector("#table1_1_2").appendChild(checkbox);
        document.querySelector("#table1_1_3").appendChild(document.createTextNode("예상작업시작일"))
        document.querySelector("#table1_1_4").appendChild(document.createTextNode("예상작업종료일"))
        document.querySelector("#table1_1_5").appendChild(document.createTextNode("작업공정명"))
        document.querySelector("#table1_1_6").appendChild(document.createTextNode("장비명"))
        document.querySelector("#table1_1_7").appendChild(document.createTextNode("자원명"))
        document.querySelector("#table1_1_8").appendChild(document.createTextNode("라인"))
        document.querySelector("#table1_1_9").appendChild(document.createTextNode("예상생산량"))
        document.querySelector("#table1_1_10").appendChild(document.createTextNode("책임자"))
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

                if (allbox === nowbox) {
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
        document.querySelector("#table2_1_3").appendChild(document.createTextNode("계획수립일"))
        document.querySelector("#table2_1_4").appendChild(document.createTextNode("예비지시번호"))
        document.querySelector("#table2_1_5").appendChild(document.createTextNode("작업공정명"))
        document.querySelector("#table2_1_6").appendChild(document.createTextNode("장비병"))
        document.querySelector("#table2_1_7").appendChild(document.createTextNode("자원명"))
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