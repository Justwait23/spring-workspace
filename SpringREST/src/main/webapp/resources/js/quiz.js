

const btn1 = document.querySelector('#btn1');
const btn2 = document.querySelector('#btn2');

btn1.addEventListener('click', (e) => {
    const xhttp = new XMLHttpRequest();

    xhttp.addEventListener('readystatechange', (e) => {
        if (xhttp.readyState == 4 && xhttp.status == 200) {
            const employees = JSON.parse(xhttp.responseText);
            displayEmployees(employees);
        }
    });

    xhttp.open('GET', './rest/quiz');
    xhttp.send();
});

function displayEmployees(employees) {
    const out = document.querySelector('#out');
    const employeesDiv = document.querySelector('#employeesDiv');

    out.innerHTML = '<h4>랜덤으로 뽑힌 사원</h4>';
    employeesDiv.innerHTML = '';

    employees.forEach((employees) => {
        const employeeCard = document.createElement('div');
        employeeCard.textContent = `${employees.employee_id}: ${employees.first_name}`
        employeesDiv.appendChild(employeeCard);
    });

}