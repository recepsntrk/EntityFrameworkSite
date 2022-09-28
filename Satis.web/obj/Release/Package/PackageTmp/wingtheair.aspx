<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="wingtheair.aspx.cs" Inherits="Satis.web.wingtheair" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <link href="wingtheair/css/style.css" rel="stylesheet" type="text/css" />
    <script src="wingtheair/js/jquery-1.4.1.min.js" type="text/javascript"></script>
    <script src="wingtheair/js/jquery-func.js" type="text/javascript"></script>
    <script src="wingtheair/js/jquery.jcarousel.pack.js" type="text/javascript"></script>
    <script src="wingtheair/js/jquery.slide.js" type="text/javascript"></script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <div id="top">
	
	<div class="shell">
		
		<!-- Header -->
		<div id="header">
			<h1 id="logo"><a href="#">Adin Ajans</a></h1>
			<div id="navigation">
				<ul>
				    <li><a href="#">Ana Sayfa</a></li>
					<li><a href="#">Destek</a></li>
					<li><a href="#">Hesabım</a></li>
					<li><a href="#">Üye Ol</a></li>
					<li class="last"><a href="#">İletişim</a></li>
				</ul>
			</div>
		</div>
		<!-- End Header -->
		
		<!-- Slider -->
		<div id="slider">
			<div id="slider-holder">
                <asp:Literal ID="ltrslide" runat="server"></asp:Literal>
				<%--<ul>
				    <li><a href="#"><img src="wingtheair/css/images/slide1.jpg" alt="" /></a></li>
				    <li><a href="#"><img src="wingtheair/css/images/slide2.jpg" alt="" /></a></li>
				    <li><a href="#"><img src="wingtheair/css/images/slide1.jpg" alt="" /></a></li>
				    <li><a href="#"><img src="wingtheair/css/images/slide2.jpg" alt="" /></a></li>
				    <li><a href="#"><img src="wingtheair/css/images/slide1.jpg" alt="" /></a></li>
				    <li><a href="#"><img src="wingtheair/css/images/slide2.jpg" alt="" /></a></li>
				</ul>--%>
			</div>
			<div id="slider-nav">
				<a href="#" class="prev">Previous</a>
				<a href="#" class="next">Next</a>
			</div>
		</div>
		<!-- End Slider -->
		
	</div>
</div>
<!-- Top -->

<!-- Main -->
<div id="main">
	<div class="shell">
		
		<!-- Search, etc -->
		<div class="options">
			<div class="search">
				<form action="" method="post">
					<span class="field"><input type="text" class="blink" value="Arama" title="Arama" /></span>
					<input type="text" class="search-submit" value="GO" />
				</form>
			</div>
			<span class="left"><a href="#">Gelişmiş arama</a></span>
			
			<div class="right">
				<span class="cart">
					<a href="#" class="cart-ico">&nbsp;</a>
					<strong>$0.00</strong>
				</span>
				<span class="left more-links">
					<a href="#">Ödeme Yap</a>
					<a href="#">Sepet</a>
				</span>
			</div>
		</div>
		<!-- End Search, etc -->
		
		<!-- Content -->
		<div id="content">
			
			<!-- Tabs -->
			<div class="tabs">
				<ul>
				    <li><a href="#" class="active"><span>Nikah Şekeri</span></a></li>
				    <li><a href="#"><span>Bebek Şekeri</span></a></li>
				    <li><a href="#" class="red"><span>Sünnet Şekeri</span></a></li>
                    <li><a href="#" class="active"><span>Davetiye</span></a></li>
				</ul>
			</div>
			<!-- Tabs -->
			
			<!-- Container -->
			<div id="container">
				
				<div class="tabbed">
					
					<!-- First Tab Content -->
					<div class="tab-content" style="display:block;">
						<div class="items">
							<div class="cl">&nbsp;</div>
							
                                <asp:Literal ID="ltrurun" runat="server"></asp:Literal>
							    

						</div>
					</div>
                    
					<!-- End First Tab Content -->
					
					<!-- Second Tab Content -->
					<div class="tab-content">
						<div class="items">
							<div class="cl">&nbsp;</div>
							<ul>
							    <li>
							    	<div class="image">
							    		<a href="#"><img src="wingtheair/css/images/image2.jpg" alt="" /></a>
							    	</div>
							    	<p>
							    		Item Number: <span>125515</span><br />
							    		Size List : <span>8/8.5/9.5/10/11</span><br />
							    		Brand Name: <a href="#">Adidas Shoes</a>
							    	</p>
							    	<p class="price">Wholesale Price: <strong>53 USD</strong></p>
							    </li>
							    <li>
							    	<div class="image">
							    		<a href="#"><img src="wingtheair/css/images/image2.jpg" alt="" /></a>
							    	</div>
							    	<p>
							    		Item Number: <span>125515</span><br />
							    		Size List : <span>8/8.5/9.5/10/11</span><br />
							    		Brand Name: <a href="#">Adidas Shoes</a>
							    	</p>
							    	<p class="price">Wholesale Price: <strong>53 USD</strong></p>
							    </li>
							    <li>
							    	<div class="image">
							    		<a href="#"><img src="wingtheair/css/images/image2.jpg" alt="" /></a>
							    	</div>
							    	<p>
							    		Item Number: <span>125515</span><br />
							    		Size List : <span>8/8.5/9.5/10/11</span><br />
							    		Brand Name: <a href="#">Adidas Shoes</a>
							    	</p>
							    	<p class="price">Wholesale Price: <strong>53 USD</strong></p>
							    </li>
							    <li>
							    	<div class="image">
							    		<a href="#"><img src="wingtheair/css/images/image2.jpg" alt="" /></a>
							    	</div>
							    	<p>
							    		Item Number: <span>125515</span><br />
							    		Size List : <span>8/8.5/9.5/10/11</span><br />
							    		Brand Name: <a href="#">Adidas Shoes</a>
							    	</p>
							    	<p class="price">Wholesale Price: <strong>53 USD</strong></p>
							    </li>
							    <li>
							    	<div class="image">
							    		<a href="#"><img src="wingtheair/css/images/image1.jpg" alt="" /></a>
							    	</div>
							    	<p>
							    		Item Number: <span>125515</span><br />
							    		Size List : <span>8/8.5/9.5/10/11</span><br />
							    		Brand Name: <a href="#">Adidas Shoes</a>
							    	</p>
							    	<p class="price">Wholesale Price: <strong>53 USD</strong></p>
							    </li>
							    <li>
							    	<div class="image">
							    		<a href="#"><img src="wingtheair/css/images/image1.jpg" alt="" /></a>
							    	</div>
							    	<p>
							    		Item Number: <span>125515</span><br />
							    		Size List : <span>8/8.5/9.5/10/11</span><br />
							    		Brand Name: <a href="#">Adidas Shoes</a>
							    	</p>
							    	<p class="price">Wholesale Price: <strong>53 USD</strong></p>
							    </li>
							    <li>
							    	<div class="image">
							    		<a href="#"><img src="wingtheair/css/images/image1.jpg" alt="" /></a>
							    	</div>
							    	<p>
							    		Item Number: <span>125515</span><br />
							    		Size List : <span>8/8.5/9.5/10/11</span><br />
							    		Brand Name: <a href="#">Adidas Shoes</a>
							    	</p>
							    	<p class="price">Wholesale Price: <strong>53 USD</strong></p>
							    </li>
							    <li>
							    	<div class="image">
							    		<a href="#"><img src="wingtheair/css/images/image1.jpg" alt="" /></a>
							    	</div>
							    	<p>
							    		Item Number: <span>125515</span><br />
							    		Size List : <span>8/8.5/9.5/10/11</span><br />
							    		Brand Name: <a href="#">Adidas Shoes</a>
							    	</p>
							    	<p class="price">Wholesale Price: <strong>53 USD</strong></p>
							    </li>
							</ul>
							<div class="cl">&nbsp;</div>
						</div>
					</div>
					<!-- End Second Tab Content -->
					
					<!-- Third Tab Content -->
					<div class="tab-content">
						<div class="items">
							<div class="cl">&nbsp;</div>
							<ul>
							    <li>
							    	<div class="image">
							    		<a href="#"><img src="wingtheair/css/images/image3.jpg" alt="" /></a>
							    	</div>
							    	<p>
							    		Item Number: <span>125515</span><br />
							    		Size List : <span>8/8.5/9.5/10/11</span><br />
							    		Brand Name: <a href="#">Adidas Shoes</a>
							    	</p>
							    	<p class="price">Wholesale Price: <strong>53 USD</strong></p>
							    </li>
							    <li>
							    	<div class="image">
							    		<a href="#"><img src="wingtheair/css/images/image3.jpg" alt="" /></a>
							    	</div>
							    	<p>
							    		Item Number: <span>125515</span><br />
							    		Size List : <span>8/8.5/9.5/10/11</span><br />
							    		Brand Name: <a href="#">Adidas Shoes</a>
							    	</p>
							    	<p class="price">Wholesale Price: <strong>53 USD</strong></p>
							    </li>
							    <li>
							    	<div class="image">
							    		<a href="#"><img src="wingtheair/css/images/image3.jpg" alt="" /></a>
							    	</div>
							    	<p>
							    		Item Number: <span>125515</span><br />
							    		Size List : <span>8/8.5/9.5/10/11</span><br />
							    		Brand Name: <a href="#">Adidas Shoes</a>
							    	</p>
							    	<p class="price">Wholesale Price: <strong>53 USD</strong></p>
							    </li>
							    <li>
							    	<div class="image">
							    		<a href="#"><img src="wingtheair/css/images/image3.jpg" alt="" /></a>
							    	</div>
							    	<p>
							    		Item Number: <span>125515</span><br />
							    		Size List : <span>8/8.5/9.5/10/11</span><br />
							    		Brand Name: <a href="#">Adidas Shoes</a>
							    	</p>
							    	<p class="price">Wholesale Price: <strong>53 USD</strong></p>
							    </li>
							    <li>
							    	<div class="image">
							    		<a href="#"><img src="wingtheair/css/images/image4.jpg" alt="" /></a>
							    	</div>
							    	<p>
							    		Item Number: <span>125515</span><br />
							    		Size List : <span>8/8.5/9.5/10/11</span><br />
							    		Brand Name: <a href="#">Adidas Shoes</a>
							    	</p>
							    	<p class="price">Wholesale Price: <strong>53 USD</strong></p>
							    </li>
							    <li>
							    	<div class="image">
							    		<a href="#"><img src="wingtheair/css/images/image4.jpg" alt="" /></a>
							    	</div>
							    	<p>
							    		Item Number: <span>125515</span><br />
							    		Size List : <span>8/8.5/9.5/10/11</span><br />
							    		Brand Name: <a href="#">Adidas Shoes</a>
							    	</p>
							    	<p class="price">Wholesale Price: <strong>53 USD</strong></p>
							    </li>
							    <li>
							    	<div class="image">
							    		<a href="#"><img src="wingtheair/css/images/image4.jpg" alt="" /></a>
							    	</div>
							    	<p>
							    		Item Number: <span>125515</span><br />
							    		Size List : <span>8/8.5/9.5/10/11</span><br />
							    		Brand Name: <a href="#">Adidas Shoes</a>
							    	</p>
							    	<p class="price">Wholesale Price: <strong>53 USD</strong></p>
							    </li>
							    <li>
							    	<div class="image">
							    		<a href="#"><img src="wingtheair/css/images/image4.jpg" alt="" /></a>
							    	</div>
							    	<p>
							    		Item Number: <span>125515</span><br />
							    		Size List : <span>8/8.5/9.5/10/11</span><br />
							    		Brand Name: <a href="#">Adidas Shoes</a>
							    	</p>
							    	<p class="price">Wholesale Price: <strong>53 USD</strong></p>
							    </li>
							
							    <li>
							    	<div class="image">
							    		<a href="#"><img src="wingtheair/css/images/image2.jpg" alt="" /></a>
							    	</div>
							    	<p>
							    		Item Number: <span>125515</span><br />
							    		Size List : <span>8/8.5/9.5/10/11</span><br />
							    		Brand Name: <a href="#">Adidas Shoes</a>
							    	</p>
							    	<p class="price">Wholesale Price: <strong>53 USD</strong></p>
							    </li>
							    <li>
							    	<div class="image">
							    		<a href="#"><img src="wingtheair/css/images/image2.jpg" alt="" /></a>
							    	</div>
							    	<p>
							    		Item Number: <span>125515</span><br />
							    		Size List : <span>8/8.5/9.5/10/11</span><br />
							    		Brand Name: <a href="#">Adidas Shoes</a>
							    	</p>
							    	<p class="price">Wholesale Price: <strong>53 USD</strong></p>
							    </li>
							    <li>
							    	<div class="image">
							    		<a href="#"><img src="wingtheair/css/images/image2.jpg" alt="" /></a>
							    	</div>
							    	<p>
							    		Item Number: <span>125515</span><br />
							    		Size List : <span>8/8.5/9.5/10/11</span><br />
							    		Brand Name: <a href="#">Adidas Shoes</a>
							    	</p>
							    	<p class="price">Wholesale Price: <strong>53 USD</strong></p>
							    </li>
							    <li>
							    	<div class="image">
							    		<a href="#"><img src="wingtheair/css/images/image2.jpg" alt="" /></a>
							    	</div>
							    	<p>
							    		Item Number: <span>125515</span><br />
							    		Size List : <span>8/8.5/9.5/10/11</span><br />
							    		Brand Name: <a href="#">Adidas Shoes</a>
							    	</p>
							    	<p class="price">Wholesale Price: <strong>53 USD</strong></p>
							    </li>
							    <li>
							    	<div class="image">
							    		<a href="#"><img src="wingtheair/css/images/image1.jpg" alt="" /></a>
							    	</div>
							    	<p>
							    		Item Number: <span>125515</span><br />
							    		Size List : <span>8/8.5/9.5/10/11</span><br />
							    		Brand Name: <a href="#">Adidas Shoes</a>
							    	</p>
							    	<p class="price">Wholesale Price: <strong>53 USD</strong></p>
							    </li>
							    <li>
							    	<div class="image">
							    		<a href="#"><img src="wingtheair/css/images/image1.jpg" alt="" /></a>
							    	</div>
							    	<p>
							    		Item Number: <span>125515</span><br />
							    		Size List : <span>8/8.5/9.5/10/11</span><br />
							    		Brand Name: <a href="#">Adidas Shoes</a>
							    	</p>
							    	<p class="price">Wholesale Price: <strong>53 USD</strong></p>
							    </li>
							    <li>
							    	<div class="image">
							    		<a href="#"><img src="wingtheair/css/images/image1.jpg" alt="" /></a>
							    	</div>
							    	<p>
							    		Item Number: <span>125515</span><br />
							    		Size List : <span>8/8.5/9.5/10/11</span><br />
							    		Brand Name: <a href="#">Adidas Shoes</a>
							    	</p>
							    	<p class="price">Wholesale Price: <strong>53 USD</strong></p>
							    </li>
							    <li>
							    	<div class="image">
							    		<a href="#"><img src="wingtheair/css/images/image1.jpg" alt="" /></a>
							    	</div>
							    	<p>
							    		Item Number: <span>125515</span><br />
							    		Size List : <span>8/8.5/9.5/10/11</span><br />
							    		Brand Name: <a href="#">Adidas Shoes</a>
							    	</p>
							    	<p class="price">Wholesale Price: <strong>53 USD</strong></p>
							    </li>
						    </ul>
							<div class="cl">&nbsp;</div>
						</div>
					</div>
					<!-- End Third Tab Content -->
					
				</div>
				
				<!-- Brands -->
				<div class="brands">
					<h3>Brands</h3>
					<div class="logos">
						<a href="#"><img src="wingtheair/css/images/logo1.gif" alt="" /></a>
						<a href="#"><img src="wingtheair/css/images/logo2.gif" alt="" /></a>
						<a href="#"><img src="wingtheair/css/images/logo3.gif" alt="" /></a>
						<a href="#"><img src="wingtheair/css/images/logo4.gif" alt="" /></a>
						<a href="#"><img src="wingtheair/css/images/logo5.gif" alt="" /></a>
					</div>
				</div>
				<!-- End Brands -->
				
				<!-- Footer -->
				<div id="footer">
					<div class="left">
						<a href="#">Home</a>
						<span>|</span>
						<a href="#">Support</a>
						<span>|</span>
						<a href="#">My Account</a>
						<span>|</span>
						<a href="#">The Store</a>
						<span>|</span>
						<a href="#">Contact</a>
					</div>
					<div class="right">
						&copy; Sitename.com. Design by <a href="http://chocotemplates.com" target="_blank" title="CSS Templates">ChocoTemplates.com</a>
					</div>
				</div>
				<!-- End Footer -->
				
			</div>
			<!-- End Container -->
			
		</div>
		<!-- End Content -->
		
	</div>
</div>
    </div>
    </form>
</body>
</html>
