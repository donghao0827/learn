<!doctype html>
<head>
	<title>coffee store</title>
	<meta charset="utf-8">
  <link rel="stylesheet" type="text/css" href="css/reset.css">
	<link rel="stylesheet" type="text/css" href="css/coffee.css">
  <link rel="stylesheet" type="text/css" href="css/font-awesome.min.css">
</head> 
<html>
	<body>
		<div class="container">
			<div class="header">
				<div class="header-left">
					<span><img src="image/coffee-brand.png"></span>
				</div>
				<div id="company-name" class="header-left">
					<a href="#">The Memory of Coffee</a>
				</div>
				<div class="header-right">
					<span>Welcome!</span>
				</div>
        <div class="search header-right">
          <form action="product-list.php">
            <input name="search" type="text">
            <input type="submit" value="search">
          </form>
				</div> 
			</div>
			<div class="navigation">
				<ul class="navbar">
					<li><a href="index.php"><button>Home</button></a></li>
					<li><a href="about.php"><button>About Us</button></a></li>
					<li><a href="product-list.php"><button>Product</button></a></li>
					<li><a href="contact.php"><button>Contact Us</button></a></li>
				</ul>
			</div>
			<div class="main">
        <div class="banner">
          <div class="imageList">
            <img src="image/roll1.jpg" id="img1">
            <img src="image/roll2.jpg" id="img2">
            <img src="image/roll3.jpg" id="img3">
          </div>
        </div>
        <h1>Coffee Maker</h1>
				<table>
					<tr>
             <?php require_once('queryDb.php'); $data = getProducts('Maker');
              for ($i=0;$i<sizeof($data);$i++) {
                echo '
                  <td>
                    <div class="image-box">
                      <a href="product.php?name='.$data[$i]["name"].'"><img src='.$data[$i]["url"].'></a>
                      <div class="info">
                        <p>'.$data[$i]["name"].'</p>
                        <h3><del>$'.$data[$i]["original_price"].'</del></h3>
                        <h2>$'.$data[$i]["present_price"].'</h2>
                       </div>
                    </div>
                  </td>
                ';
              }
            ?>
          </tr>
					<tr>  
					</tr>
				</table>
        <h1>Coffee Bean</h1>
        <table>
					<tr>
             <?php require_once('queryDb.php'); $data = getProducts('Bean');
              for ($i=0;$i<sizeof($data);$i++) {
                echo '
                 <td>
                    <div class="image-box">
                      <a href="product.php?name='.$data[$i]["name"].'"><img src='.$data[$i]["url"].'></a>
                      <div class="info">
                        <p>'.$data[$i]["name"].'</p>
                        <h3><del>$'.$data[$i]["original_price"].'</del></h3>
                        <h2>$'.$data[$i]["present_price"].'</h2>
                       </div>
                    </div>
                  </td>
                ';
              }
            ?>
          </tr>
					<tr>  
					</tr>
				</table>
        <h1>Coffee Cup</h1>
        <table>
					<tr>
             <?php require_once('queryDb.php'); $data = getProducts('Mug');
              for ($i=0;$i<sizeof($data);$i++) {
                echo '
                 <td>
                    <div class="image-box">
                      <a href="product.php?name='.$data[$i]["name"].'"><img src='.$data[$i]["url"].'></a>
                      <div class="info">
                        <p>'.$data[$i]["name"].'</p>
                        <h3><del>$'.$data[$i]["original_price"].'</del></h3>
                        <h2>$'.$data[$i]["present_price"].'</h2>
                       </div>
                    </div>
                  </td>
                ';
              }
            ?>
          </tr>
					<tr>  
					</tr>
				</table>
			</div>
			<div class="footer">
        <ul>
          <li><a href="https://www.linkedin.com/" class="button social"><button><i class="fa fa-fw fa-linkedin"></i></button></a></li>
          <li><a href="https://www.github.com/" class="button social"><button><i class="fa fa-fw fa-github"></i></button></a></li>
          <li><a href="https://www.twitter.com/" class="button social"><button><i class="fa fa-fw fa-twitter"></i></button></a></li>
          <li><a href="https://www.facebook.com/" class="button social"><button><i class="fa fa-fw fa-facebook"></i></button></a></li>
        </ul>
			</div>
		</div>
      <script src="js/jquery.min.js"></script>
      <script type="text/javascript">
        $(document).ready(function(){
          	window.setInterval(()=>{
              var left = $(".imageList").css("left");
              console.log(left);
              left = parseInt(left.split("px")[0]);
              left = left - 1030;
              if(left < -2060) left = 0;
              $(".imageList").css("left",left+"px")
            }, 3000)     
        })
     </script>
	</body>
</html>