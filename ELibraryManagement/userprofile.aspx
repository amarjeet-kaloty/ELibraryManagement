<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="userprofile.aspx.cs" Inherits="ELibraryManagement.userprofile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

      <div class="container-fluid">
        <div class="row">
            <div class="col-md-5">
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
                                    <h4>Your Profile</h4>
                                    <span>Account Status- </span>
                                        <asp:Label class="bagde badge-pill badge-info" runat="server" placeholder="Your Status">Your Status</asp:Label>
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
                                    <asp:TextBox CssClass="form-control" runat="server" placeholder="Full Name"></asp:TextBox>
                                </div>
                            </div>

                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>Date of Birth</label>
                                    <asp:TextBox CssClass="form-control" runat="server" placeholder="Date of Birth" TextMode="Date"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>Contact</label>
                                    <asp:TextBox CssClass="form-control" runat="server" placeholder="Number" TextMode="Phone"></asp:TextBox>
                                </div>
                            </div>

                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>Email Address</label>
                                    <asp:TextBox Class="form-control" runat="server" placeholder="email address" TextMode="Email"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <div class="form-group">
                                    <label>Address</label>
                                         <asp:TextBox Class="form-control" runat="server" placeholder="Address" ></asp:TextBox>     
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label>State</label>
                                         <asp:TextBox Class="form-control" runat="server" placeholder="State" ></asp:TextBox>     
                                </div>
                            </div>

                            <div class="col-md-4">
                                <div class="form-group">
                                    <label>City</label>
                                    <asp:TextBox Class="form-control" runat="server" placeholder="City" ></asp:TextBox>
                                </div>
                            </div>

                             <div class="col-md-4">
                                <div class="form-group">
                                    <label>Pin-code</label>
                                    <asp:TextBox Class="form-control" runat="server" placeholder="Pin-code" TextMode="Number"></asp:TextBox>
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
                        <div class="col-md-4">
                            <div class="form-group">
                                <label>User Id</label>
                                <asp:TextBox CssClass="form-control" runat="server" placeholder="User Id" ReadOnly="true"></asp:TextBox>
                            </div>
                        </div>

                        <div class="col-md-4">
                            <div class="form-group">
                                <label>Old Password</label>
                                <asp:TextBox Class="form-control" runat="server" placeholder="Old Password" TextMode="Password" ReadOnly="true"></asp:TextBox>
                            </div>
                        </div>

                        <div class="col-md-4">
                            <div class="form-group">
                                <label>New Password</label>
                                <asp:TextBox Class="form-control" runat="server" placeholder="New Password" TextMode="Password"></asp:TextBox>
                            </div>
                        </div>    
                    </div>

                    <div class="row">
                     <div class="col-8 mx-auto">
                           <div class="form-group">
                            <center>
                               <asp:Button class="btn btn-primary btn-block btn-lg" ID="Button1" runat="server" Text="Update" />
                              </center>
                           </div>
                     </div>
                  </div>


                    </div>
                </div>
            </div> 

            <div class="col-md-7">     
                <div class="card">
                    <div class="card-body">

                        <div class="row">
                            <div class="col">
                                <center>
                                    <img width="100px" src="imgs/books1.png">
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <center>
                                    <h4>Books Info</h4>
                                    <span>Account Status- </span>
                                        <asp:Label class="bagde badge-pill badge-info" runat="server" >Books Info</asp:Label>
                                </center>
                            </div>
                        </div>

                         <div class="row">
                            <div class="col">
                                <hr />  
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                              <asp:GridView class="table-striped table-bordered" runat="server"></asp:GridView>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
