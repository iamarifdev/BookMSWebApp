﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ShowBook.aspx.cs" Inherits="BookMSWebApp.UI.ShowBook" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        * {
            font-family: "Helvetica";
        }
        body {
            width: 100%;
            margin-top: 200px;
            margin-left: 0;
            margin-right: 0;
        }
        fieldset {
            width: 40%;
            margin: auto;
            padding: 20px;
        }
        table {
            float: none;
            padding-left: 200px;
        }
        .pull-right {
            float: right !important;
        }
        button, input[type="submit"] {
            height: 28px;
            width: 70px;
        }
        input[type="text"] {
            height: 20px;
            min-width: 200px;
        }
        .auto-style1 {
            width: 70px;
        }
        legend {
            font-size: 25px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <fieldset>
                <legend>Show</legend>
                <table>
                    <tr>
                        <td></td>
                        <td>
                            <asp:Label runat="server" Text="Name"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="nameTextBox" runat="server"></asp:TextBox>
                        </td>
                        <td>
                            <asp:Button ID="searchButton" runat="server" Text="Search" CssClass="pull-right" />
                        </td>
                    </tr>
                </table>
                <asp:GridView ID="showBookGridView" runat="server" Width="100%" AutoGenerateColumns="False" ShowHeaderWhenEmpty="True" GridLines="Both">
                    <Columns>
                        <asp:TemplateField HeaderText="SL#">
                            <ItemTemplate><%#Eval("Serial") %></ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="ISBN">
                            <ItemTemplate><%#Eval("Isbn") %></ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Name">
                            <ItemTemplate><%#Eval("Name") %></ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Author">
                            <ItemTemplate><%#Eval("Author") %></ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                    <EmptyDataTemplate>No book availabe.</EmptyDataTemplate>
                </asp:GridView>
            </fieldset>
        </div>
    </form>
</body>
</html>
