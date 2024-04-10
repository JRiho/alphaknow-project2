// 테이블 생성 이벤트
window.addEventListener("load", function() {
	let thead = document.querySelector("#info_table_thead");

	let rowCount1 = 1;
	let colCount1 = 6;

	for (let i = 1; i <= rowCount1; i++) {
		let tr = document.createElement('tr');
		thead.appendChild(tr);
		for (let j = 1; j <= colCount1; j++) {
			let th = document.createElement('th');
			tr.appendChild(th);
			th.setAttribute("id", `table1_1_${j}`);
		}
	}

//	let tbody = document.querySelector("#info_table_tbody")
//
//	let rowCount2 = 7;
//	let colCount2 = 6;
//
//	for (let i = 1; i <= rowCount2; i++) {
//		let tr = document.createElement('tr');
//		tbody.appendChild(tr);
//		for (let j = 1; j <= colCount2; j++) {
//			let td = document.createElement('td');
//			tr.appendChild(td);
//			td.setAttribute("id", `table1_${i + 1}_${j}`);
//		}
//	}
})

// 컬럼명
window.addEventListener("load", function() {
	document.querySelector("#table1_1_1").appendChild(document.createTextNode("기준일"))
	document.querySelector("#table1_1_2").appendChild(document.createTextNode("자재명"))
	document.querySelector("#table1_1_3").appendChild(document.createTextNode("계획량"))
	document.querySelector("#table1_1_4").appendChild(document.createTextNode("실생산량"))
	document.querySelector("#table1_1_5").appendChild(document.createTextNode("달성률"))
	document.querySelector("#table1_1_6").appendChild(document.createTextNode("불량률"))
})



window.addEventListener("load", function() {

	let data = {
		labels: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
		datasets: [
			{
				label: '계획량',
				backgroundColor: 'rgba(75, 192, 192, 0.2)',
				borderColor: 'rgba(75, 192, 192, 1)',
				borderWidth: 1,
				data: [20000, 18000, 19900, 18000, 20000, 18800, 20000, 20000, 20000, 18800, 20000, 20000]
			},
			{
				label: '생산량',
				backgroundColor: 'rgba(255, 99, 132, 0.2)',
				borderColor: 'rgba(255, 99, 132, 1)',
				borderWidth: 1,
				data: [19990, 17500, 19400, 17790, 19400, 18100, 19500, 19800, 19400, 18100, 19500, 19800]
			}
		]
	};

	let options = {
		maintainAspectRatio: false,
	};

	const ctx = document.getElementById('myChart').getContext('2d');

	let myChart = new Chart(ctx, {
		type: 'bar',
		data: data,
		options: options
	});
})