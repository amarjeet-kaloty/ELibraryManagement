<%@ page title="" language="C#" masterpagefile="~/Site1.Master" autoeventwireup="true" codebehind="viewBooks.aspx.cs" inherits="ELibraryManagement.viewBooks" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-body">

                        <div class="row">
                            <div class="col p-4" style="background: #ffa500">
                                    <center>
                                        <h4>Books Inventory List</h4>
                                    </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <hr />
                            </div>
                        </div>

                        <div class="row">
                            <div class="card">
                                <div class="card-body">

                                    <div class="row">
                                        <div class="col">
                                            <asp:SqlDataSource ID="SqlSource1" runat="server" ConnectionString="<%$ ConnectionStrings:elibraryDBConnectionString %>" SelectCommand="SELECT * FROM [book_master_tbl]"></asp:SqlDataSource>
                                            <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="book_id" DataSourceID="SqlSource1">
                                                <columns>
                                        
                                            <asp:BoundField DataField="book_id" HeaderText="Id" ReadOnly="True" SortExpression="book_id">
                                                <ItemStyle Font-Bold="True" />
                                            </asp:BoundField>

                                        <asp:TemplateField>
                                            <ItemTemplate>
                                                <div class="container-fluid">
                                                    <div class="row">
                                                        <div class="col-lg-10">
                                                            
                                                            <div class="row">
                                                                <div class="col-12">
                                                                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("book_name") %>' Font-Bold="True" Font-Size="Large"></asp:Label>
                                                                </div>
                                                            </div>

                                                            <div class="row">
                                                                <div class="col-12">
                                                                     Author - 
                                                                      <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Smaller" Text='<%# Eval("author_name") %>'></asp:Label>
                                                                       &nbsp;| 
                                                                     Genre -
                                                                       <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="Smaller" Text='<%# Eval("genre") %>'></asp:Label>
                                                                       &nbsp;| 
                                                                      Languages -
                                                                       <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="Smaller" Text='<%# Eval("language") %>'></asp:Label>
                                                                </div>
                                                            </div>

                                                            <div class="row"> 
                                                                <div class="col-12">
                                                                    Publisher -
                                                                       <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="Smaller" Text='<%# Eval("publisher_name") %>'></asp:Label>
                                                                       &nbsp;| 
                                                                    Publish Date -
                                                                       <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Size="Smaller" Text='<%# Eval("publish_data") %>'></asp:Label>
                                                                       &nbsp;| 
                                                                    Pages -
                                                                       <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Size="Smaller" Text='<%# Eval("no_of_pages") %>'></asp:Label>
                                                                       &nbsp;| 
                                                                    Edition -
                                                                       <asp:Label ID="Label8" runat="server" Font-Bold="True" Text='<%# Eval("edition") %>'></asp:Label>
                                                                </div>
                                                            </div>

                                                            <div class="row">
                                                                <div class="col-12">
                                                                    Cost -
                                                                       <asp:Label ID="Label9" runat="server" Font-Bold="True" Font-Size="Smaller" Text='<%# Eval("book_cost") %>'></asp:Label>
                                                                       &nbsp;| 
                                                                    Actual Stock -
                                                                       <asp:Label ID="Label10" runat="server" Font-Bold="True" Font-Size="Smaller" Text='<%# Eval("actual_stock") %>'></asp:Label>
                                                                       &nbsp;| 
                                                                    Available Stock -
                                                                       <asp:Label ID="Label11" runat="server" Font-Bold="True" Font-Size="Smaller" Text='<%# Eval("current_stock") %>'></asp:Label>
                                                                </div>
                                                            </div>

                                                            <div class="row">
                                                                <div class="col-12">
                                                                    Description -
                                                                        <asp:Label ID="Label12" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Smaller" Text='<%# Eval("book_description") %>'></asp:Label>
                                                                </div>
                                                            </div>

                                                        </div>

                                                        <div class="col-lg-2">
                                                            <asp:Image class="img-fluid" ID="Image1" runat="server" ImageUrl='<%# Eval("book_img_link") %>' ></asp:Image>
                                                        </div>

                                                    </div>
                                                </div>
                                            </ItemTemplate>
                                        </asp:TemplateField>

                                    </columns>
                                            </asp:GridView>
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>

        </div>
    </div>

</asp:Content>
