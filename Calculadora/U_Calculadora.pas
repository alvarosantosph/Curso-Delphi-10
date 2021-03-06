unit U_Calculadora;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Layouts, FMX.Edit;

type
  TForm1 = class(TForm)
    btn_0: TButton;
    btn_1: TButton;
    btn_2: TButton;
    btn_3: TButton;
    btn_4: TButton;
    btn_5: TButton;
    btn_6: TButton;
    btn_7: TButton;
    btn_8: TButton;
    btn_9: TButton;
    btn_ponto: TButton;
    btn_igual: TButton;
    btn_multiplicar: TButton;
    btn_subtrair: TButton;
    btn_somar: TButton;
    btn_dividir: TButton;
    caixa_botoes: TLayout;
    caixa_topo: TLayout;
    lb_operador: TLabel;
    lb_n1: TLabel;
    lb_n2: TLabel;
    btn_apagar: TButton;
    btn_ce: TButton;
    btn_c: TButton;
    btn_desenvolvedor: TButton;
    procedure btn_somarClick(Sender: TObject);
    procedure btn_subtrairClick(Sender: TObject);
    procedure btn_multiplicarClick(Sender: TObject);
    procedure btn_dividirClick(Sender: TObject);
    procedure btn_igualClick(Sender: TObject);
    procedure btn_apagarClick(Sender: TObject);
    procedure btn_0Click(Sender: TObject);
    procedure btn_1Click(Sender: TObject);
    procedure btn_2Click(Sender: TObject);
    procedure btn_3Click(Sender: TObject);
    procedure btn_4Click(Sender: TObject);
    procedure btn_6Click(Sender: TObject);
    procedure btn_5Click(Sender: TObject);
    procedure btn_7Click(Sender: TObject);
    procedure btn_8Click(Sender: TObject);
    procedure btn_9Click(Sender: TObject);
    procedure btn_pontoClick(Sender: TObject);
    procedure btn_ceClick(Sender: TObject);
    procedure btn_cClick(Sender: TObject);
    procedure btn_desenvolvedorClick(Sender: TObject);
    procedure habilitarDesabilitarOperacoes(operador : String);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}

uses Desenvolvedor;

procedure TForm1.btn_0Click(Sender: TObject);
begin
    if lb_operador.Text = '.' then
  begin
    lb_n1.Text := lb_n1.Text + '0';
  end
  else
  begin
    lb_n2.Text := lb_n2.Text + '0';
  end;
end;

procedure TForm1.btn_1Click(Sender: TObject);
begin
  if lb_operador.Text = '.' then
  begin
    lb_n1.Text := lb_n1.Text + '1';
  end
  else
  begin
    lb_n2.Text := lb_n2.Text + '1';
  end;
end;

procedure TForm1.btn_2Click(Sender: TObject);
begin
  if lb_operador.Text = '.' then
  begin
    lb_n1.Text := lb_n1.Text + '2';
  end
  else
  begin
    lb_n2.Text := lb_n2.Text + '2';
  end;
end;

procedure TForm1.btn_3Click(Sender: TObject);
begin
    if lb_operador.Text = '.' then
  begin
    lb_n1.Text := lb_n1.Text + '3';
  end
  else
  begin
    lb_n2.Text := lb_n2.Text + '3';
  end;
end;

procedure TForm1.btn_4Click(Sender: TObject);
begin
    if lb_operador.Text = '.' then
  begin
    lb_n1.Text := lb_n1.Text + '4';
  end
  else
  begin
    lb_n2.Text := lb_n2.Text + '4';
  end;
end;

procedure TForm1.btn_5Click(Sender: TObject);
begin
    if lb_operador.Text = '.' then
  begin
    lb_n1.Text := lb_n1.Text + '5';
  end
  else
  begin
    lb_n2.Text := lb_n2.Text + '5';
  end;
end;

procedure TForm1.btn_6Click(Sender: TObject);
begin
    if lb_operador.Text = '.' then
  begin
    lb_n1.Text := lb_n1.Text + '6';
  end
  else
  begin
    lb_n2.Text := lb_n2.Text + '6';
  end;
end;

procedure TForm1.btn_7Click(Sender: TObject);
begin
    if lb_operador.Text = '.' then
  begin
    lb_n1.Text := lb_n1.Text + '7';
  end
  else
  begin
    lb_n2.Text := lb_n2.Text + '7';
  end;
end;

procedure TForm1.btn_8Click(Sender: TObject);
begin
    if lb_operador.Text = '.' then
  begin
    lb_n1.Text := lb_n1.Text + '8';
  end
  else
  begin
    lb_n2.Text := lb_n2.Text + '8';
  end;
end;

procedure TForm1.btn_9Click(Sender: TObject);
begin
    if lb_operador.Text = '.' then
  begin
    lb_n1.Text := lb_n1.Text + '9';
  end
  else
  begin
    lb_n2.Text := lb_n2.Text + '9';
  end;
end;

procedure TForm1.btn_apagarClick(Sender: TObject);
begin
  if lb_operador.Text = '.' then
  begin
    lb_n1.Text := copy(lb_n1.Text, 0, length(lb_n1.Text) - 1);
  end
  else 
  begin
    lb_n2.Text := copy(lb_n2.Text, 0, length(lb_n2.Text) - 1);
  end;
end;

procedure TForm1.btn_cClick(Sender: TObject);
begin
  if lb_operador.Text = '.' then
  begin
    lb_n1.Text := '';
    btn_ponto.Enabled := true;
  end
  else 
  begin
    lb_n2.Text := '';
    btn_ponto.Enabled := true;
  end;
end;

procedure TForm1.btn_ceClick(Sender: TObject);
begin
    lb_operador.Text := '.';
    lb_n1.Text := '';
    lb_n2.Text := '';

    btn_ponto.Enabled := true;
    
    btn_dividir.Enabled := true;
    btn_multiplicar.Enabled := true;
    btn_somar.Enabled := true;
    btn_subtrair.Enabled := true;
end;

procedure TForm1.btn_desenvolvedorClick(Sender: TObject);
begin
  frm_desenvolvedor := Tfrm_desenvolvedor.Create(self);
  frm_desenvolvedor.ShowModal;
end;

procedure TForm1.btn_dividirClick(Sender: TObject);
begin
  if lb_n1.Text = '' then
  begin
    ShowMessage('Digite um n�mero.');
  end
  else 
  begin

    btn_ponto.Enabled := true;
  
    lb_operador.Text := '/';

    habilitarDesabilitarOperacoes('divisao');
  end;
end;

procedure TForm1.btn_igualClick(Sender: TObject);
  var
  n1, n2 : Double;
  var
  caracter: Char;

begin

  if (lb_operador.Text = '.') OR (lb_n2.Text = '') then
  begin
    ShowMessage('Digite um n�mero ou um operador.');
  end
  else
  begin
    n1 := strToFloat(lb_n1.Text);
    n2 := strToFloat(lb_n2.Text);

    {
    if lb_operador.Text = '+' then
    begin
      ShowMessage(FloatToStr(n1 + n2));
    end;

      if lb_operador.Text = '-' then
    begin
      ShowMessage(FloatToStr(n1 - n2));
    end;

      if lb_operador.Text = '*' then
    begin
      ShowMessage(FloatToStr(n1 * n2));
    end;

      if lb_operador.Text = '/' then
    begin
      ShowMessage(FloatToStr(n1 / n2));
    end;
    }

    caracter := lb_operador.Text[1];
    case caracter of
      '+': begin
        ShowMessage(FloatToStr(n1 + n2));
      end;
    end;

        case caracter of
      '-': begin
        ShowMessage(FloatToStr(n1 - n2));
      end;
    end;

        case caracter of
      '*': begin
        ShowMessage(FloatToStr(n1 * n2));
      end;
    end;

        case caracter of
      '/': begin
        ShowMessage(FloatToStr(n1 / n2));
      end;
    end;

    lb_operador.Text := '.';
    lb_n1.Text := '';
    lb_n2.Text := '';

    btn_ponto.Enabled := true;

    habilitarDesabilitarOperacoes('padrao');

  end;
end;

procedure TForm1.btn_multiplicarClick(Sender: TObject);
begin
  if lb_n1.Text = '' then
  begin
    ShowMessage('Digite um n�mero.');
  end
  else 
  begin

    btn_ponto.Enabled := true;
  
    lb_operador.Text := '*';

    habilitarDesabilitarOperacoes('multiplicacao');
  end;
end;

procedure TForm1.btn_pontoClick(Sender: TObject);
begin

  if (lb_n1.Text = '') then
  begin
    ShowMessage('Digite um n�mero.');
  end
  else
  begin
    btn_ponto.Enabled := false;
    if lb_operador.Text = '.' then
    begin
      lb_n1.Text := lb_n1.Text + ',';
    end
    else
    begin
      lb_n2.Text := lb_n2.Text + ',';
    end;
  end;
  


end;

procedure TForm1.btn_somarClick(Sender: TObject);
begin
  if lb_n1.Text = '' then
  begin
    ShowMessage('Digite um n�mero.');
  end
  else 
  begin

    btn_ponto.Enabled := true;
  
    lb_operador.Text := '+';

    habilitarDesabilitarOperacoes('soma');
  end;

end;

procedure TForm1.btn_subtrairClick(Sender: TObject);
begin
  if lb_n1.Text = '' then
  begin
    ShowMessage('Digite um n�mero.');
  end
  else 
  begin

    btn_ponto.Enabled := true;
    
    lb_operador.Text := '-';

    habilitarDesabilitarOperacoes('subtracao');
  end;
  
end;

procedure TForm1.habilitarDesabilitarOperacoes(operador: String);
begin
  if operador = 'soma' then
  begin
    btn_dividir.Enabled := true;
    btn_multiplicar.Enabled := true;
    btn_somar.Enabled := false;
    btn_subtrair.Enabled := true;
  end
  else if operador = 'subtracao' then
  begin
    btn_dividir.Enabled := true;
    btn_multiplicar.Enabled := true;
    btn_somar.Enabled := true;
    btn_subtrair.Enabled := false;
  end
  else if operador = 'multiplicacao' then
   begin
      btn_dividir.Enabled := true;
      btn_multiplicar.Enabled := false;
      btn_somar.Enabled := true;
      btn_subtrair.Enabled := true;
   end
   else if operador = 'divisao' then
   begin
      btn_dividir.Enabled := false;
      btn_multiplicar.Enabled := true;
      btn_somar.Enabled := true;
      btn_subtrair.Enabled := true;
   end
   else
   begin
      btn_dividir.Enabled := true;
      btn_multiplicar.Enabled := true;
      btn_somar.Enabled := true;
      btn_subtrair.Enabled := true;
   end;
end;

end.
