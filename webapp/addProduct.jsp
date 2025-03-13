<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Product</title>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap" rel="stylesheet">
    <style>
        body {
            font-family: 'Roboto', sans-serif;
            background-color: #f9f9f9;
            margin: 0;
            padding: 20px;
        }
        .container {
            max-width: 500px;
            margin: auto;
            background: white;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
        }
        h2 {
            text-align: center;
            color: #333;
            margin-bottom: 20px;
        }
        label {
            margin-top: 15px;
            color: #555;
            font-weight: bold;
            display: block;
        }
        input, select {
            width: calc(100% - 22px);
            padding: 10px;
            margin: 8px 0 20px;
            border: 1px solid #ddd;
            border-radius: 4px;
            font-size: 16px;
        }
        button {
            width: 100%;
            padding: 12px;
            background-color: #28a745;
            color: white;
            border: none;
            border-radius: 5px;
            font-size: 16px;
            cursor: pointer;
            transition: background-color 0.3s;
        }
        button:hover {
            background-color: #218838;
        }
        .error {
            color: red;
            font-size: 14px;
            text-align: center;
            margin-top: 10px;
        }
    </style>
</head>
<body>

<div class="container">
    <h2>Add New Product</h2>
    <form id="addProductForm">
        <label for="productName">Product Name:</label>
        <select id="productName" name="productName" required>
            <option value="">Select a vegetable</option>
            <option value="Carrot">Carrot</option>
            <option value="Broccoli">Broccoli</option>
            <option value="Spinach">Spinach</option>
            <option value="Tomato">Tomato</option>
            <option value="Cucumber">Cucumber</option>
            <option value="Potato">Potato</option>
            <option value="Bell Pepper">Bell Pepper</option>
            <option value="Eggplant">Eggplant</option>
        </select>

        <label for="price">Price:</label>
        <input type="number" id="price" name="price" required placeholder="Enter price" step="0.01">

        <label for="weight">Weight (kg):</label>
        <input type="number" id="weight" name="weight" required placeholder="Enter weight" step="0.01">

        <button type="submit">Add Product</button>
    </form>
    <div id="error-message" class="error"></div>
</div>

<script>
    document.getElementById('addProductForm').addEventListener('submit', function(event) {
        event.preventDefault();
        const productName = document.getElementById('productName').value;
        const price = document.getElementById('price').value;
        const weight = document.getElementById('weight').value;

        if (!productName || !price || !weight) {
            document.getElementById('error-message').innerText = 'Please fill in all fields.';
        } else {
            document.getElementById('error-message').innerText = '';
            alert('Product added successfully!');
            document.getElementById('addProductForm').reset();
        }
    });
</script>

</body>
</html>
