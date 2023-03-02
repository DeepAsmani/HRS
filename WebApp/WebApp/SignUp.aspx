<%@ Page Title="" Language="C#" MasterPageFile="~/Index.Master" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="WebApp.SignUp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!-- background -->
 <section class="vh-100" style="background-color: #eee; ">
  <div class="container h-100">
    <div class="row d-flex justify-content-center align-items-center h-100">
      <div class="col-lg-12 col-xl-11">
        <div class="card text-black" style="border-radius: 25px;">
          <div class="card-body p-md-5">
            <div class="row justify-content-center">
              <div class="col-md-10 col-lg-6 col-xl-5 order-2 order-lg-1">

                <p class="text-center h1 fw-bold mb-5 mx-1 mx-md-4 mt-4">Sign up</p>

    <!-- Form -->
                <form class="mx-1 mx-md-4" action="SignIn.aspx">

                  <div class="d-flex flex-row align-items-center mb-4">
                    
                    <div class="form-outline flex-fill mb-0">
                        
                      
                      <label class="form-label" for="form3Example1c">Your Name</label>
                       <asp:TextBox ID="InputName" runat="server" class="form-control"></asp:TextBox>
                    </div>
                  </div>    
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
     <!--Conform Password -->
                  <div class="d-flex flex-row align-items-center mb-4">
                    <i class="fas fa-user fa-lg me-3 fa-fw"></i>
                    <div class="form-outline flex-fill mb-0">
                        
                      
                      <label class="form-label" for="form3Example1c">Confirm Password</label>
                       <asp:TextBox ID="ConfirmPassword" runat="server" class="form-control" TextMode="Password"></asp:TextBox>
                    </div>
                  </div>
    <!-- Register btn -->
                  <div class="d-flex justify-content-center mx-4 mb-3 mb-lg-4">
                      <asp:Button ID="RegistorButton" OnClick="RegBtn" runat="server" class="btn btn-primary btn-block" Text="Register" />
                  </div>
                     <div>
                        <p class="small fw-bold mt-2 pt-1 mb-0">Already have an account? <a href="SignIn.aspx"
                class="link-danger">SignIn</a></p>
                    </div>

                </form>

              </div>
              <div class="col-md-10 col-lg-6 col-xl-7 d-flex align-items-center order-1 order-lg-2">

                <img src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-registration/draw1.webp"
                  class="img-fluid" alt="Sample image">

              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>
</asp:Content>
