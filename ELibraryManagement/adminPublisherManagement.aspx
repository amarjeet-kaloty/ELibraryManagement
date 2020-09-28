<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminPublisherManagement.aspx.cs" Inherits="ELibraryManagement.adminPublisherManagement" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

        <div class="container">
        <div class="row">
            <div class="col-md-5">
                <div class="card">
                    <div class="card-body">

                        <div class="row">
                            <div class="col">
                                <center>
                                    <img width="100px" src="imgs/publisher.png">
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <center>
                                    <h4>Publisher Details</h4>
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <hr />  
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-4">
                                <label>Publisher ID</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox CssClass="form-control" runat="server" placeholder="ID"></asp:TextBox>
                                         <asp:Button class="btn btn-primary" ID="Button2" runat="server" Text="Go" />
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-8">
                                <div class="form-group">
                                    <label>Publisher Name</label>
                                    <asp:TextBox CssClass="form-control" runat="server" placeholder="Author Name" ></asp:TextBox>
                                </div>
                            </div>
                        </div>


                    <div class="row">
                     <div class="col-4">
                            <center>
                               <asp:Button class="btn btn-lg btn-success btn-block" ID="Button1" runat="server" Text="Add" />
                              </center>
                           </div>
                    <div class="col-4">
                            <center>
                               <asp:Button class="btn btn-lg btn-warning btn-block" ID="Button3" runat="server" Text="Update" />
                              </center>
                           </div>
                    <div class="col-4">
                            <center>
                               <asp:Button class="btn btn-lg btn-danger btn-block" ID="Button4" runat="server" Text="Delete" />
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
                                    <h4>Publisher List</h4>
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
