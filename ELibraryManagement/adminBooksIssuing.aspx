<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminBooksIssuing.aspx.cs" Inherits="ELibraryManagement.adminBooksIssuing" %>
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
                                        <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Member ID"></asp:TextBox>
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-6">
                                <label>Book Id</label>
                                <div class="form-group">
                                   <div class="input-group">
                                     <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Book Id" ></asp:TextBox>
                                     <asp:Button class="btn btn-dark" ID="Button2" runat="server" OnClick="Button2_Click" Text="Go" />
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-6">
                                <label>Member Name</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="Member Name" ReadOnly="True"></asp:TextBox>
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-6">
                                <label>Book Name</label>
                                <div class="form-group">
                                   <div class="input-group">
                                     <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="Book Name" ReadOnly="true"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                        </div>

                         <div class="row">
                            <div class="col-md-6">
                                <label>Issue Date</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" placeholder="Issue Date"></asp:TextBox>
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-6">
                                <label>Due Date</label>
                                <div class="form-group">
                                   <div class="input-group">
                                     <asp:TextBox CssClass="form-control" ID="TextBox6" runat="server" placeholder="Due Date"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                        </div>


                    <div class="row">
                         <div class="col-6">
                                <center>
                                   <asp:Button class="btn btn-lg btn-primary btn-block" ID="Button1" OnClick="Button1_Click" runat="server" Text="Issue" />
                                  </center>
                               </div>
                        <div class="col-6">
                                <center>
                                   <asp:Button class="btn btn-lg btn-success btn-block" ID="Button4" OnClick="Button4_Click" runat="server" Text="Return" />
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
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:elibraryDBConnectionString %>" SelectCommand="SELECT * FROM [book_issue_tbl]"></asp:SqlDataSource>
                                  <asp:GridView ID="GridView1" class="table table-striped table-bordered" runat="server" AutoGenerateColumns="False" DataKeyNames="member_id" DataSourceID="SqlDataSource1" OnRowDataBound="GridView1_RowDataBound">
                                      <Columns>
                                          <asp:BoundField DataField="member_id" HeaderText="Member ID" ReadOnly="True" SortExpression="member_id"></asp:BoundField>
                                          <asp:BoundField DataField="member_name" HeaderText="Member Name" SortExpression="member_name"></asp:BoundField>
                                          <asp:BoundField DataField="book_id" HeaderText="Book ID" SortExpression="book_id"></asp:BoundField>
                                          <asp:BoundField DataField="book_name" HeaderText="Book Name" SortExpression="book_name"></asp:BoundField>
                                          <asp:BoundField DataField="issue_date" HeaderText="Issue Date" SortExpression="issue_date"></asp:BoundField>
                                          <asp:BoundField DataField="due_date" HeaderText="Due Date" SortExpression="due_date"></asp:BoundField>
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
