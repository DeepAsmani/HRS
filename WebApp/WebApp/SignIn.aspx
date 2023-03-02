<%@ Page Title="" Language="C#" MasterPageFile="~/Index.Master" AutoEventWireup="true" CodeBehind="SignIn.aspx.cs" Inherits="WebApp.SignIn" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <section class="hero-section">
        <div class="container">
            <div class="row">
                <div class="col-lg-6">
                    <div class="hero-text">
                        <h1>Hotel Amisha</h1>
                        
                        <a href="#" class="primary-btn">Discover Now</a>
                    </div>
                </div>
                <!--Login Start-->
                <div class="col-xl-4 col-lg-5 offset-xl-2 offset-lg-1">
                    <div class="booking-form">
                        <h3>Login Here...</h3>
                        <form class="mx-1 mx-md-4" action="#">
                         <!-- Email -->
                            <div class="d-flex flex-row align-items-center mb-4">
                                <i class="fas fa-user fa-lg me-3 fa-fw"></i>
                                    <div class="form-outline flex-fill mb-0">
                                      <label class="form-label" for="form3Example1c">Your Email</label>
                                        <asp:TextBox ID="InputEmail" runat="server" class="form-control" TextMode="Email"></asp:TextBox>
                                    </div>
                               </div>
                            <!-- Password -->
                              <div class="d-flex flex-row align-items-center mb-4">
                                <i class="fas fa-user fa-lg me-3 fa-fw"></i>
                                <div class="form-outline flex-fill mb-0">
                                  <label class="form-label" for="form3Example1c">Enter Password</label>
                                   <asp:TextBox ID="InputPassword" runat="server" class="form-control" TextMode="Password"></asp:TextBox>
                                </div>
                              </div>
                            <!-- Forget Password -->
                              <div class="form-check d-flex justify-content mb-5">
                                <a href="#!" class="link-dark" >Forgot password?</a>
                              </div>
                             <!-- Login btn -->
                              <div class="d-flex justify-content-center mx-4 mb-3 mb-lg-4">
                                  <asp:Button ID="Button1" OnClick="LoginCick" runat="server" class="btn btn-primary btn-block" Text="Login" />
                              </div>
                               <div>
                                    <p class="small fw-bold mt-2 pt-1 mb-0">Don't have an account? <a href="SignUp.aspx" class="link-danger">Register</a></p>
                               </div>

                            </div>
                       </div>
                <!--Login End-->
            </div>
        </div>
        <div class="hero-slider owl-carousel">
            <div class="hs-item set-bg" data-setbg="img/hero/hero-1.jpg"></div>
            <div class="hs-item set-bg" data-setbg="img/hero/hero-2.jpg"></div>
            <div class="hs-item set-bg" data-setbg="img/hero/hero-3.jpg"></div>
        </div>
    </section>
  <script src="js/jquery-3.3.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.magnific-popup.min.js"></script>
    <script src="js/jquery.nice-select.min.js"></script>
    <script src="js/jquery-ui.min.js"></script>
    <script src="js/jquery.slicknav.js"></script>
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/main.js"></script>

</asp:Content>
