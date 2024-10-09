<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="feriados.aspx.cs" Inherits="cliente_feriados.feriados" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <style>
        .form-group {
            margin-bottom: 20px;
        }

        .list-boxes {
            display: flex;
            justify-content: space-between;
        }

            .list-boxes .list-box {
                flex: 1;
                margin-right: 20px;
            }

                .list-boxes .list-box:last-child {
                    margin-right: 0;
                }

        .textbox-large {
            width: 100%;
        }

        .listbox-scrollable {
            height: auto; 
            overflow-y: auto;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container mt-5">
            <h2 class="mb-4">Obter Feriados</h2>
            <div class="form-group">
                <label for="textAno">Ano</label>
                <asp:TextBox CssClass="form-control" runat="server" ID="textAno" />
            </div>
            <div class="form-group">
                <asp:Button CssClass="btn btn-primary" Text="Obter Feriados" ID="buttonObterFeriados" runat="server" OnClick="buttonObterFeriados_Click" />
            </div>
            <div class="form-group">
                <label for="textCarnaval">Carnaval</label>
                <asp:TextBox CssClass="form-control textbox-large" runat="server" ID="textCarnaval" />
            </div>
            <div class="form-group">
                <label for="textSextasanta">Sexta-feira Santa</label>
                <asp:TextBox CssClass="form-control textbox-large" runat="server" ID="textSextasanta" />
            </div>
            <div class="form-group">
                <label for="textPascoa">Páscoa</label>
                <asp:TextBox CssClass="form-control textbox-large" runat="server" ID="textPascoa" />
            </div>
            <div class="form-group">
                <label for="textcorpoDeus">Corpo de Deus</label>
                <asp:TextBox CssClass="form-control textbox-large" runat="server" ID="textcorpoDeus" />
            </div>

            <div class="list-boxes">
                <div class="list-box">
                    <label for="ListBoxNacionais">Feriados Nacionais</label>
                    <asp:ListBox CssClass="form-control listbox-scrollable" ID="ListBoxNacionais" runat="server"></asp:ListBox>
                </div>
                <div class="list-box">
                    <label for="ListBoxMunicipais">Feriados Municipais</label>
                    <asp:ListBox CssClass="form-control listbox-scrollable" ID="ListBoxMunicipais" runat="server"></asp:ListBox>
                </div>
            </div>
        </div>
    </form>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>

</body>
</html>
