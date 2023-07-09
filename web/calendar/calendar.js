const daysTag = document.querySelector(".days"),
currentDate = document.querySelector(".current-date"),
prevNextIcon = document.querySelectorAll(".icons span");

// getting new date, current year and month
let date = new Date(),
currYear = date.getFullYear(),
currMonth = date.getMonth();

// storing full name of all months in array
const months = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"];

const menstrualPhases = [
    { name: "Menstruation", class: "menstruation" },
    { name: "Follicular", class: "follicular" },
    { name: "Ovulation", class: "ovulation" },
    { name: "Luteal", class: "luteal" }
  ];
  var startDataMen = new Date();

const renderCalendar = (startDateMen) => {
    const menstrualPhases = [
        { name: "Menstruation", class: "menstruation" },
        { name: "Follicular", class: "follicular" },
        { name: "Ovulation", class: "ovulation" },
        { name: "Luteal", class: "luteal" }
      ];
    let firstDayofMonth = new Date(currYear, currMonth, 1).getDay(),
        lastDateofMonth = new Date(currYear, currMonth + 1, 0).getDate(),
        lastDayofMonth = new Date(currYear, currMonth, lastDateofMonth).getDay(),
        lastDateofLastMonth = new Date(currYear, currMonth, 0).getDate();
    let liTag = "";

    for (let i = firstDayofMonth; i > 0; i--) {
        liTag += `<li class="inactive">${lastDateofLastMonth - i + 1}</li>`;
    }

    for (let i = 1; i <= lastDateofMonth; i++) {
        let isToday = i === date.getDate() && currMonth === new Date().getMonth()
            && currYear === new Date().getFullYear() ? "active" : "";
        
        let currentDate = new Date(currYear, currMonth, i);
        let daysPassed = Math.floor((currentDate - startDateMen) / (1000 * 60 * 60 * 24)); // Calculate days passed since start date
        //make a random number between 0 and 7
        let random = Math.floor(Math.random() * 3);
        daysPassed = daysPassed - random;
        let stageIndex = Math.floor(daysPassed / 7) % 4; // Determine the stage of the cycle
        let stageClass = menstrualPhases[stageIndex]; // Get the corresponding class
        if(daysPassed<14 && daysPassed>=0){
            liTag += `<li class="follicular">${i}</li>`;
        }
        else if(daysPassed>=14 && daysPassed<21){
            liTag += `<li class="ovulation">${i}</li>`;
        }
        else if(daysPassed>=21 && daysPassed<28){
            liTag += `<li class="luteal">${i}</li>`;
        }
        else{
            liTag += `<li class="${isToday} ${stageClass}">${i}</li>`;
        }
        
    }

    for (let i = lastDayofMonth; i < 6; i++) {
        liTag += `<li class="inactive">${i - lastDayofMonth + 1}</li>`
    }
    currentDate.innerText = `${months[currMonth]} ${currYear}`;
    daysTag.innerHTML = liTag;
}
            
renderCalendar(startDataMen);

prevNextIcon.forEach(icon => { // getting prev and next icons
    icon.addEventListener("click", () => { // adding click event on both icons
        // if clicked icon is previous icon then decrement current month by 1 else increment it by 1
        currMonth = icon.id === "prev" ? currMonth - 1 : currMonth + 1;

        if(currMonth < 0 || currMonth > 11) { // if current month is less than 0 or greater than 11
            // creating a new date of current year & month and pass it as date value
            date = new Date(currYear, currMonth, new Date().getDate());
            currYear = date.getFullYear(); // updating current year with new date year
            currMonth = date.getMonth(); // updating current month with new date month
        } else {
            date = new Date(); // pass the current date as date value
        }
        renderCalendar(); // calling renderCalendar function
    });
});



// for menstrual days



function changeStartDate(){
    startDateMen = document.getElementById("startDateMen").value;
    renderCalendar(startDataMen);
}


