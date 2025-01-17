<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Simple Calculator</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            text-align: center;
            margin-top: 50px;
        }
        input {
            margin: 5px;
            padding: 10px;
            font-size: 16px;
        }
        button {
            padding: 10px 20px;
            font-size: 16px;
            margin: 5px;
        }
    </style>
</head>
<body>
    <h1>Simple Calculator</h1>
    <input type="number" id="num1" placeholder="Enter first number">
    <input type="number" id="num2" placeholder="Enter second number">
    <br>
    <button onclick="calculate('+')">+</button>
    <button onclick="calculate('-')">-</button>
    <button onclick="calculate('*')">×</button>
    <button onclick="calculate('/')">÷</button>
    <h2 id="result">Result: </h2>

    <script>
        function calculate(operation) {
            const num1 = parseFloat(document.getElementById('num1').value);
            const num2 = parseFloat(document.getElementById('num2').value);
            let result;

            if (isNaN(num1) || isNaN(num2)) {
                result = "Please enter valid numbers!";
            } else {
                switch (operation) {
                    case '+':
                        result = num1 + num2;
                        break;
                    case '-':
                        result = num1 - num2;
                        break;
                    case '*':
                        result = num1 * num2;
                        break;
                    case '/':
                        result = num2 !== 0 ? num1 / num2 : "Cannot divide by zero!";
                        break;
                    default:
                        result = "Invalid operation";
                }
            }
            document.getElementById('result').innerText = "Result: " + result;
        }
    </script>
</body>
</html>