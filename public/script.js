// Function to hide splash screen and show home page after 10 seconds (10000ms)
setTimeout(function() {
    // Hide Splash Screen with transition
    document.getElementById("splashScreen").style.opacity = '0';
    document.getElementById("splashScreen").style.visibility = 'hidden';

    // Show Home Page with animation
    setTimeout(function() {
        document.getElementById("homePage").classList.add('visible');
    }, 500);  // Delay before showing home page
}, 10000);  // Splash screen duration: 10 seconds

// Form validation and submission
document.getElementById("captiveForm").addEventListener("submit", function(event) {
    event.preventDefault();

    let fullName = document.getElementById("fullName").value;
    let cellNumber = document.getElementById("cellNumber").value;

    // Validation
    if (fullName === "" || cellNumber === "") {
        alert("Please fill in all required fields.");
        return;
    }

    // Show the overlay with success message
    document.getElementById("overlay").style.display = "flex";

    // Simulate submitting the form and redirect after 3 seconds
    setTimeout(() => {
        window.location.href = "success.html";  // Redirect to the success page
    }, 3000);
});
