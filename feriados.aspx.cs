using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace cliente_feriados
{
    public partial class feriados : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void buttonObterFeriados_Click(object sender, EventArgs e)
        {
            int ano = int.Parse(textAno.Text);

            //Instanciar a Referencia

            feriados_sapo.HolidaySoap proxyferiados = new feriados_sapo.HolidaySoap();


            //Carnaval
            feriados_sapo.Holiday carnaval = new feriados_sapo.Holiday();
            carnaval = proxyferiados.GetCarnival(ano);

            textCarnaval.Text = carnaval.Date.ToShortDateString()
            + " * " + carnaval.Name.ToString();

            //Sexta-feira Santa
            feriados_sapo.Holiday SextaFeira = new feriados_sapo.Holiday();
            SextaFeira = proxyferiados.GetGoodFriday(ano);

            textSextasanta.Text = SextaFeira.Date.ToShortDateString()
                + " * " + SextaFeira.Name.ToString();

            //Páscoa
            feriados_sapo.Holiday Pascoa = new feriados_sapo.Holiday();
            Pascoa = proxyferiados.GetEaster(ano);

            textPascoa.Text = Pascoa.Date.ToShortDateString()
                + " * " + Pascoa.Name.ToString();

            //CorpodeDeus
            feriados_sapo.Holiday CorpoDeus = new feriados_sapo.Holiday();
            CorpoDeus = proxyferiados.GetCorpusChristi(ano);

            textcorpoDeus.Text = CorpoDeus.Date.ToShortDateString()
                + " * " + CorpoDeus.Name.ToString();

            //feriados nacionais

            ListBoxNacionais.Items.Clear();
            feriados_sapo.Holiday[] feriados_nacionais;
            feriados_nacionais = proxyferiados.GetNationalHolidays(ano);
            foreach (feriados_sapo.Holiday feriado in feriados_nacionais)
            {
                ListBoxNacionais.Items.Add(feriado.Date.ToShortDateString() + " * " +

                feriado.Name.ToString());
            }

            //feriados Municipais

            ListBoxMunicipais.Items.Clear();
            feriados_sapo.Holiday[] feriados_municipais;
            feriados_municipais = proxyferiados.GetLocalHolidays(ano);
            foreach (feriados_sapo.Holiday feriadoM in feriados_municipais)
            {
                ListBoxMunicipais.Items.Add(feriadoM.Date.ToShortDateString() + " * " +

                feriadoM.Municipality.Name.ToString());
            }






        }
    }
}