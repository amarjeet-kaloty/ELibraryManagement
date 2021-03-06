<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminMemberManagement.aspx.cs" Inherits="ELibraryManagement.adminMemberManagement" %>
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
                            <div class="col p-2" >
                                <center>
                                    <img width="100px" src="imgs/generaluser.png">
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col" >
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
                                     <asp:TextBox CssClass="form-control" runat="server" placeholder="Id" ID="TextBox1" ></asp:TextBox>
                                     <asp:Button class="btn btn-dark" ID="Button2" runat="server" Text="Go" OnClick="Button2_Click" />
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-4">
                                <label>Full Name</label>
                                <div class="form-group">
                                        <asp:TextBox CssClass="form-control" runat="server" placeholder="Full Name" ReadOnly="true" ID="TextBox2"></asp:TextBox>
                                </div>
                            </div>

                             <div class="col-md-5">
                                <label>Status</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox CssClass="form-control mr-1" runat="server" placeholder="P" ReadOnly="true" ID="TextBox3"></asp:TextBox>
                                        <asp:LinkButton class="btn btn-success mr-1" ID="LinkButton1" runat="server" OnClick="LinkButton1_Click"><i class="fas fa-check-circle"></i></asp:LinkButton>
                                        <asp:LinkButton class="btn btn-warning mr-1" ID="LinkButton2" runat="server" OnClick="LinkButton2_Click"><i class="far fa-pause-circle"></i></asp:LinkButton>
                                        <asp:LinkButton class="btn btn-danger mr-1" ID="LinkButton3" runat="server" OnClick="LinkButton3_Click"><i class="fas fa-times-circle"></i></asp:LinkButton>
                                    </div>
                                </div>
                            </div>

                        </div>

                        <div class="row">
                            <div class="col-md-3">
                                <label>Date of Birth</label>
                                <div class="form-group">
                                     <asp:TextBox CssClass="form-control" runat="server" placeholder="DOB" ReadOnly="true" ID="TextBox4" ></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <label>Contact No</label>
                                <div class="form-group">
                                     <asp:TextBox CssClass="form-control" runat="server" placeholder="Contact Number" ReadOnly="true" ID="TextBox5" ></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-5">
                                <label>Email</label>
                                <div class="form-group">
                                     <asp:TextBox CssClass="form-control" runat="server" placeholder="Email" ReadOnly="true" ID="TextBox6" ></asp:TextBox>
                                </div>
                            </div> 
                        </div>

                        <div class="row">
                            <div class="col-md-4">
                                <label>State</label>
                                <div class="form-group">
                                     <asp:TextBox CssClass="form-control" runat="server" placeholder="State" ReadOnly="true" ID="TextBox7" ></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <label>City</label>
                                <div class="form-group">
                                     <asp:TextBox CssClass="form-control" runat="server" placeholder="City" ReadOnly="true" ID="TextBox8" ></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <label>Pin-code</label>
                                <div class="form-group">
                                     <asp:TextBox CssClass="form-control" runat="server" placeholder="Pin-code" ReadOnly="true" ID="TextBox9" ></asp:TextBox>
                                </div>
                            </div> 
                        </div>

                        <div class="row">
                            <div class="col-12"
                                <label>Address</label>
                                <div class="form-group">
                                     <asp:TextBox CssClass="form-control" runat="server" placeholder="Address" ReadOnly="true" ID="TextBox10" ></asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                             <div class="col-12 mx-auto">
                                    <center>
                                       <asp:Button class="btn btn-lg btn-danger btn-block" ID="Button10" runat="server" Text="Delete User Permanently" OnClick="Button10_Click" />
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
                            <div class="col p-4" style="background: #ffa500">
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
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:elibraryDBConnectionString2 %>" SelectCommand="SELECT * FROM [member_master_tbl]"></asp:SqlDataSource>
                            <div class="col">
                                    <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="member_id" DataSourceID="SqlDataSource1">
                                        <Columns>
                                            <asp:BoundField DataField="member_id" HeaderText="ID" ReadOnly="True" SortExpression="member_id" />
                                            <asp:BoundField DataField="full_name" HeaderText="Name" SortExpression="full_name" />
                                            <asp:BoundField DataField="account_status" HeaderText="Status" SortExpression="account_status" />
                                            <asp:BoundField DataField="contact_no" HeaderText="Contact" SortExpression="contact_no" />
                                            <asp:BoundField DataField="email" HeaderText="Email" SortExpression="email" />
                                            <asp:BoundField DataField="state" HeaderText="State" SortExpression="state" />
                                            <asp:BoundField DataField="city" HeaderText="City" SortExpression="city" />
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
