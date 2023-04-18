﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Doctor.aspx.cs" Inherits="HospitalMS.Views.Admin.Doctor" enableEventValidation="false"%>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Mybody" runat="server">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-3">
                <h2>Doctors Detail</h2>
<form>
  <div class="mb-3">
    <label for="DocNameTb" class="form-label">Doctor Name</label>
    <input type="text" class="form-control" id="DocNameTb" runat="server" required="required" />
    </div>
  <div class="mb-3">
    <label for="DocPhoneTb" class="form-label">Phone Number</label>
    <input type="text" class="form-control" id="DocPhoneTb" runat="server" required="required" /> 
  </div>
  <div class="mb-3">
    <label for="DocExpTb" class="form-label">Experience</label>
    <input type="text" class="form-control" id="DocExpTb" runat="server" required="required" />
  </div>
  <div class="mb-3">
    <label for="SpecialisationTb" class="form-label">Specialisation</label>
    <input type="text" class="form-control" id="SpecialisationTb" runat="server" required="required" />
  </div>
  <div class="mb-3">
    <label for="PasswordTb" class="form-label">Password</label>
    <input type="text" class="form-control" id="PasswordTb" runat="server" required="required"/>
  </div>
    <div class="mb-3">
    <label for="GenderTb" class="form-label">Gender</label>
        <asp:DropDownList ID="GenderTb" runat="server" class="form-control" required="required">
            <asp:ListItem>Male</asp:ListItem>
            <asp:ListItem>Female</asp:ListItem>
        </asp:DropDownList>
    
  </div>
    <div class="mb-3">
    <label for="AddressTb" class="form-label">Address</label>
    <input type="text" class="form-control" id="AddressTb" runat="server" required="required"/>
  </div>
    
  
  <label runat="server" id="ErrMsg" class="text-danger"> </label><br />
    <asp:Button ID="EditBtn" runat="server" Text="Edit" class="btn btn-warning" OnClick="EditBtn_Click" />
    <asp:Button ID="AddBtn" runat="server" Text="Save" class="btn btn-primary" OnClick="AddBtn_Click" />
    <asp:Button ID="DeleteBtn" runat="server" Text="Delete" class="btn btn-danger" OnClick="DeleteBtn_Click" />
  
</form>

            </div>
            <div class="col-md-9">
                <div class="row">
                    <div class="col">
                        <img src="../../Assets/Images/Doctors.png" class="mx-auto d-block" height="200px" alt="...">
                    </div>
                </div>
                <div class="row">
                    <div class="col">
                        <h1>Doctors Details</h1>
                        <asp:GridView ID="DoctorsGv" class="table table-hover" runat="server" AutoGenerateSelectButton="True" CellPadding="4" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="DoctorsGv_SelectedIndexChanged">
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