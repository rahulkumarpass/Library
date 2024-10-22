//for Date
function updateDateTime() {
    const now = new Date();
    const formattedDate = now.toLocaleString();
    document.getElementById('date').innerHTML = formattedDate;
}

// Update date and time every second
setInterval(updateDateTime, 1000);

// Initial call to show date/time immediately on page load
updateDateTime();

// Function to handle student login button click
function handleStudentLoginClick() {
    alert('Navigating to Student Login!');
}

// Function to handle employee login button click
function handleEmployeeLoginClick() {
    alert('Navigating to Employee Login!');
}

// Add event listener for the Student Login button
const studentLoginButton = document.getElementById('studentLogin');
studentLoginButton.addEventListener('click', handleStudentLoginClick);

// Add event listener for the Employee Login button
const employeeLoginButton = document.getElementById('employeeLogin');
employeeLoginButton.addEventListener('click', handleEmployeeLoginClick);