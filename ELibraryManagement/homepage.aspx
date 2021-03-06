<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="homepage.aspx.cs" Inherits="ELibraryManagement.homepage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <section>
        <img src="imgs/home-bg.jpg" class="img-fluid" />
    </section>

    <section>
        <div class="container">
            <div class="row">
                <div class="col-md-4">
                    <center>
                        <img width="150px" src="imgs/digital-inventory.png" />
                        <h4>Fast Shipping</h4>
                        <p class="text-justify text-center">Books get delivered within 7 days</p>
                    </center>
                </div>

                <div class="col-md-4">
                    <center>
                        <a href="viewBooks.aspx">
                        <img width="150px" src="imgs/search-online.png" />
                           </a>
                        <h4>Search Books</h4>
                        <p class="text-justify text-center">Lets us go and find books.</p>
                    </center>
                </div>

                <div class="col-md-4">
                    <center>
                        <a href="usersignup.aspx">
                        <img width="150px" src="imgs/sign-up.png" />
                            </a>
                        <h4>Sign-up</h4>
                        <p class="text-justify text-center">Don't have an account? Sign-up first.</p>
                    </center>
                </div>
            </div>
        </div>
    </section>

   <%-- <section>
        <img src="imgs/in-homepage-banner.jpg" class="container-fluid" />
    </section>

    <section>
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <center>
                        <h1>Process</h1>
                        <p><b>Just three simple steps</b></p>
                    </center>
                </div>
            </div>
            <div class="row">
                <div class="col-md-4">
                    <center>
                        <img width="150px" src="imgs/sign-up.png" />
                        <h4>Sign-up</h4>
                        <p class="text-justify">Check out our books. We got over 10,000 books in our inventory.</p>
                    </center>
                </div>

                <div class="col-md-4">
                    <center>
                        <img width="150px" src="imgs/search-online.png" />
                        <h4>Search Books</h4>
                        <p class="text-justify">Lets us go and find books.</p>
                    </center>
                </div>

                <div class="col-md-4">
                    <center>
                        <img width="150px" src="imgs/library.png" />
                        <h4>Visit Us</h4>
                        <p class="text-justify">Orlando FL 12345</p>
                    </center>
                </div>
            </div>
        </div>
    </section>--%>

</asp:Content>
