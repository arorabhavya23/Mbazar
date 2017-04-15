<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ForgotPassword.aspx.cs" Inherits="ForgotPassword" %>

<!DOCTYPE html>

<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Account | M Bazaar</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <link href="css/prettyPhoto.css" rel="stylesheet">
    <link href="css/price-range.css" rel="stylesheet">
    <link href="css/animate.css" rel="stylesheet">
	<link href="css/main.css" rel="stylesheet">
	<link href="css/responsive.css" rel="stylesheet">
    <!--[if lt IE 9]>
    <script src="js/html5shiv.js"></script>
    <script src="js/respond.min.js"></script>
    <![endif]-->       
    <link rel="shortcut icon" href="images/ico/favicon.ico">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="images/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="images/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="images/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="images/ico/apple-touch-icon-57-precomposed.png">
    <style type="text/css">
        .auto-style1 {
            background-color: #FF9933;
        }
        .auto-style2 {
            width: 50%;
            border: 5px solid #000000;
        }
        .auto-style3 {
            width: 119px;
        }
        .auto-style4 {
            width: 181px;
        }
        .auto-style5 {
            background-color: #FF9900;
        }
    </style>
    </head><!--/head-->

<body>
    <form id="form1" runat="server">
    
        <div>


	
	<header id="header"><!--header-->
		<div class="header_top"><!--header_top-->
			<div class="container">
				<div class="row">
					<div class="col-sm-6">
						<div class="contactinfo">
							<ul class="nav nav-pills">
								<li><a href="#"><i class="fa fa-phone"></i> +</a>919874563215</li>
								<li><a href="#"><i class="fa fa-envelope"></i> info@domain.com</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
        <div class="header-middle"><!--header-middle-->
			<div class="container">
				<div class="row">
					<div class="col-sm-8">
						<div class="shop-menu pull-right">
							<ul class="nav navbar-nav">
								<li><a href="#"><i class="fa fa-user"></i> Account</a></li>
                                <li><a href="#"><i class="fa fa-star"></i>Wishlist</a></li>
								<li><a href="checkout.html">
                                    <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/CheckOut.aspx">CheckOut</asp:HyperLink>
                                    </a></li>
								<li><a href="cart.html" class="active">
                                    <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/Cart.aspx">Cart</asp:HyperLink>
                                    </a></li>
								<li><a href="login.html">
                                    <asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="~/login.aspx">Login</asp:HyperLink>
                                    </a></li>
							</ul>
						</div>
					</div>
				&nbsp;&nbsp;&nbsp;&nbsp;
									<h1><span>M</span>-BAZAAR</h1>
									<h2>WELCOME TO M-BAZAAR</h2>
				</div>
			</div>
		</div><!--/header-middle-->
	
		<div class="header-bottom"><!--header-bottom-->
			<div class="container">
				<div class="row">
					<div class="col-sm-9">
						<div class="mainmenu pull-left">
							<ul class="nav navbar-nav collapse navbar-collapse">
								<li><a href="index.html">me</a></li>
								<li class="dropdown"><a href="#">Shop<i class="fa fa-angle-down"></i></a>
                                    <ul role="menu" class="sub-menu">
                                        <li><a href="shop.html">Products</a></li>
										<li><a href="product-details.html">Product Details</a></li> 
										<li><a href="checkout.html">Checkout</a></li> 
										<li><a href="cart.html" class="active">Cart</a></li> 
										<li><a href="login.html">Login</a></li> 
                                    </ul>
                                </li> 
								<li class="dropdown"><a href="#">Blog<i class="fa fa-angle-down"></i></a>
                                    <ul role="menu" class="sub-menu">
                                        <li><a href="blog.html">Blog List</a></li>
										<li><a href="blog-single.html">Blog Single</a></li>
                                    </ul>
                                </li> 
								<li><a href="404.html">404</a></li>
								<li><a href="contact-us.html">Contact</a></li>
							</ul>
						</div>
					</div>
					<div class="col-sm-3">
						<div class="search_box pull-right">
							<input type="text" placeholder="Search"/></div>
					</div>
				</div>
			</div>
		</div><!--/header-bottom-->
	</header><!--/header-->

	<section id="cart_items">
		<div class="container">
			<div class="breadcrumbs">
				<ol class="breadcrumb">
				  <li>
                      <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/HomePaget.aspx">Home</asp:HyperLink>
                    </li>
				  <li class="active"><span class="fa-inverse"><strong><span class="auto-style5">Forgo</span><span class="auto-style1">tPassword</span></strong></span>
                      </li>
                    </ol>
                <table align="center" cellspacing="6" class="auto-style2" style="border-style: groove; border-width: thick; width: 42%;">
                    <tr>
                        <td class="auto-style3" style="border: thick double #00FF00">UserName</td>
                        <td class="auto-style4" style="border: thick double #00FF00"><em></em>
                            <asp:TextBox ID="TextBoxUserName" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBoxUserName" ErrorMessage="RequiredField" ForeColor="Red" SetFocusOnError="True" ValidationGroup="reg"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style3" style="border: thick double #00FF00">EmailID</td>
                        <td class="auto-style4" style="border: thick double #00FF00"></b>
                            <asp:TextBox ID="TextBoxEmailID" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBoxEmailID" ErrorMessage="RequiredField" ForeColor="Red" ValidationGroup="reg"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style3" style="border: thick double #00FF00">
                            <asp:Button ID="Button1" runat="server" Text="PassRecovery" OnClick="Button1_Click" ValidationGroup="reg" />
                        </td>
                        <td class="auto-style4" style="border: thick double #00FF00"></b>
                            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                        </td>
                    </tr>
                </table>
                </div>
            </div>
        </section>
             <footer id="footer"><!--Footer-->
		<div class="footer-top">
			<div class="container">
				<div class="row">
					<div class="col-sm-2">
						<div class="companyinfo">
							<h2 class="auto-style2" style="font-size: xx-large">M-BAZAAR   <h2 class="auto-style1">SAB KUCH WHOLESALE RATE PAR</h2>
						</div>
					</div>
					<div class="col-sm-3">
						<div class="address">
							&nbsp;</div>
					</div>
				</div>
			</div>
		</div>
		
		<div class="footer-widget">
			<div class="container">
				<div class="row">
					<div class="col-sm-2">
						<div class="single-widget">
							<h2>Service</h2>
							<ul class="nav nav-pills nav-stacked">
								<li><a href="">Online Help</a></li>
								<li><a href="">Contact Us</a></li>
								<li><a href="">Order Status</a></li>
								<li><a href="">Change Location</a></li>
								<li><a href="">FAQ’s</a></li>
							</ul>
						</div>
					</div>
					<div class="col-sm-2">
						<div class="single-widget">
							<h2>Quock Shop</h2>
							<ul class="nav nav-pills nav-stacked">
								<li><a href="">T-Shirt</a></li>
								<li><a href="">Mens</a></li>
								<li><a href="">Womens</a></li>
								<li><a href="">Gift Cards</a></li>
								<li><a href="">Shoes</a></li>
							</ul>
						</div>
					</div>
					<div class="col-sm-2">
						<div class="single-widget">
							<h2>Policies</h2>
							<ul class="nav nav-pills nav-stacked">
								<li><a href="">Terms of Use</a></li>
								<li><a href="">Privecy Policy</a></li>
								<li><a href="">Refund Policy</a></li>
								<li><a href="">Billing System</a></li>
								<li><a href="">Ticket System</a></li>
							</ul>
						</div>
					</div>
					<div class="col-sm-2">
						<div class="single-widget">
							<h2>About Shopper</h2>
							<ul class="nav nav-pills nav-stacked">
								<li><a href="">Company Information</a></li>
								<li><a href="">Careers</a></li>
								<li><a href="">Store Location</a></li>
								<li><a href="">Affillate Program</a></li>
								<li><a href="">Copyright</a></li>
							</ul>
						</div>
					</div>
					<div class="col-sm-3 col-sm-offset-1">
						<div class="single-widget">
							<h2>About Shopper</h2>
								<input type="text" placeholder="Your email address" />
								<button type="submit" class="btn btn-default"><i class="fa fa-arrow-circle-o-right"></i></button>
								<p>Get the most recent updates from <br />our site and be updated your self...</p>
						</div>
					</div>
					
				</div>
			</div>
		</div>
		
		<div class="footer-bottom">
			<div class="container">
				<div class="row">
					<p class="pull-left">Copyright © 2013 M Bazaar Inc. All rights reserved.</p>
					
				</div>
			</div>
		</div>
		
	</footer><!--/Footer-->
    </form>
</body>
    

</html>
