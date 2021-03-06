<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="userprofile.aspx.cs" Inherits="ELibraryManagement.userprofile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript"  >
        $(document).ready(function () {
             //$(document).ready(function () { $('.table').DataTable();
            //});
            $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
        });
    </script>
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
                                        <asp:Label ID="Label1" class="bagde badge-pill badge-info" runat="server" placeholder="Your Status">Your Status</asp:Label>
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
                                    <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Full Name"></asp:TextBox>
                                </div>
                            </div>

                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>Date of Birth</label>
                                    <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Date of Birth" ></asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>Contact</label>
                                    <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="Number" TextMode="Phone"></asp:TextBox>
                                </div>
                            </div>

                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>Email Address</label>
                                    <asp:TextBox Class="form-control" ID="TextBox4" runat="server" placeholder="email address" TextMode="Email"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <div class="form-group">
                                    <label>Address</label>
                                         <asp:TextBox Class="form-control" ID="TextBox5" runat="server" placeholder="Address" ></asp:TextBox>     
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label>State</label>
                                         <asp:TextBox Class="form-control" ID="TextBox6" runat="server" placeholder="State" ></asp:TextBox>     
                                </div>
                            </div>

                            <div class="col-md-4">
                                <div class="form-group">
                                    <label>City</label>
                                    <asp:TextBox Class="form-control" ID="TextBox7" runat="server" placeholder="City" ></asp:TextBox>
                                </div>
                            </div>

                             <div class="col-md-4">
                                <div class="form-group">
                                    <label>Pin-code</label>
                                    <asp:TextBox Class="form-control" ID="TextBox8" runat="server" placeholder="Pin-code" TextMode="Number"></asp:TextBox>
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
                                <asp:TextBox CssClass="form-control" ID="TextBox9" runat="server" placeholder="User Id" ReadOnly="true"></asp:TextBox>
                            </div>
                        </div>

                        <div class="col-md-4">
                            <div class="form-group">
                                <label>Old Password</label>
                                <asp:TextBox Class="form-control" ID="TextBox10" runat="server" placeholder="Old Password" ReadOnly="true"></asp:TextBox>
                            </div>
                        </div>

                        <div class="col-md-4">
                            <div class="form-group">
                                <label>New Password</label>
                                <asp:TextBox Class="form-control" ID="TextBox11" runat="server" placeholder="New Password" ></asp:TextBox>
                            </div>
                        </div>    
                    </div>

                    <div class="row">
                     <div class="col-8 mx-auto">
                           <div class="form-group">
                            <center>
                               <asp:Button class="btn btn-primary btn-block btn-lg" ID="Button1" runat="server" Text="Update" OnClick="Button1_Click" />
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
                                 <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:elibraryDBConnectionString %>" SelectCommand="SELECT * FROM [book_issue_tbl]" ></asp:SqlDataSource>
                                  <asp:GridView ID="GridView1" class="table table-striped table-bordered" runat="server" AutoGenerateColumns="False" DataKeyNames="member_id" OnRowDataBound="GridView1_RowDataBound">
                                      <Columns>
                                          <asp:BoundField DataField="member_id" HeaderText="Member ID" ReadOnly="True" SortExpression="member_id" />
                                          <asp:BoundField DataField="member_name" HeaderText="Member Name" SortExpression="member_name" />
                                          <asp:BoundField DataField="book_id" HeaderText="Book ID" SortExpression="book_id" />
                                          <asp:BoundField DataField="book_name" HeaderText="Book Name" SortExpression="book_name" />
                                          <asp:BoundField DataField="issue_date" HeaderText="Issue Date" SortExpression="issue_date" />
                                          <asp:BoundField DataField="due_date" HeaderText="Due Date" SortExpression="due_date" />
                                      </Columns>
                                      
                                    </asp:GridView>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
