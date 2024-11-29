<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Ultimate Web Experience</title>
    <style>
        body {
            margin: 0;
            font-family: 'Arial', sans-serif;
            background: linear-gradient(45deg, #ff9a9e, #fad0c4);
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            overflow: hidden;
            animation: backgroundAnimation 5s infinite alternate;
        }

        @keyframes backgroundAnimation {
            0% { background: linear-gradient(45deg, #ff9a9e, #fad0c4); }
            100% { background: linear-gradient(45deg, #a18cd1, #fbc2eb); }
        }

        #welcomeModal {
            display: none;
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: rgba(0, 0, 0, 0.7);
            display: flex;
            justify-content: center;
            align-items: center;
            color: white;
            font-size: 24px;
            text-align: center;
            opacity: 0;
            animation: fadeIn 1s forwards;
        }

        @keyframes fadeIn {
            0% { opacity: 0; }
            100% { opacity: 1; }
        }

        .modalContent {
            background: rgba(255, 255, 255, 0.1);
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.3);
        }

        .modalContent h2 {
            margin: 0 0 20px;
            font-size: 2.5rem;
            animation: slideIn 1s ease-out;
        }

        @keyframes slideIn {
            from { transform: translateY(-50px); opacity: 0; }
            to { transform: translateY(0); opacity: 1; }
        }

        .modalContent p {
            font-size: 1.2rem;
        }

        button {
            background-color: #ff4d4d;
            color: white;
            border: none;
            padding: 10px 20px;
            font-size: 1rem;
            cursor: pointer;
            border-radius: 5px;
            transition: background-color 0.3s ease;
        }

        button:hover {
            background-color: #ff1a1a;
        }

        .ctaButton {
            position: absolute;
            bottom: 20px;
            left: 50%;
            transform: translateX(-50%);
            background-color: #42f5d8;
            padding: 10px 20px;
            font-size: 1.5rem;
            color: white;
            border: none;
            cursor: pointer;
            border-radius: 5px;
            transition: background-color 0.3s ease;
        }

        .ctaButton:hover {
            background-color: #34b39d;
        }

    </style>
</head>
<body>

    <button class="ctaButton" onclick="openModal()">Welcome to Your Adventure</button>

    <div id="welcomeModal">
        <div class="modalContent">
            <h2>Welcome to the Ultimate Web Experience!</h2>
            <p>We’re thrilled to have you here. Click the button below to explore more exciting features.</p>
            <button onclick="closeModal()">Close</button>
        </div>
    </div>

    <script>
        function openModal() {
            document.getElementById('welcomeModal').style.display = 'flex';
        }

        function closeModal() {
            document.getElementById('welcomeModal').style.display = 'none';
        }

        window.onload = function() {
            setTimeout(function() {
                document.body.style.backgroundColor = '#ffffff'; // Smooth background color change
            }, 2000);
        }
    </script>
</body>
</html>
