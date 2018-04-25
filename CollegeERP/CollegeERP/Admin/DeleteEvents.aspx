﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="DeleteEvents.aspx.cs" Inherits="Admin_DeleteEvents" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container text-center" style="padding-top: 1%">
        <h1>Delete Event</h1>
        <br />

        <div class="form-group row d-flex justify-content-center">
            <asp:Label runat="server" Text="Enter event name" CssClass="col-form-label" Font-Bold="True"></asp:Label>
            <asp:RequiredFieldValidator runat="server" ErrorMessage="*" Display="Dynamic" ControlToValidate="EventName" ForeColor="Red"></asp:RequiredFieldValidator>
        </div>
        <div class="form-group row d-flex justify-content-center">
            <asp:TextBox runat="server" id="EventName" CssClass="col-sm-3 form-control"></asp:TextBox>
        </div>
        <div class="form-group row d-flex justify-content-center">
            <h6>
                <asp:HyperLink Target="_blank" href="/Admin/ViewEvents.aspx" runat="server" ForeColor="Black">check here for correct Event Name</asp:HyperLink></h6>
        </div>
        <br />
        <div class="form-group row d-flex justify-content-center">
            <asp:Button ID="StudentDelete" runat="server" Text="Delete" CssClass="btn btn-danger" OnClick="StudentDelete_Click" />
            &nbsp;
            <asp:Button ID="StudentClear" runat="server" CausesValidation="False" Text="Clear" CssClass="btn btn-outline-dark" OnClick="StudentClear_Click" />
        </div>

    </div>
</asp:Content>

