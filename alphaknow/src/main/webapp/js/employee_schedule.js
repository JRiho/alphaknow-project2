// table 1
    // 테이블 생성 이벤트
    window.addEventListener("load", function () {
        let thead1 = document.querySelector("#emp_status_table_thead");

        let rowCount1 = 1;
        let colCount1 = 10;

        for (let i = 1; i <= rowCount1; i++) {
            let tr = document.createElement('tr');
            thead1.appendChild(tr);
            for (let j = 1; j <= colCount1; j++) {
                let th = document.createElement('th');
                tr.appendChild(th);
                th.setAttribute("id", `table1_1_${j}`);
            }
        }

        let tbody1 = document.querySelector("#emp_status_table_tbody")

        let rowCount2 = 16;
        let colCount2 = 10;

        for (let i = 1; i <= rowCount2; i++) {
            let tr = document.createElement('tr');
            tbody1.appendChild(tr);
            for (let j = 1; j <= colCount2; j++) {
                let td = document.createElement('td');
                tr.appendChild(td);
                td.setAttribute("id", `table1_${i + 1}_${j}`);
            }
        }

        // 컬럼명
        document.querySelector("#table1_1_1").appendChild(document.createTextNode("사원명"))
        document.querySelector("#table1_1_2").appendChild(document.createTextNode("목표수량"))
        document.querySelector("#table1_1_3").appendChild(document.createTextNode("생산수량"))
        document.querySelector("#table1_1_4").appendChild(document.createTextNode("양품수량"))
        document.querySelector("#table1_1_5").appendChild(document.createTextNode("목표달성률"))
        document.querySelector("#table1_1_6").appendChild(document.createTextNode("불량수량"))
        document.querySelector("#table1_1_7").appendChild(document.createTextNode("불량률"))
        document.querySelector("#table1_1_8").appendChild(document.createTextNode("근무시간(분)"))
        document.querySelector("#table1_1_9").appendChild(document.createTextNode("비가동시간(분)"))
        document.querySelector("#table1_1_10").appendChild(document.createTextNode("실근무시간(분)"))

        // table 2
        // 테이블 생성 이벤트
        let thead2 = document.querySelector("#month_list_table_thead");

        let rowCount3 = 1;
        let colCount3 = 33;

        for (let i = 1; i <= rowCount3; i++) {
            let tr = document.createElement('tr');
            thead2.appendChild(tr);
            for (let j = 1; j <= colCount3; j++) {
                let th = document.createElement('th');
                tr.appendChild(th);
                th.setAttribute("id", `table2_1_${j}`);
            }
        }

        let tbody2 = document.querySelector("#month_list_table_tbody")

        let rowCount4 = 16;
        let colCount4 = 33;

        for (let i = 1; i <= rowCount4; i++) {
            let tr = document.createElement('tr');
            tbody2.appendChild(tr);
            for (let j = 1; j <= colCount4; j++) {
                let td = document.createElement('td');
                tr.appendChild(td);
                td.setAttribute("id", `table2_${i + 1}_${j}`);
            }
        }

        // 컬럼명 (날짜)
        for (let i = 3; i <= 33; i++) {
            document.querySelector(`#table2_1_${i}`).appendChild(document.createTextNode(i - 2))
            document.querySelector(`#table2_1_${i}`).style.cssText = "width: 20px;"
        }

        document.querySelector("#table2_1_1").appendChild(document.createTextNode("사원번호"))
        document.querySelector("#table2_1_2").appendChild(document.createTextNode("사원명"))


        
        
        // 드롭박스 이벤트
        document.querySelector("#dname").addEventListener("change", function (e) {

            // 기존 옵션 제거
            document.querySelector("#ename").innerHTML = "";

            let eqm1 = ["선택", "하은성", "지하운", "염인성", "김민수", "이수진", "박지윤"];
            let eqm2 = ["선택", "김황산", "이은정", "김학수", "박지수", "이지수", "이명선"];
            let sup = ["선택", "김영환", "박정현", "변재일", "이용우"];
            let insp = ["선택", "강병원", "김선교", "박성민", "이채익"];

            let selected = e.target.value;
            let ename = document.querySelector("#ename");

            let options;
            if (selected == 1) {
                options = eqm1
            } else if (selected == 2) {
                options = eqm2;
            } else if (selected == 3) {
                options = sup;
            } else if (selected == 4) {
                options = insp;
            }

            for (let i = 0; i < options.length; i++) {
                let opt = document.createElement("option");
                opt.value = options[i];
                opt.text = options[i];
                ename.appendChild(opt);
            }

        })



        // 찾기 버튼 이벤트
        document.querySelector("#search_btn").addEventListener("click", function(e){
            let dname = document.querySelector("#dname").value;
            let ename = document.querySelector("#ename").value;

            // searchInfoTable
            if(dname == 1 && ename == "하은성"){
                document.querySelector("#dept_name").textContent = "장비관리조1"
                document.querySelector("#emp_num").textContent = "001"
                document.querySelector("#emp_name").textContent = "하은성"
                document.querySelector("#work_now").textContent = "작업중"
                document.querySelector("#my_eqm").textContent = "PCB LOADER/UNLOADER"
                document.querySelector("#my_job").textContent = "pcb로더 작동, 점검"
            } else if(dname == 2 && ename == "김황산"){
                document.querySelector("#dept_name").textContent = "장비관리조2"
                document.querySelector("#emp_num").textContent = "007"
                document.querySelector("#emp_name").textContent = "김황산"
                document.querySelector("#work_now").textContent = "휴가"
                document.querySelector("#my_eqm").textContent = "Chip Mounter"
                document.querySelector("#my_job").textContent = "칩 마운터 점검"
            }

            


            // empStatusTable
            if(dname == 1) {
                document.querySelector("#table1_2_1").textContent = "하은성"
                document.querySelector("#table1_2_2").textContent = "300000"
                document.querySelector("#table1_2_3").textContent = "299993"
                document.querySelector("#table1_2_4").textContent = "299990"
                document.querySelector("#table1_2_5").textContent = document.querySelector("#table1_2_4").textContent / document.querySelector("#table1_2_2").textContent *100 + "%";
                document.querySelector("#table1_2_6").textContent = "3"
                document.querySelector("#table1_2_7").textContent = document.querySelector("#table1_2_6").textContent / document.querySelector("#table1_2_2").textContent *100 + "%";
                document.querySelector("#table1_2_8").textContent = "1400"
                document.querySelector("#table1_2_9").textContent = "200"
                document.querySelector("#table1_2_10").textContent = "1000"
                
                document.querySelector("#table1_3_1").textContent = "지하운"
                document.querySelector("#table1_3_2").textContent = "300000"
                document.querySelector("#table1_3_3").textContent = "299993"
                document.querySelector("#table1_3_4").textContent = "299990"
                document.querySelector("#table1_3_5").textContent = document.querySelector("#table1_3_4").textContent / document.querySelector("#table1_2_2").textContent *100 + "%";
                document.querySelector("#table1_3_6").textContent = "3"
                document.querySelector("#table1_3_7").textContent = document.querySelector("#table1_3_6").textContent / document.querySelector("#table1_2_2").textContent *100 + "%";
                document.querySelector("#table1_3_8").textContent = "1400"
                document.querySelector("#table1_3_9").textContent = "200"
                document.querySelector("#table1_3_10").textContent = "1000"
                
                document.querySelector("#table1_4_1").textContent = "염인성"
                document.querySelector("#table1_4_2").textContent = "5000"
                document.querySelector("#table1_4_3").textContent = "4991"
                document.querySelector("#table1_4_4").textContent = "4989"
                document.querySelector("#table1_4_5").textContent = document.querySelector("#table1_4_4").textContent / document.querySelector("#table1_2_2").textContent *100 + "%";
                document.querySelector("#table1_4_6").textContent = "3"
                document.querySelector("#table1_4_7").textContent = document.querySelector("#table1_4_6").textContent / document.querySelector("#table1_2_2").textContent *100 + "%";
                document.querySelector("#table1_4_8").textContent = "800"
                document.querySelector("#table1_4_9").textContent = "50"
                document.querySelector("#table1_4_10").textContent = "650"
                
                document.querySelector("#table1_5_1").textContent = "김민수"
                document.querySelector("#table1_5_2").textContent = "300000"
                document.querySelector("#table1_5_3").textContent = "299993"
                document.querySelector("#table1_5_4").textContent = "299990"
                document.querySelector("#table1_5_5").textContent = document.querySelector("#table1_5_4").textContent / document.querySelector("#table1_2_2").textContent *100 + "%";
                document.querySelector("#table1_5_6").textContent = "3"
                document.querySelector("#table1_5_7").textContent = document.querySelector("#table1_5_6").textContent / document.querySelector("#table1_2_2").textContent *100 + "%";
                document.querySelector("#table1_5_8").textContent = "1400"
                document.querySelector("#table1_5_9").textContent = "200"
                document.querySelector("#table1_5_10").textContent = "1000"
                
                document.querySelector("#table1_6_1").textContent = "이수진"
                document.querySelector("#table1_6_2").textContent = "300000"
                document.querySelector("#table1_6_3").textContent = "299993"
                document.querySelector("#table1_6_4").textContent = "299990"
                document.querySelector("#table1_6_5").textContent = document.querySelector("#table1_6_4").textContent / document.querySelector("#table1_2_2").textContent *100 + "%";
                document.querySelector("#table1_6_6").textContent = "3"
                document.querySelector("#table1_6_7").textContent = document.querySelector("#table1_6_6").textContent / document.querySelector("#table1_2_2").textContent *100 + "%";
                document.querySelector("#table1_6_8").textContent = "1400"
                document.querySelector("#table1_6_9").textContent = "200"
                document.querySelector("#table1_6_10").textContent = "1000"
                
                document.querySelector("#table1_7_1").textContent = "박지윤"
                document.querySelector("#table1_7_2").textContent = "300000"
                document.querySelector("#table1_7_3").textContent = "299993"
                document.querySelector("#table1_7_4").textContent = "299990"
                document.querySelector("#table1_7_5").textContent = document.querySelector("#table1_7_4").textContent / document.querySelector("#table1_2_2").textContent *100 + "%";
                document.querySelector("#table1_7_6").textContent = "3"
                document.querySelector("#table1_7_7").textContent = document.querySelector("#table1_7_6").textContent / document.querySelector("#table1_2_2").textContent *100 + "%";
                document.querySelector("#table1_7_8").textContent = "1400"
                document.querySelector("#table1_7_9").textContent = "200"
                document.querySelector("#table1_7_10").textContent = "1000"
            }

        })


    })