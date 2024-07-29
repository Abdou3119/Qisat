<!DOCTYPE html>
<html lang="ar">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>القصص - صفحة القصة</title>
    <style>
        body {
            font-family: 'Comic Sans MS', sans-serif;
            margin: 0;
            padding: 0;
            background: linear-gradient(to bottom, #fbc2eb, #a6c0fe);
        }
        header {
            background-color: #ffcccb;
            color: #fff;
            padding: 20px;
            text-align: center;
            position: relative;
            border-bottom: 5px solid #ffb6c1;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }
        .title-frame {
            border: 5px dashed #ff69b4;
            display: inline-block;
            padding: 10px;
            border-radius: 15px;
            background-color: #ffb6c1;
            font-size: 36px;
            font-weight: bold;
            color: #fff;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            text-shadow: 1px 1px 2px #ff69b4;
        }
        nav {
            background-color: #ffb6c1;
            padding: 10px;
            text-align: center;
            border-bottom: 2px solid #ff69b4;
        }
        nav a {
            color: #fff;
            padding: 10px 20px;
            text-decoration: none;
            font-weight: bold;
            border-radius: 10px;
            transition: background-color 0.3s, transform 0.3s;
            display: inline-block;
            margin: 5px;
        }
        nav a:hover {
            background-color: #ff69b4;
            transform: scale(1.1);
        }
        .container {
            max-width: 1000px;
            margin: auto;
            padding: 20px;
        }
        .story-container {
            position: relative;
            margin: auto;
            max-width: 900px;
            overflow: hidden;
        }
        .story-images {
            display: flex;
            overflow-x: scroll;
            scroll-behavior: smooth;
        }
        .story-images img {
            width: 100%;
            max-width: 100%;
            height: auto;
            border-radius: 10px;
            box-shadow: 0px 4px 6px rgba(0, 0, 0, 0.1);
            margin-right: 10px;
        }
        .nav-buttons {
            text-align: center;
            margin: 20px 0;
        }
        .nav-buttons button {
            background-color: #ff69b4;
            color: #fff;
            border: none;
            padding: 10px 20px;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
            transition: background-color 0.3s, transform 0.3s;
            margin: 5px;
        }
        .nav-buttons button:hover {
            background-color: #ff1493;
            transform: scale(1.05);
        }
        footer {
            background-color: #ffcccb;
            color: #fff;
            text-align: center;
            padding: 15px;
            border-top: 5px solid #ffb6c1;
        }
    </style>
</head>
<body>
    <header>
        <h1 class="title-frame">قصص وعبر للأطفال</h1>
    </header>

    <nav>
        <a href="index.html">الصفحة الرئيسية</a>
    </nav>

    <div class="container">
        <div class="story-container">
            <div class="story-images">
                <img src="images/صورة-1.jpg" alt="صورة القصة 1">
                <img src="images/صورة-2.jpg" alt="صورة القصة 2">
                <img src="images/صورة-3.jpg" alt="صورة القصة 3">
                <img src="images/صورة-4.jpg" alt="صورة القصة 4">
                <img src="images/صورة-5.jpg" alt="صورة القصة 5">
                <img src="images/صورة-6.jpg" alt="صورة القصة 6">
                <img src="images/صورة-7.jpg" alt="صورة القصة 7">
            </div>
            <div class="nav-buttons">
                <button onclick="scrollImages(-1)">السابق</button>
                <button onclick="scrollImages(1)">التالي</button>
            </div>
        </div>
    </div>

    <footer>
        <p>اتصل بنا: info@qissaswabir.com</p>
    </footer>

    <script>
        function scrollImages(direction) {
            const container = document.querySelector('.story-images');
            const scrollAmount = 300; // كمية التمرير
            container.scrollBy({ left: direction * scrollAmount, behavior: 'smooth' });
        }
    </script>
</body>
</html>
