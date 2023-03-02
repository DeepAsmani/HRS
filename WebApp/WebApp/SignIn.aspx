<%@ Page Title="" Language="C#" MasterPageFile="~/Index.Master" AutoEventWireup="true" CodeBehind="SignIn.aspx.cs" Inherits="WebApp.SignIn" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    


    <!-- background -->
 <section class="vh-100" style="background-color: #eee;">
  <div class="container h-100">
    <div class="row d-flex justify-content-center align-items-center h-100">
      <div class="col-lg-12 col-xl-11">
        <div class="card text-black" style="border-radius: 25px;">
          <div class="card-body p-md-5">
            <div class="row justify-content-center">
              <div class="col-md-10 col-lg-6 col-xl-5 order-2 order-lg-1">

                <p class="text-center h1 fw-bold mb-5 mx-1 mx-md-4 mt-4">Sign In</p>

    <!-- Form -->
                <form class="mx-1 mx-md-4" action="#">

                 
    <!-- Email -->
                  <div class="d-flex flex-row align-items-center mb-4">
                    <i class="fas fa-user fa-lg me-3 fa-fw"></i>
                    <div class="form-outline flex-fill mb-0">
                        
                      
                      <label class="form-label" for="form3Example1c">Your Email</label>
                       <asp:TextBox ID="YourEmail" runat="server" class="form-control" TextMode="Email"></asp:TextBox>
                    </div>
                  </div>
     <!-- Password -->
                  <div class="d-flex flex-row align-items-center mb-4">
                    <i class="fas fa-user fa-lg me-3 fa-fw"></i>
                    <div class="form-outline flex-fill mb-0">
                        
                      
                      <label class="form-label" for="form3Example1c">Enter Password</label>
                       <asp:TextBox ID="Password" runat="server" class="form-control" TextMode="Password"></asp:TextBox>
                    </div>
                  </div>
    
     <!-- check box -->
                  <div class="form-check d-flex justify-content-center mb-5">
                    &nbsp;<label class="form-check-label" for="form2Example3">
                        
                        <asp:CheckBox ID="LoginCheckBox" runat="server" /> Remember me 
                    </label>
					 &nbsp;  &nbsp;<a href="#!" class="link-dark" >Forgot password?</a><br/>
                      
                  </div>

    <!-- Login btn -->
                  <div class="d-flex justify-content-center mx-4 mb-3 mb-lg-4">
                      <asp:Button ID="LoginButton" runat="server" class="btn btn-primary btn-block" Text="Login" />
                  </div>
                    <div>
                        <p class="small fw-bold mt-2 pt-1 mb-0">Don't have an account? <a href="SignUp.aspx"
                class="link-danger">Register</a></p>
                    </div>

                </form>

              </div>
              <div class="col-md-10 col-lg-6 col-xl-7 d-flex align-items-center order-1 order-lg-2">
                  
                <img src="imgs/log-in-g0eb1bedbf_1280.png" style=" width: 300px; margin-right:100px;"
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
