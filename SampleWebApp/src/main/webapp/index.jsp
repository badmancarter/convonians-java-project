<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Interactive Sample Web App</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            transition: background-color 1s;
        }
        #welcomeModal {
            display: none;
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: rgba(0, 0, 0, 0.5);
            justify-content: center;
            align-items: center;
            color: white;
            font-size: 24px;
            text-align: center;
        }
    </style>
</head>
<body>
    <div id="welcomeModal">
        <div>
            <h2>Welcome to the Sample Web App!</h2>
            <p>We're excited to have you here. Enjoy your stay!</p>
            <button onclick="closeModal()">Close</button>
        </div>
    </div>

    <script>
        window.onload = function() {
            setTimeout(function() {
                document.getElementById('welcomeModal').style.display = 'flex';
                document.body.style.backgroundColor = '#f0f8ff'; // Light blue background
            }, 500);
        }

        function closeModal() {
            document.getElementById('welcomeModal').style.display = 'none';
        }
    </script>
</body>
</html>
