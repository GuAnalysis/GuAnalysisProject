<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br/><br/>
			<!-- Features -->
				<div id="features-wrapper">
					<div class="container">
						<div class="row">
							<div class="4u 12u(medium)">

								<!-- Box -->
									<section class="box feature">
										<a href="#" class="image featured" runat="server"><img src="Content/images/pay.jpg" alt="" /></a>
										<div class="inner" style="height:500px;">
											<header><div style="text-align:center">
												<h2>Payments</h2>
											</div></header>
                                            <p>
                                                Thanks to our website you can pay for your medical
                                                exams online without waiting! This innovative solution
                                                is designed especially for your needs. Down below you can
                                                see a list of all the payments. Additionally, if you sign up
                                                in our website you can have the chance of obtaining a points
                                                card.
                                            </p>
                                            <br />
                                            <div style="text-align:right"><asp:Button ID="btReadMore" runat="server" Text="Read more..." Font-Size="Small" Font-Bold="True" BackColor="#0090C5" /></div>
                                        </div>
									</section>

							</div>
							<div class="4u 12u(medium)">

								<!-- Box -->
									<section class="box feature">
										<a href="#" class="image featured" runat="server"><img src="Content/images/exams.jpg" alt="" /></a>
										<div class="inner" style="height:500px;">
											<header><div style="text-align:center">
												<h2>Medical Exams</h2>
											</div></header>
											<p>
                                                Here you can find a list of all the available exams
                                                on our website. Try it out!
											</p>
                                            <br /><br /><br /><br /><br /><br />
                                            <div style="text-align:right"><asp:Button ID="btExams" runat="server" Text="Read more..." Font-Size="Small" Font-Bold="True" BackColor="#0090C5"/></div>
										</div>
									</section>

							</div>
							<div class="4u 12u(medium)">

								<!-- Box -->
									<section class="box feature">
										<a href="#" class="image featured" runat="server"><img src="Content/images/lab.jpg" alt="" /></a>
										<div class="inner" style="height:500px;">
											<header><div style="text-align:center">
												<h2>Laboratories</h2>
											</div></header>
											<p>
                                                In this section we provide you a list of all the laboratories
                                                in Portugal with which we signed contracts. For your convienience
                                                we included there localizations.
											</p>
                                            <br /><br /><br /><br />
                                            <div style="text-align:right"><asp:Button ID="btLaboratories" runat="server" Text="Read more..." Font-Size="Small" Font-Bold="True" BackColor="#0090C5"/></div>
										</div>
									</section>

							</div>
						</div>
					</div>
				</div>

			<!-- Main -->
				<div id="main-wrapper">
					<div class="container">
						<div class="row 200%">
							<div class="4u 12u(medium)">

								<!-- Sidebar -->
									<div id="sidebar">
										<section class="widget thumbnails">
											<a href="#" class="image featured" runat="server"><img src="Content/images/logo2.jpg" alt="" /></a>
                                            <%--<h3>Interesting stuff</h3>
											<div class="grid">
												<div class="row 50%">
													<div class="6u"><a href="#" class="image fit"><img src="Content/images/pic04.jpg" alt="" /></a></div>
													<div class="6u"><a href="#" class="image fit"><img src="Content/images/pic05.jpg" alt="" /></a></div>
													<div class="6u"><a href="#" class="image fit"><img src="Content/images/pic06.jpg" alt="" /></a></div>
													<div class="6u"><a href="#" class="image fit"><img src="Content/images/pic07.jpg" alt="" /></a></div>
												</div>
											</div>--%>
										</section>
									</div>

							</div>
							<div class="8u 12u(medium) important(medium)">

								<!-- Content -->
									<div id="content">
										<section class="last">
											<h2>Who are we?</h2>
											<p>We are called <strong>GuAnalysis</strong>, a free and flourishing website 
                                               which will help you sign up for any medical exam in Portugal. Our headquarters
                                               are located in Guarda, the highest city in Portugal.
											</p>
											<p>
                                                It takes only a few clicks for you to book an appointment. The results are 
                                                available online too! Already 1 mln people registered onto our website, be the
                                                next!
											</p>
										</section>
									</div>

							</div>
						</div>
					</div>
				</div>

			

							</div>
							
							<div class="3u 6u$(medium) 12u$(small)">
    
            </div>
           
</asp:Content>
