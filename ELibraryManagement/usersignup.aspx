<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="usersignup.aspx.cs" Inherits="ELibraryManagement.usersignup" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

        <div class="container">
        <div class="row">
            <div class="col-md-8 mx-auto">

                <div class="card">
                    <div class="card-body">

                        <div class="row">
                            <div class="col">
                                <center>
                                    <img width="100px" src="imgs/generaluser.png">
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <center>
                                    <h4>User Registration</h4>
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <hr />
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>Full Name</label>
                                    <asp:TextBox CssClass="form-control" runat="server" placeholder="Full Name" ID="TextBox1"></asp:TextBox>
                                </div>
                            </div>

                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>Date of Birth</label>
                                    <asp:TextBox CssClass="form-control" runat="server" placeholder="Date of Birth" TextMode="Date" ID="TextBox2"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>Contact</label>
                                    <asp:TextBox CssClass="form-control" runat="server" placeholder="Number" TextMode="Phone" ID="TextBox3"></asp:TextBox>
                                </div>
                            </div>

                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>Email Address</label>
                                    <asp:TextBox Class="form-control" runat="server" placeholder="email address" TextMode="Email" ID="TextBox4"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <div class="form-group">
                                    <label>Address</label>
                                         <asp:TextBox Class="form-control" runat="server" placeholder="Address" ID="TextBox5"></asp:TextBox>     
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label>State</label>
                                         <asp:TextBox Class="form-control" runat="server" placeholder="State" ID="TextBox6"></asp:TextBox>     
                                </div>
                            </div>

                            <div class="col-md-4">
                                <div class="form-group">
                                    <label>City</label>
                                    <asp:TextBox Class="form-control" runat="server" placeholder="City" ID="TextBox7"></asp:TextBox>
                                </div>
                            </div>

                             <div class="col-md-4">
                                <div class="form-group">
                                    <label>Pin-code</label>
                                    <asp:TextBox Class="form-control" runat="server" placeholder="Pin-code" ID="TextBox8" TextMode="Number"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <center>
                                    <span class="badge badge-pill badge-info">Login Credentials</span>
                                </center>
                            </div>
                        </div>

                        <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label>User Id</label>
                                <asp:TextBox CssClass="form-control" runat="server" placeholder="User Id" ID="TextBox9"></asp:TextBox>
                            </div>
                        </div>

                        <div class="col-md-6">
                            <div class="form-group">
                                <label>Password</label>
                                <asp:TextBox Class="form-control" runat="server" placeholder="Password" TextMode="Password" ID="TextBox10"></asp:TextBox>
                            </div>
                        </div>
                    </div>

                    <div class="row">
                     <div class="col">
                           <div class="form-group">
                              <asp:Button class="btn btn-success btn-block btn-lg" ID="Button1" runat="server" Text="Sign-up" OnClick="Button1_Click" />
                           </div>
                     </div>
                  </div>


                    </div>
                </div>

                <a href="homepage.aspx"><< Back to Home</a><br /><br />

            </div> 
        </div>
    </div>

</asp:Content>
