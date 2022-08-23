unit frmTimeAppUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,
  Vcl.Samples.Spin, Vcl.Imaging.pngimage, Vcl.ExtCtrls, clsMytimeUnit;

type
  TfrmTimeObjectExample = class(TForm)
    lblTime: TLabel;
    lstTimes: TListBox;
    Label1: TLabel;
    btnIncHours: TButton;
    btnIncMins: TButton;
    btnListTime: TButton;
    btnList5: TButton;
    sedHours: TSpinEdit;
    cmbSeparator: TComboBox;
    sedMins: TSpinEdit;
    btnSetTime: TButton;
    Label2: TLabel;
    Label3: TLabel;
    Bevel1: TBevel;
    Image1: TImage;
    Shape1: TShape;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnIncHoursClick(Sender: TObject);
    procedure btnIncMinsClick(Sender: TObject);
    procedure btnListTimeClick(Sender: TObject);
    procedure btnList5Click(Sender: TObject);
    procedure btnSetTimeClick(Sender: TObject);
  private
    { Private declarations }

    procedure updateTimeLabel;
  public
    { Public declarations }
  end;

var
  frmTimeObjectExample: TfrmTimeObjectExample;

  myTimeObj : TMyTime;

implementation

{$R *.dfm}

procedure TfrmTimeObjectExample.updateTimeLabel;
begin
   lblTime.Caption := myTimeObj.getTimeStr;
end;

procedure TfrmTimeObjectExample.btnIncHoursClick(Sender: TObject);
begin
    myTimeObj.incHours;
    Self.updateTimeLabel;
end;

procedure TfrmTimeObjectExample.btnIncMinsClick(Sender: TObject);
begin
    myTimeObj.incMinutes;
    Self.updateTimeLabel;
end;

procedure TfrmTimeObjectExample.btnList5Click(Sender: TObject);
begin
  var
    I : integer;
    for I := 1 to 5 do
        begin
          myTimeObj.incMinutes;
          lstTimes.Items.Add(myTimeObj.getTimeStr);
        end;
end;

procedure TfrmTimeObjectExample.btnListTimeClick(Sender: TObject);
begin
   lstTimes.Items.Add(myTimeObj.getTimeStr);
end;

procedure TfrmTimeObjectExample.btnSetTimeClick(Sender: TObject);
begin
  myTimeObj.setHours(sedHours.Value);
  myTimeObj.setMinutes(sedMins.Value);
  myTimeObj.separator := cmbSeparator.Text[1];
  Self.updateTimeLabel;


end;

procedure TfrmTimeObjectExample.FormCreate(Sender: TObject);
begin
  myTimeObj := TMyTime.create;
end;

procedure TfrmTimeObjectExample.FormShow(Sender: TObject);
begin
    Self.updateTimeLabel;
    lstTimes.Clear;
end;

end.
