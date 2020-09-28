<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminMemberManagement.aspx.cs" Inherits="ELibraryManagement.adminMemberManagement" %>
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
                                    <h4>Member Details</h4>
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <hr />  
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-3">
                                <label>Member Id</label>
                                <div class="form-group">
                                   <div class="input-group">
                                     <asp:TextBox CssClass="form-control" runat="server" placeholder="Id" ></asp:TextBox>
                                     <asp:Button class="btn btn-dark" ID="Button2" runat="server" Text="Go" />
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-4">
                                <label>Full Name</label>
                                <div class="form-group">
                                        <asp:TextBox CssClass="form-control" runat="server" placeholder="Full Name" ReadOnly="true"></asp:TextBox>
                                </div>
                            </div>

                             <div class="col-md-5">
                                <label>Status</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox CssClass="form-control mr-1" runat="server" placeholder="P" ReadOnly="true"></asp:TextBox>
                                        <asp:LinkButton class="btn btn-success mr-1" ID="LinkButton1" runat="server"><i class="fas fa-check-circle"></i></asp:LinkButton>
                                        <asp:LinkButton class="btn btn-warning mr-1" ID="LinkButton2" runat="server"><i class="far fa-pause-circle"></i></asp:LinkButton>
                                        <asp:LinkButton class="btn btn-danger mr-1" ID="LinkButton3" runat="server"><i class="fas fa-times-circle"></i></asp:LinkButton>
                                    </div>
                                </div>
                            </div>

                        </div>

                        <div class="row">
                            <div class="col-md-3">
                                <label>Date of Birth</label>
                                <div class="form-group">
                                     <asp:TextBox CssClass="form-control" runat="server" placeholder="DOB" ReadOnly="true" ></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <label>Contact No</label>
                                <div class="form-group">
                                     <asp:TextBox CssClass="form-control" runat="server" placeholder="Contact Number" ReadOnly="true" ></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-5">
                                <label>Email</label>
                                <div class="form-group">
                                     <asp:TextBox CssClass="form-control" runat="server" placeholder="Email" ReadOnly="true" ></asp:TextBox>
                                </div>
                            </div> 
                        </div>

                        <div class="row">
                            <div class="col-md-4">
                                <label>State</label>
                                <div class="form-group">
                                     <asp:TextBox CssClass="form-control" runat="server" placeholder="State" ReadOnly="true" ></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <label>City</label>
                                <div class="form-group">
                                     <asp:TextBox CssClass="form-control" runat="server" placeholder="City" ReadOnly="true" ></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <label>Pin-code</label>
                                <div class="form-group">
                                     <asp:TextBox CssClass="form-control" runat="server" placeholder="Pin-code" ReadOnly="true" ></asp:TextBox>
                                </div>
                            </div> 
                        </div>

                        <div class="row">
                            <div class="col-12"
                                <label>Address</label>
                                <div class="form-group">
                                     <asp:TextBox CssClass="form-control" runat="server" placeholder="Address" ReadOnly="true" ></asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                             <div class="col-12 mx-auto">
                                    <center>
                                       <asp:Button class="btn btn-lg btn-danger btn-block" ID="Button10" runat="server" Text="Delete User Permanently" />
                                      </center>
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
                                    <h4>Members List</h4>
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
                              <asp:GridView class="table table-striped table-bordered" runat="server"></asp:GridView>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
