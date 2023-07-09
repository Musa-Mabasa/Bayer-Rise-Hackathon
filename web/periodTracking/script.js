document.addEventListener("DOMContentLoaded", function() {
    var setReminderBtn = document.getElementById("setReminderBtn");
    setReminderBtn.addEventListener("click", function(event) {
      event.preventDefault(); // Prevent form submission
  
      var pillName = document.getElementById("pill-name").value;
      var pillTime = document.getElementById("pill-time").value;
      var pillInstructions = document.getElementById("pill-instructions").value;
  
      // ... reminder logic ...
  
      // For demonstration purposes, display a message instead of setting an actual reminder
      var messageBox = document.getElementById('messageBox');
      var message = "Reminder set for: " + pillName + " at " + pillTime;
  
      messageBox.innerText = message;
      messageBox.style.display = 'block';
  
      setTimeout(function() {
        messageBox.style.display = 'none';
        track();
      }, 3000);
    });
    function track() {
        window.location.href = "../home.html";
    }
  });
  