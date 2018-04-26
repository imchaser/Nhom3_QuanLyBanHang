<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="Contact" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <div class="contact-left" style="float: left; width: 30%; font-size: large">
        <hgroup class="title">
            <h1><%: Title %></h1>
            <br />
        </hgroup>

        <section class="contact">
            <header>
                <h3>Phone:</h3>
            </header>
            <p>
                <span class="label">Main:</span>
                <span>0423.881.075</span>
            </p>
            <p>
                <span class="label">After Hours:</span>
                <span>0978.259.152</span>
            </p>
            <br />
        </section>

        <section class="contact">
            <header>
                <h3>client_id:</h3>
            </header>
            <p>
                <span class="label">Support:</span>
                <span><a href="mailto:Nhom3_Quanlybanhang@example.com">Nhom3_Quanlybanhang@example.com</a></span>
            </p>
            <p>
                <span class="label">Marketing:</span>
                <span><a href="mailto:Nhom3_Marketing@example.com">Nhom3_Marketing@example.com</a></span>
            </p>
            <p>
                <span class="label">General:</span>
                <span><a href="mailto:Nhom3_General@example.com">Nhom3_General@example.com</a></span>
            </p>
            <br />
        </section>

        <section class="contact">
            <header>
                <h3>Address:</h3>
            </header>
            <p>
                FPT Polytechnic<br />
                Toà nhà H, Hàm Nghi, Nam Từ Liêm, Hà Nội
            </p>
            <br />
        </section>
    </div>

    <div class="contact-right" style="float: left; width: 70%">
        <section>
            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3723.9247485694673!2d105.76281741534568!3d21.035696792916386!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x313454bc756b5f4b%3A0xf6b89b17769714f3!2zVHLGsOG7nW5nIENhbyDEkOG6s25nIFRo4buxYyBIw6BuaCBGUFQgUG9seXRlY2huaWMgSMOgIE7hu5lp!5e0!3m2!1svi!2s!4v1523532454208" width="95%" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
        </section>
    </div>

</asp:Content>
