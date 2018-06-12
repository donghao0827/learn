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
        <?php 
          $search = $_GET['search'];
          require_once('queryDb.php'); $data = getProducts($search?$search:null);
          for ($i=0;$i<sizeof($data);$i++) {
            $detail = explode("/*/", $data[$i]["details"]);
            $details = "";
            for ($j=0;$j<sizeof($detail);$j++) {
              $details = $details."<li>".$detail[$j]."</li>";
            }
//             echo $details;
            echo '
                <div class="product-list">
                   <div class="img-left">
                     <a href="product.php?name='.$data[$i]["name"].'"><img src='.$data[$i]["url"].'></a>
                   </div>
                   <div class="detail-right">
                     <div class="info">
                        <p><h2>'.$data[$i]["name"].'</h2></p>
                        <h3 class="cost"><del>$'.$data[$i]["original_price"].'</del></h3>
                        <h2 class="cost">$'.$data[$i]["present_price"].'</h2>
                     </div>
                    <ul>'.$details.'</ul>
                   </div>
                </div>
              ';
          }
        ?>
      </div>
      <div class="footer">
            <ul>
              <li><a href="https://www.linkedin.com/" class="button social"><button><i class="fa fa-fw fa-linkedin"></i></button></a></li>
              <li><a href="https://www.github.com/" class="button social"><button><i class="fa fa-fw fa-github"></i></button></a></li>
              <li><a href="https://www.twitter.com/" class="button social"><button><i class="fa fa-fw fa-twitter"></i></button></a></li>
              <li><a href="https://www.facebook.com/" class="button social"><button><i class="fa fa-fw fa-facebook"></i></button></a></li>
            </ul>
      </div>
	</body>
</html>