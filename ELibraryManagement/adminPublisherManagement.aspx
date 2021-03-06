<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminPublisherManagement.aspx.cs" Inherits="ELibraryManagement.adminPublisherManagement" %>
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
                                        <asp:TextBox CssClass="form-control" runat="server" placeholder="ID" ID="TextBox1"></asp:TextBox>
                                         <asp:Button class="btn btn-primary" ID="Button2" runat="server" Text="Go" OnClick="Button2_Click" />
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-8">
                                <div class="form-group">
                                    <label>Publisher Name</label>
                                    <asp:TextBox CssClass="form-control" runat="server" placeholder="Author Name" ID="TextBox2" ></asp:TextBox>
                                </div>
                            </div>
                        </div>


                    <div class="row">
                     <div class="col-4">
                            <center>
                               <asp:Button class="btn btn-lg btn-success btn-block" ID="Button1" runat="server" Text="Add" OnClick="Button1_Click" />
                              </center>
                           </div>
                    <div class="col-4">
                            <center>
                               <asp:Button class="btn btn-lg btn-warning btn-block" ID="Button3" runat="server" Text="Update" OnClick="Button3_Click" />
                              </center>
                           </div>
                    <div class="col-4">
                            <center>
                               <asp:Button class="btn btn-lg btn-danger btn-block" ID="Button4" runat="server" Text="Delete" OnClick="Button4_Click" />
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
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:elibraryDBConnectionString2 %>" SelectCommand="SELECT * FROM [publisher_master_tbl]"></asp:SqlDataSource>
                            <div class="col">
                              <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="publisher_id" DataSourceID="SqlDataSource1">
                                <Columns>
                                      <asp:BoundField DataField="publisher_id" HeaderText="publisher_id" ReadOnly="True" SortExpression="publisher_id" />
                                      <asp:BoundField DataField="publisher_name" HeaderText="publisher_name" SortExpression="publisher_name" />
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
