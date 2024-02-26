/////////////////////////////공동 javascript /////////////////////////////////////////////////////

window.addEventListener('load', function () {
    let searchInput = document.querySelector('#search_txt');
    let engine = document.querySelector('#li_search');
    let searchButton = document.querySelector('#search_img1');

    // 검색 실행 함수
    function executeSearch() {
        const searchValue = searchInput.value;
        if (searchValue === "모니" || searchValue === "모니터" || searchValue === "모니터링") {
            let menu = document.createElement('div');
            menu.classList.add('search_menu');

            let items = [
                { text: '모니터링(장비)', link: '../monitoring/monitoring_equipment.html' },
                { text: '가동률 현황', link: '#' },
                { text: '비가동률 현황', link: '#' },
                { text: '리플로우(온도)', link: '../monitoring/monitoring_reflow.html' }
            ];

            items.forEach(function (item) {
                let menuChild = document.createElement('div');
                menuChild.textContent = item.text;
                menuChild.style.cursor = "pointer";
                menuChild.addEventListener('click', function () {
                    window.location.href = item.link;
                });
                menu.appendChild(menuChild);
            });
            engine.appendChild(menu);
        } else {
            let directLinks = {
                '모니터링(장비)': '../monitoring/monitoring_equipment.html',
                '리플로우(온도)': '../monitoring/monitoring_reflow.html',
                '가동률현황': '#',
                '비가동현황': '#'
            };
            if (directLinks[searchValue]) {
                window.location.href = directLinks[searchValue];
            }
        }
    }

    // 클릭 이벤트 리스너
    searchButton.addEventListener('click', function () {
        executeSearch();
    });

    // 키 입력 이벤트 리스너
    searchInput.addEventListener('keypress', function (e) {
        if (e.key === "Enter") {
            executeSearch();
        }
    });
});
window.addEventListener('load', function () {
    let moniter = document.querySelector('#moniter');
    let monitering = document.querySelector('#monitering');

    let standard = document.querySelector('#standard');
    let criteria = document.querySelector('#criteria');

    let plan = document.querySelector('#plan');
    let planning = document.querySelector('#planning');

    let performance = document.querySelector('#performance');
    let performing = document.querySelector('#performing');

    let prediction = document.querySelector('#prediction');
    let predicting = document.querySelector('#predicting');

    let inventory = document.querySelector('#inventory');
    let invent = document.querySelector('#invent');

    let store = document.querySelector('#store');
    let storing = document.querySelector('#storing');


    document.querySelector('#moniter').addEventListener('mouseenter', function () {
        moniter.style.fontWeight = "bold";
        monitering.style.display = "flex";

        criteria.style.display = 'none';
        standard.style.fontWeight = "400";

        plan.style.fontWeight = "400";
        planning.style.display = 'none';

        performance.style.fontWeight = "400";
        performing.style.display = 'none';

        prediction.style.fontWeight = "400";
        predicting.style.display = 'none';

        inventory.style.fontWeight = "400";
        invent.style.display = 'none';

        store.style.fontWeight = "400";
        storing.style.display = 'none';
    })
    document.querySelector('#monitering').addEventListener('mouseleave', function () {
        moniter.style.fontWeight = "400";
        monitering.style.display = 'none';
    })
    document.querySelector('#standard').addEventListener('mouseenter', function () {
        standard.style.fontWeight = "bold";
        criteria.style.display = "flex";

        moniter.style.fontWeight = "400";
        monitering.style.display = 'none';

        plan.style.fontWeight = "400";
        planning.style.display = 'none';

        performance.style.fontWeight = "400";
        performing.style.display = 'none';

        prediction.style.fontWeight = "400";
        predicting.style.display = 'none';

        inventory.style.fontWeight = "400";
        invent.style.display = 'none';

        store.style.fontWeight = "400";
        storing.style.display = 'none';
    })
    document.querySelector('#criteria').addEventListener('mouseleave', function () {
        standard.style.fontWeight = "400";
        criteria.style.display = 'none';
    })
    document.querySelector('#plan').addEventListener('mouseenter', function () {
        plan.style.fontWeight = "bold";
        planning.style.display = "flex";

        moniter.style.fontWeight = "400";
        monitering.style.display = 'none';

        criteria.style.display = 'none';
        standard.style.fontWeight = "400";

        performance.style.fontWeight = "400";
        performing.style.display = 'none';

        prediction.style.fontWeight = "400";
        predicting.style.display = 'none';

        inventory.style.fontWeight = "400";
        invent.style.display = 'none';

        store.style.fontWeight = "400";
        storing.style.display = 'none';
    })
    document.querySelector('#planning').addEventListener('mouseleave', function () {
        plan.style.fontWeight = "400";
        planning.style.display = 'none';
    })
    document.querySelector('#performance').addEventListener('mouseenter', function () {
        performance.style.fontWeight = "bold";
        performing.style.display = "flex";

        moniter.style.fontWeight = "400";
        monitering.style.display = 'none';

        criteria.style.display = 'none';
        standard.style.fontWeight = "400";

        plan.style.fontWeight = "400";
        planning.style.display = 'none';

        prediction.style.fontWeight = "400";
        predicting.style.display = 'none';

        inventory.style.fontWeight = "400";
        invent.style.display = 'none';

        store.style.fontWeight = "400";
        storing.style.display = 'none';
    })
    document.querySelector('#performing').addEventListener('mouseleave', function () {
        performance.style.fontWeight = "400";
        performing.style.display = 'none';
    })
    document.querySelector('#prediction').addEventListener('mouseenter', function () {
        prediction.style.fontWeight = "bold";
        predicting.style.display = "flex";

        moniter.style.fontWeight = "400";
        monitering.style.display = 'none';

        criteria.style.display = 'none';
        standard.style.fontWeight = "400";

        plan.style.fontWeight = "400";
        planning.style.display = 'none';

        performance.style.fontWeight = "400";
        performing.style.display = 'none';

        inventory.style.fontWeight = "400";
        invent.style.display = 'none';

        store.style.fontWeight = "400";
        storing.style.display = 'none';
    })
    document.querySelector('#predicting').addEventListener('mouseleave', function () {
        prediction.style.fontWeight = "400";
        predicting.style.display = 'none';
    })
    document.querySelector('#inventory').addEventListener('mouseenter', function () {
        inventory.style.fontWeight = "bold";
        invent.style.display = "flex";

        prediction.style.fontWeight = "400";
        predicting.style.display = 'none';

        moniter.style.fontWeight = "400";
        monitering.style.display = 'none';

        criteria.style.display = 'none';
        standard.style.fontWeight = "400";

        plan.style.fontWeight = "400";
        planning.style.display = 'none';

        performance.style.fontWeight = "400";
        performing.style.display = 'none';

        store.style.fontWeight = "400";
        storing.style.display = 'none';
    })
    document.querySelector('#invent').addEventListener('mouseleave', function () {
        inventory.style.fontWeight = "400";
        invent.style.display = 'none';
    })
    document.querySelector('#store').addEventListener('mouseenter', function () {
        store.style.fontWeight = "bold";
        storing.style.display = "flex";

        prediction.style.fontWeight = "400";
        predicting.style.display = 'none';

        moniter.style.fontWeight = "400";
        monitering.style.display = 'none';

        criteria.style.display = 'none';
        standard.style.fontWeight = "400";

        plan.style.fontWeight = "400";
        planning.style.display = 'none';

        performance.style.fontWeight = "400";
        performing.style.display = 'none';

        inventory.style.fontWeight = "400";
        invent.style.display = 'none';
    })
    document.querySelector('#storing').addEventListener('mouseleave', function () {
        store.style.fontWeight = "400";
        storing.style.display = 'none';
    })
    document.querySelector('#header').addEventListener('mouseenter', function () {
        prediction.style.fontWeight = "400";
        predicting.style.display = 'none';

        moniter.style.fontWeight = "400";
        monitering.style.display = 'none';

        criteria.style.display = 'none';
        standard.style.fontWeight = "400";

        plan.style.fontWeight = "400";
        planning.style.display = 'none';

        performance.style.fontWeight = "400";
        performing.style.display = 'none';

        inventory.style.fontWeight = "400";
        invent.style.display = 'none';

        store.style.fontWeight = "400";
        storing.style.display = 'none';
    })
    document.querySelector('body').addEventListener('mouseenter', function () {
        predicting.style.display = 'none';
        monitering.style.display = 'none';
        criteria.style.display = 'none';
        planning.style.display = 'none';
        performing.style.display = 'none';
        invent.style.display = 'none';
        storing.style.display = 'none';

    })
})
/////////////////////////////공동 javascript 끝/////////////////////////////////////////////////////


/////////////////////////////메인페이지 시작///////////////////////////////////////////////////////////
window.addEventListener('load', function () {
    document.querySelector('#plus_img').addEventListener('click', function () {
        document.querySelector('#to_do_list').style.display = 'block';
        document.querySelector('#to_do').style.opacity = '0.3';
        document.querySelector('#plus').style.opacity = '0.3';
        document.querySelector('#frame').style.opacity = '0.3';
        document.querySelector('#calendar_div').style.opacity = '0.3';

    })

    document.querySelector('#btn_cancel').addEventListener('click', function () {
        document.getElementById('task_input').value = '';
    })
    document.querySelector('#btn_out').addEventListener('click', function () {
        document.querySelector('#to_do_list').style.display = 'none';
        document.querySelector('#to_do').style.opacity = '1';
        document.querySelector('#plus').style.opacity = '1';
        document.querySelector('#frame').style.opacity = '1';
        document.querySelector('#calendar_div').style.opacity = '1';
        document.getElementById('task_input').value = '';
    })
})
document.addEventListener('DOMContentLoaded', () => {
    const btn_submit = document.getElementById('btn_submit');
    const taskInput = document.getElementById('task_input');
    const taskList = document.getElementById('task_list');

    btn_submit.addEventListener('click', () => {
        const task = taskInput.value;
        if (task) {
            addTask(task);
            taskInput.value = '';
            taskInput.focus();
        }
    });

    function addTask(task) {
        const listItem = document.createElement('li');
        listItem.textContent = task;

        const deleteButton = document.createElement('button');
        deleteButton.textContent = '삭제';
        deleteButton.onclick = function () {
            listItem.remove();
        };
        listItem.appendChild(deleteButton);
        taskList.appendChild(listItem);

    }
});

//////////////////////////////////////////////////////////////////////////////////////////////////////////////    
window.addEventListener('load', function () {

    const date = new Date();

    const renderCalendar = () => {
        const viewYear = date.getFullYear();
        const viewMonth = date.getMonth();

        document.querySelector('.year_month').textContent = `${viewYear}년 ${viewMonth + 1}월`;

        const prevLast = new Date(viewYear, viewMonth, 0);
        const thisLast = new Date(viewYear, viewMonth + 1, 0);

        const PLDate = prevLast.getDate();
        const PLDay = prevLast.getDay();

        const TLDate = thisLast.getDate();
        const TLDay = thisLast.getDay();

        const prevDates = [];
        const thisDates = [...Array(TLDate + 1).keys()].slice(1);
        const nextDates = [];

        if (PLDay !== 6) {
            for (let i = 0; i < PLDay + 1; i++) {
                prevDates.unshift(PLDate - i);
            }
        }
        for (let i = 1; i < 7 - TLDay; i++) {
            nextDates.push(i)
        }

        const dates = prevDates.concat(thisDates, nextDates);
        const firstDateIndex = dates.indexOf(1);
        const lastDateIndex = dates.lastIndexOf(TLDate);

        dates.forEach((date, i) => {
            const condition = i >= firstDateIndex && i < lastDateIndex + 1 ? 'this' : 'other';
            dates[i] = `<div class="date"><span class = ${condition} > ${date}</span></div>`;
        });

        this.document.querySelector('.dates').innerHTML = dates.join('');

        const today = new Date();

        if (viewMonth === today.getMonth() && viewYear === today.getFullYear()) {
            for (let date of document.querySelectorAll('.this')) {
                if (+date.innerText === today.getDate()) {
                    date.classList.add('today');
                }
            }
        }
    }
    renderCalendar();
    document.querySelector('.go_prev').addEventListener('click', function () {
        console.log('Previous month clicked'); // 디버깅을 위한 콘솔 로그
        date.setMonth(date.getMonth() - 1);

        renderCalendar();
    });

    document.querySelector('.go_today').addEventListener('click', function () {
        console.log('Go to today clicked'); // 디버깅을 위한 콘솔 로그
        const today = new Date();
        date.setFullYear(today.getFullYear(), today.getMonth(), today.getDate());

        renderCalendar();
    });

    document.querySelector('.go_next').addEventListener('click', function () {
        console.log('Next month clicked'); // 디버깅을 위한 콘솔 로그
        date.setMonth(date.getMonth() + 1);

        renderCalendar();
    });

    document.querySelectorAll('.date').forEach(date => {
        date.addEventListener('click', function (e) {
            const selectedDate = e.target.innerText;
            // 선택된 날짜를 입력 폼에 설정
            document.getElementById('selected-date').value = `${viewYear}-${viewMonth + 1}-${selectedDate}`;
            // 입력 폼 표시
            document.querySelector('.input-form').style.display = 'block';
        });
    });

    // 폼 제출 이벤트 핸들러
    document.getElementById('date-info-form').addEventListener('submit', function (e) {
        e.preventDefault(); // 기본 이벤트 방지
        // 데이터 처리 로직 (예: 로컬 스토리지에 저장)
        const selectedDate = document.getElementById('selected-date').value;
        const info = document.getElementById('info').value;
        console.log(`날짜: ${selectedDate}, 정보: ${info}`); // 데이터 확인용 콘솔 로그
        // 폼 숨기기 및 초기화
        document.querySelector('.input-form').style.display = 'none';
        document.getElementById('info').value = ''; // 입력 필드 초기화
    });
});

///////////////////////////////메인페이지 끝/////////////////////////////////////////////////////////////////////////////

//media 전용
// window.addEventListener('load', function () {
//     if (matchMedia("screen and (min-width:320px) and (min-height:480px)").matches) {
//         let header = document.querySelector('#header');
//         header.style.cssText = "width: 320px; height: 50px;";

//         document.querySelector('.main_box').style.cssText = "width: 320px;";

//         let menu_board = document.querySelector('#menu_board');

//         document.querySelector('#li_icon').remove();

//         let li_search = document.querySelector('#li_search');
//         li_search.style.cssText = "width:285px;"

//         let search_txt = document.querySelector('#search_txt');
//         search_txt.style.cssText = "width:240px; font-size:20px;border:1px solid red;";

//         let li_hamburger = document.querySelector('#li_user_icon');
//         li_hamburger.style.cssText = "width:35px"

//         let hamburger = document.querySelector('#user_icon');
//         hamburger.src = "../img/hamburger.png";
//         hamburger.style.cssText = "width: 30px; margin-left: 5px";
//         menu_board.style.cssText = "display:none;";

//         hamburger.addEventListener('click', function () {
//             if (menu_board.style.display === "none" || menu_board.style.display === "") {
//                 for (let i = 0; i < menu_board.children.length; i++) {
//                     menu_board.children[i].style.cssText = "width:100%; border-bottom:1px solid black";
//                     menu_board.style.cssText = "display:block;";
//                 }
//             } else {
//                 menu_board.style.display = "none";
//             }
//         })
//         let moniter = document.querySelector('#moniter');

//         let monitering = document.querySelector('#monitering');
//             monitering.style.cssText ="position:static; display:block;";
//             moniter.appendChild(monitering);
//         for(let i = 0; i<monitering.children.length; i++){
//             monitering.children[i].classList.add('monitering_child');
//         }
//         document.querySelector('#content_box1').style.cssText = "display:block; height:auto;"
//         document.querySelector('#to_do').style.display = "inline-block; width:100%;";
//         document.querySelector('#plus').style.display = "inline-block";
//         document.querySelector('#content_box2').style.cssText = "display:block; height:auto;"
//         document.querySelector('#calendar_div').style.cssText = "display:none";

//     }
// })



////////////////////모니터링(장비) javascript////////////////////////////////////////////////////////////////////////////
window.addEventListener('load', function () {
    let name = document.querySelector('#info_name1');
    let job = document.querySelector('#job1');
    let tool = document.querySelector('#tool1')
    let changeImage = document.querySelector('#change_img');

    document.querySelector('#loader').addEventListener('click', function () {
        document.querySelector('#info').style.display = "block";
        document.querySelector('#info').style.display = "flex";
        if (name) {
            name.textContent = 'PCB 로더';
            job.textContent = '모델명 : HM-300';
            // tool.textContent = "가동시간: ";
            changeImage.src = "../img/auto.webp";
        }
    })
    document.querySelector('#solder').addEventListener('click', function () {
        document.querySelector('#info').style.display = "block";
        document.querySelector('#info').style.display = "flex";
        if (name) {
            name.textContent = '솔더 프린팅';
            job.textContent = '모델명 : US-1113X';
            // tool.textContent = "가동시간: ";
            changeImage.src = "../img/solder.webp";
        }
    })
    document.querySelector('#spi').addEventListener('click', function () {
        document.querySelector('#info').style.display = "block";
        document.querySelector('#info').style.display = "flex";
        if (name) {
            name.textContent = 'SPI(솔더 페이스트 검사기)';
            job.textContent = '모델명 : Hmzenith';
            // tool.textContent = "가동시간: ";
            changeImage.src = "../img/spi.webp";
        }
    })
    document.querySelector('#chip').addEventListener('click', function () {
        document.querySelector('#info').style.display = "block";
        document.querySelector('#info').style.display = "flex";
        if (name) {
            name.textContent = '칩 마운터';
            job.textContent = '모델명 : HM520W HP';
            // tool.textContent = "가동시간: ";
            changeImage.src = "../img/mounter.webp";
        }
    })
    document.querySelector('#reflow').addEventListener('click', function () {
        document.querySelector('#info').style.display = "block";
        document.querySelector('#info').style.display = "flex";
        if (name) {
            name.textContent = '리플로우 솔더링';
            job.textContent = '모델명 : 1080 mkv-e';
            // tool.textContent = "가동시간: ";
            changeImage.src = "../img/reflow.webp";
        }
    })
    document.querySelector('#aoi').addEventListener('click', function () {
        document.querySelector('#info').style.display = "block";
        document.querySelector('#info').style.display = "flex";
        if (name) {
            name.textContent = '자동광학검사기';
            job.textContent = '모델명 : AMF124';
            // tool.textContent = "가동시간: ";
            changeImage.src = "../img/aoi.webp";
        }
    })
    document.querySelector('#unloader').addEventListener('click', function () {
        document.querySelector('#info').style.display = "block";
        document.querySelector('#info').style.display = "flex";
        if (name) {
            name.textContent = 'PCB 언로더';
            job.textContent = '모델명 : HM-300';
            // tool.textContent = "가동시간: ";
            changeImage.src = "../img/auto.webp";
        }
    })
    document.querySelector('#PCB_ON').addEventListener('click', function () {
        let on = document.querySelector('.P_ON');
        on.innerText = "ON";
        on.style.color = "lightgreen";
        let power = document.querySelector('#power');
        power.innerText = "ON"
        power.style.color = "lightgreen"

        let chart_bar = document.querySelector('#chart_bar');
        let percent = document.querySelector('#percent');
        let percentage = document.querySelector('#percentage');

        let per = 0;

        let success = document.querySelector('#success');
        let suc = 0;

        let failure = document.querySelector('#failure');

        let fail = 0;

        let need = document.querySelector('#need');

        let n = 500;

        let expect = document.querySelector('#expect');

        let work = document.querySelector('#work');

        let starTime = Date.now(); //시작 시간 기록
        failure.textContent = "불량개수 : 0";
        // console.log(random);

        let start = new Date();

        let intervalId = setInterval(() => {
            let random = Math.floor(Math.random() * 1000) + 1;
            let total = suc + fail;
            if (total > 0) {
                per = ((suc - fail) / total) * 100;
                // console.log(per)
            } else {
                per = 0;
            }

            if (random == 1 || random == 100 || random == 1000) {
                fail++;
                failure.textContent = "불량개수:" + fail;
                need.textContent = "필요한 개수:" + n;
            }
            else if (n == 0) {
                clearInterval(intervalId);
            }
            else {
                suc++;
                success.textContent = "성공:" + suc;
                n--;
                need.textContent = "필요한 개수:" + n;

            }
            let end = new Date();
            work.textContent = (end - start);



            let degree = per * 3.6;
            percentage.textContent = "가동률:" + per.toFixed(2) + "%";
            chart_bar.style.background = `conic-gradient(lightgreen ${degree}deg, lightgray ${degree}deg)`;
            percent.textContent = per.toFixed(2) + "%";
            // console.log(random)
        }, 2500);
        let interval = setInterval(() => {
            if (n > 0) {
                let currentTime = Date.now();
                let elapsedTime = (currentTime - starTime) / 1000;
                let estimatedTotalTime = elapsedTime * (500 / (suc + fail));
                let remainingTime = estimatedTotalTime - elapsedTime;
                let remainingMinutes = Math.floor(remainingTime / 60);
                let remaingSeconds = Math.floor(remainingTime % 60);
                expect.textContent = "예상시간: " + remainingMinutes + "분" + remaingSeconds + "초";
            } else if (n == 0) {
                expect.textContent = "작업완료";
                clearInterval(interval);
                power.innerText = "OFF"
                power.style.color = "red"
                on.innerText = "OFF"
                on.style.color = "red"
            }
        }, 1000);
    })


});