using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HospitalMS.Views.Admin
{
    public partial class Laboratorian : System.Web.UI.Page
    {
        Models.Functions Con;
        protected void Page_Load(object sender, EventArgs e)
        {
            Con = new Models.Functions();
            ShowLaboratorian();
        }
        private void ShowLaboratorian()
        {
            string Query = "Select * from LaboratorianTbl";
            LaboratorianGv.DataSource = Con.GetDatas(Query);
            LaboratorianGv.DataBind();
        }
        //Add this overriden method
        public override void VerifyRenderingInServerForm(Control control)
        {

        }

        protected void AddBtn_Click(object sender, EventArgs e)
        {
            try
            {
                string LabName = LabNameTb.Value;
                string LabEmail = EmailTb.Value;
                string LabPass = PasswordTb.Value;
                string LabPhone = PhoneTb.Value;
                string LabGen = GenderTb.SelectedItem.ToString();
                string LabAddress = AddressTb.Value;
                string Query = "insert into LaboratorianTbl values('{0}','{1}','{2}','{3}','{4}','{5}')";
                Query = string.Format(Query, LabName, LabEmail, LabPass, LabPhone, LabAddress, LabGen);
                Con.SetDatas(Query);
                ShowLaboratorian();
                ErrMsg.InnerText = "Laboratorian Added!!!";
                LabNameTb.Value = "";
                EmailTb.Value = "";
                PasswordTb.Value = "";
                PhoneTb.Value = "";
                AddressTb.Value = "";
                GenderTb.SelectedIndex = -1;
            }
            catch (Exception Ex)
            {
                ErrMsg.InnerText = Ex.Message;
            }
        }
        int Key = 0;
        protected void LaboratorianGv_SelectedIndexChanged(object sender, EventArgs e)
        {
            LabNameTb.Value = LaboratorianGv.SelectedRow.Cells[2].Text;
            EmailTb.Value = LaboratorianGv.SelectedRow.Cells[3].Text;
            PasswordTb.Value = LaboratorianGv.SelectedRow.Cells[4].Text;
            PhoneTb.Value = LaboratorianGv.SelectedRow.Cells[5].Text;
            
            AddressTb.Value = LaboratorianGv.SelectedRow.Cells[6].Text;
            GenderTb.SelectedItem.Value = LaboratorianGv.SelectedRow.Cells[7].Text;

            if (LabNameTb.Value == "")
            {
                Key = 0;
            }
            else
            {
                Key = Convert.ToInt32(LaboratorianGv.SelectedRow.Cells[1].Text);
            }
        }

        protected void DeleteBtn_Click(object sender, EventArgs e)
        {
            try
            {
                if (LabNameTb.Value == "")
                {
                    ErrMsg.InnerText = "Select a Laboratorian!!!";
                }
                else
                {
                    string Query = "delete from LaboratorianTbl where LabId={0}";
                    Query = string.Format(Query, LaboratorianGv.SelectedRow.Cells[1].Text);
                    Con.SetDatas(Query);
                    ShowLaboratorian();
                    ErrMsg.InnerText = "Laboratorian Deleted!!!";
                    Key = 0;
                    LabNameTb.Value = "";
                    EmailTb.Value = "";
                    PasswordTb.Value = "";
                    PhoneTb.Value = "";
                    AddressTb.Value = "";
                    GenderTb.SelectedIndex = -1;
                }

            }
            catch (Exception Ex)
            {
                ErrMsg.InnerText = Ex.Message;
            }
        }

        protected void EditBtn_Click(object sender, EventArgs e)
        {
            try
            {
                string LabName = LabNameTb.Value;
                string LabEmail = EmailTb.Value;
                string LabPass = PasswordTb.Value;
                string LabPhone = PhoneTb.Value;
                string LabGen = GenderTb.SelectedItem.ToString();
                string LabAddress = AddressTb.Value;
                string Query = "update LaboratorianTbl set LabName= '{0}',LabEmail='{1}',LabPass='{2}',LabPhone='{3}',LabAddress='{4}',LabGen='{5}' where LabId = {6}";
                Query = string.Format(Query, LabName, LabEmail, LabPass, LabPhone, LabAddress, LabGen, LaboratorianGv.SelectedRow.Cells[1].Text);
                Con.SetDatas(Query);
                ShowLaboratorian();
                ErrMsg.InnerText = "Laboratorian Updated!!!";
                LabNameTb.Value = "";
                EmailTb.Value = "";
                PasswordTb.Value = "";
                PhoneTb.Value = "";
                AddressTb.Value = "";
                GenderTb.SelectedIndex = -1;
            }
            catch (Exception Ex)
            {
                ErrMsg.InnerText = Ex.Message;
            }
        }
    }
}