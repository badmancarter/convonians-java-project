<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sample Web App</title>
</head>
<body>
    <h1>Welcome to Sample Web App</h1>
    <p id="message"></p>

    <script>
        window.onload = function() {
            document.getElementById("message").textContent = "Thanks for visiting! Enjoy browsing.";
        }
    </script>
</body>
</html>
