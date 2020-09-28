<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminBooksIssuing.aspx.cs" Inherits="ELibraryManagement.adminBooksIssuing" %>
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
                                    <img width="100px" src="imgs/books.png">
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <center>
                                    <h4>Book Issuing</h4>
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
                                <label>Member ID</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox CssClass="form-control" runat="server" placeholder="Member ID"></asp:TextBox>
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-6">
                                <label>Book Id</label>
                                <div class="form-group">
                                   <div class="input-group">
                                     <asp:TextBox CssClass="form-control" runat="server" placeholder="Book Id" ></asp:TextBox>
                                     <asp:Button class="btn btn-dark" ID="Button2" runat="server" Text="Go" />
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-6">
                                <label>Member Name</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox CssClass="form-control" runat="server" placeholder="Member Name" ReadOnly="True"></asp:TextBox>
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-6">
                                <label>Book Name</label>
                                <div class="form-group">
                                   <div class="input-group">
                                     <asp:TextBox CssClass="form-control" runat="server" placeholder="Book Name" ReadOnly="true"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                        </div>

                         <div class="row">
                            <div class="col-md-6">
                                <label>Start Date</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox CssClass="form-control" runat="server" placeholder="Start Date" TextMode="Date"></asp:TextBox>
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-6">
                                <label>End Date</label>
                                <div class="form-group">
                                   <div class="input-group">
                                     <asp:TextBox CssClass="form-control" runat="server" placeholder="End Date" TextMode="Date"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                        </div>


                    <div class="row">
                         <div class="col-6">
                                <center>
                                   <asp:Button class="btn btn-lg btn-primary btn-block" ID="Button1" runat="server" Text="Issue" />
                                  </center>
                               </div>
                        <div class="col-6">
                                <center>
                                   <asp:Button class="btn btn-lg btn-success btn-block" ID="Button4" runat="server" Text="Return" />
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
                                    <h4>Issued Books List</h4>
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
