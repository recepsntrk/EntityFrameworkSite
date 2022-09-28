<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="denemes.aspx.cs" Inherits="Satis.web.denemes" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="Accordion/css/style.css" rel="stylesheet" type="text/css" />
    <script src="Scripts/jquery-1.8.2.min.js" type="text/javascript"></script>
    <script src="Accordion/scripts/simpla.jquery.configuration.js" type="text/javascript"></script>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="margin:0 auto;width:300px;height:900px;overflow:hidden">
    <div id="sidebar"><div id="sidebar-wrapper"> <!-- Sidebar with logo and menu -->
			
			<h1 id="sidebar-title"><a href="#">Kategoriler</a></h1>

			<ul id="main-nav">  <!-- Accordion Menu -->		
				<li> 
					<a href="#" class="nav-top-item current"> <!-- Add the class "current" to current menu item -->
					Articles
					</a>
					<ul>
						<li><a href="#">Write a new Article</a></li>
						<li><a class="current" href="#">Manage Articles</a></li> <!-- Add class "current" to sub menu items also -->
						<li><a href="#">Manage Comments</a></li>
						<li><a href="#">Manage Categories</a></li>
					</ul>
				</li>
				
				<li>
					<a href="#" class="nav-top-item">
						Pages
					</a>
					<ul>
						<li><a href="#">Create a new Page</a></li>
						<li><a href="#">Manage Pages</a></li>
					</ul>
				</li>
				
				<li>
					<a href="#" class="nav-top-item">
						Image Gallery
					</a>
					<ul>
						<li><a href="#">Upload Images</a></li>
						<li><a href="#">Manage Galleries</a></li>
						<li><a href="#">Manage Albums</a></li>
						<li><a href="#">Gallery Settings</a></li>
					</ul>
				</li>
				
				<li>
					<a href="#" class="nav-top-item">
						Events Calendar
					</a>
					<ul>
						<li><a href="#">Calendar Overview</a></li>
						<li><a href="#">Add a new Event</a></li>
						<li><a href="#">Calendar Settings</a></li>
					</ul>
				</li>
				
				<li>
					<a href="#" class="nav-top-item">
						Settings
					</a>
					<ul>
						<li><a href="#">General</a></li>
						<li><a href="#">Design</a></li>
						<li><a href="#">Your Profile</a></li>
						<li><a href="#">Users and Permissions</a></li>
					</ul>
				</li>      
				
			</ul> <!-- End #main-nav -->
			
			
			
		</div></div>
    </div>
    </form>
</body>
</html>
