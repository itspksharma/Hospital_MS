<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Laboratorian/LaboratorianMaster.Master" AutoEventWireup="true" CodeBehind="LabTest.aspx.cs" Inherits="HospitalMS.Views.Laboratorian.LabTest" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Mybody" runat="server">
    <div class="container-fluid">
        <div class="row" style="height:50px"></div>
        <div class="row">
            <div class="col-md-4">
                <h2>Laboratory Test Detail</h2>
<form>
  <div class="mb-3">
    <label for="LabNameTb" class="form-label">Name</label>
    <input type="text" class="form-control" id="LabNameTb" runat="server" required="required"/>
   </div>
  <div class="mb-3">
    <label for="LabCostTb" class="form-label">Test Cost</label>
    <input type="text" class="form-control" id="LabCostTb" runat="server" required="required" /> 
  </div>
    <div class="row" style="height:150px"></div>
  
  
  <label runat="server" id="ErrMsg" class="text-danger"> </label><br />
    <asp:Button ID="EditBtn" runat="server" Text=" Edit " class="btn btn-warning" />
    <asp:Button ID="AddBtn" runat="server" Text=" Save " class="btn btn-primary" />
    <asp:Button ID="DeleteBtn" runat="server" Text=" Delete " class="btn btn-danger" />

</form>

            </div>
            <div class="col-md-8">
                <div class="row">
                    <div class="col">
                        <img src="../../Assets/Images/lab-technician.png" class="mx-auto d-block" height="200px" alt="...">
                    </div>
                </div>
                <div class="row">
                    <div class="col">
                        <h1>Laboratory Test Details</h1>
                        <asp:GridView ID="LabTestGv" class="table table-hover" runat="server" AutoGenerateSelectButton="True" CellPadding="4" ForeColor="#333333" GridLines="None" >
                            <AlternatingRowStyle BackColor="White" />
                            <EditRowStyle BackColor="#2461BF" />
                            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                            <RowStyle BackColor="#EFF3FB" />
                            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                            <SortedAscendingCellStyle BackColor="#F5F7FB" />
                            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                            <SortedDescendingCellStyle BackColor="#E9EBEF" />
                            <SortedDescendingHeaderStyle BackColor="#4870BE" />
                        </asp:GridView>
                    </div>
                </div>
            </div>
        </div>

    </div>
</asp:Content>
