<%@ Page Title="" Language="C#" MasterPageFile="~/Default.master" AutoEventWireup="true" CodeFile="ManagementCat.aspx.cs" Inherits="ManagementCat" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView style="text-align:right" ID="GridView1" Width="100%"  runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" DataKeyNames="CatID" DataSourceID="ObjectDataSource2" GridLines="None">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
            <asp:BoundField DataField="CatID" HeaderText="شناسه" InsertVisible="False" ReadOnly="True" SortExpression="CatID" />
            <asp:BoundField DataField="CatName" HeaderText="نام دسته" SortExpression="CatName" />
        </Columns>
        <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
        <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
        <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
        <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#594B9C" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#33276A" />
    </asp:GridView>
    <asp:DetailsView  ID="DetailsView1" runat="server" AutoGenerateRows="False" CellPadding="4" DataKeyNames="CatID" DataSourceID="ObjectDataSource1" DefaultMode="Insert" ForeColor="#333333" GridLines="None" Height="50px" Width="364px">
        <AlternatingRowStyle BackColor="White" />
        <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" />
        <EditRowStyle BackColor="#2461BF" />
        <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" />
        <Fields>
            <asp:BoundField DataField="CatName" HeaderText="اضافه کردن دسته جدید" SortExpression="CatName" />

            <asp:BoundField DataField="CatID" HeaderText="CatID" InsertVisible="False" ReadOnly="True" SortExpression="CatID" />
            <asp:CommandField ShowInsertButton="True" />
        </Fields>
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
    </asp:DetailsView>
    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" InsertMethod="AddCat" OldValuesParameterFormatString="original_{0}" SelectMethod="GetAllNewsCat" TypeName="DataSetTableAdapters.tblNewsCatTableAdapter">
        <InsertParameters>
            <asp:Parameter Name="CatName" Type="String" />
        </InsertParameters>
    </asp:ObjectDataSource>
    <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" DeleteMethod="Delete" InsertMethod="AddCat" OldValuesParameterFormatString="original_{0}" SelectMethod="GetAllNewsCat" TypeName="DataSetTableAdapters.tblNewsCatTableAdapter" UpdateMethod="Update">
        <DeleteParameters>
            <asp:Parameter Name="Original_CatID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="CatName" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="CatName" Type="String" />
            <asp:Parameter Name="Original_CatID" Type="Int32" />
        </UpdateParameters>
    </asp:ObjectDataSource>
    
</asp:Content>

