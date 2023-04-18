using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HospitalMS.Views.Admin
{
    public partial class Doctor : System.Web.UI.Page
    {
        Models.Functions Con;
        protected void Page_Load(object sender, EventArgs e)
        {
            Con = new Models.Functions();
            ShowDoctors();
        }
        private void ShowDoctors()
        {
            string Query = "Select * from DoctorTbl";
            DoctorsGv.DataSource = Con.GetDatas(Query);
            DoctorsGv.DataBind();
        }
        //Add this overriden method
        public override void VerifyRenderingInServerForm(Control control)
        {

        }

        protected void AddBtn_Click(object sender, EventArgs e)
        {
            try
            {
                string DocName = DocNameTb.Value;
                string DocPhone = DocPhoneTb.Value;
                string DocExp = DocExpTb.Value;
                string DocSpec = SpecialisationTb.Value;
                string DocGen = GenderTb.SelectedItem.ToString();
                string DocAdd = AddressTb.Value;
                string DocPass = PasswordTb.Value;
                string Query = "insert into DoctorTbl values('{0}','{1}','{2}','{3}','{4}','{5}','{6}')";
                Query = string.Format(Query, DocName, DocPhone, DocExp, DocSpec, DocGen, DocAdd, DocPass);
                Con.SetDatas(Query);
                ShowDoctors();
                ErrMsg.InnerText = "Doctor Added!!!";
                DocNameTb.Value = "";
                DocPhoneTb.Value = "";
                DocExpTb.Value = "";
                SpecialisationTb.Value = "";
                AddressTb.Value = "";
                PasswordTb.Value = "";
                GenderTb.SelectedIndex = -1;
            }
            catch (Exception Ex)
            {
                ErrMsg.InnerText = Ex.Message;
            }
        }
        int Key = 0;
        protected void DoctorsGv_SelectedIndexChanged(object sender, EventArgs e)
        {
            DocNameTb.Value = DoctorsGv.SelectedRow.Cells[2].Text;
            DocPhoneTb.Value = DoctorsGv.SelectedRow.Cells[3].Text;
            DocExpTb.Value = DoctorsGv.SelectedRow.Cells[4].Text;
            SpecialisationTb.Value = DoctorsGv.SelectedRow.Cells[5].Text;
            GenderTb.SelectedItem.Value = DoctorsGv.SelectedRow.Cells[6].Text;
            AddressTb.Value = DoctorsGv.SelectedRow.Cells[7].Text;
            PasswordTb.Value = DoctorsGv.SelectedRow.Cells[8].Text;

            if (DocNameTb.Value == "")
            {
                Key = 0;
            }
            else
            {
                Key = Convert.ToInt32(DoctorsGv.SelectedRow.Cells[1].Text);
            }
        }

        protected void DeleteBtn_Click(object sender, EventArgs e)
        {
            try
            {
                if (DocNameTb.Value == "")
                {
                    ErrMsg.InnerText = "Select a Doctor!!!";
                }
                else
                {
                    string Query = "delete from DoctorTbl where DocId={0}";
                    Query = string.Format(Query, DoctorsGv.SelectedRow.Cells[1].Text);
                    Con.SetDatas(Query);
                    ShowDoctors();
                    ErrMsg.InnerText = "Receptionist Deleted!!!";
                    Key = 0;
                    DocNameTb.Value = "";
                    DocPhoneTb.Value = "";
                    DocExpTb.Value = "";
                    SpecialisationTb.Value = "";
                    AddressTb.Value = "";
                    PasswordTb.Value = "";
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
                string DocName = DocNameTb.Value;
                string DocPhone = DocPhoneTb.Value;
                string DocExp = DocExpTb.Value;
                string DocSpec = SpecialisationTb.Value;
                string DocGen = GenderTb.SelectedItem.ToString();
                string DocAdd = AddressTb.Value;
                string DocPass = PasswordTb.Value;
                string Query = "update DoctorTbl set DocName= '{0}',DocPhone='{1}',DocExp='{2}',DocSpec='{3}',DocGen='{4}',DocAdd='{5}',DocPass='{6}' where DocId = {7}";
                Query = string.Format(Query, DocName, DocPhone, DocExp, DocSpec, DocGen, DocAdd, DocPass, DoctorsGv.SelectedRow.Cells[1].Text);
                Con.SetDatas(Query);
                ShowDoctors();
                ErrMsg.InnerText = "Doctor Updated!!!";
                DocNameTb.Value = "";
                DocPhoneTb.Value = "";
                DocExpTb.Value = "";
                SpecialisationTb.Value = "";
                AddressTb.Value = "";
                PasswordTb.Value = "";
                GenderTb.SelectedIndex = -1;
            }
            catch (Exception Ex)
            {
                ErrMsg.InnerText = Ex.Message;
            }
        }
    }
    
}