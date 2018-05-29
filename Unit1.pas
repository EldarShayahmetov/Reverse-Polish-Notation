unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    BitBtn1: TBitBtn;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    procedure BitBtn1Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  DynArray : array of String;
  Normal : string;
  Polish : string;
  k,i:integer;
  StackSize : integer;
  open: boolean;

implementation

{$R *.dfm}

procedure TForm1.BitBtn1Click(Sender: TObject);
begin
if open=true then
begin
application.Title:='������';
showmessage('������ �� �������');
Exit;
end;

edit2.Text:='';
polish:='';

DynArray:=nil;
StackSize:=1;
SetLength(DynArray, StackSize);

Normal:=Edit1.Text;

For i:=1 to Length(Normal) do
begin
  if (Normal[i] = '0') or (Normal[i] = '1') or (Normal[i] = '2') or (Normal[i] = '3') or (Normal[i] = '4') or (Normal[i] = '5') or (Normal[i] = '6') or (Normal[i] = '7') or (Normal[i] = '8') or (Normal[i] = '9') then
  begin
  Polish:=Polish+Normal[i]+',';
  edit2.Text:=polish;
  end
  else
  begin

   if Normal[i] = '(' then
   begin
   StackSize:=StackSize+1;
   SetLength(DynArray, StackSize);
   DynArray[High(DynArray)]:= Normal[i];
   end;

   if Normal[i] = ')' then
   begin
    while DynArray[High(DynArray)]<>'(' do
    begin
    Polish:=Polish+DynArray[High(DynArray)];
    StackSize:=Length(DynArray)-1;
    SetLength(DynArray, StackSize);
    end;
    StackSize:=Length(DynArray)-1;
    SetLength(DynArray, StackSize);
    end;


    if (Normal[i] = '+') or (Normal[i] = '-') then
    begin
      if (DynArray[High(DynArray)] = '+') or (DynArray[High(DynArray)] = '-') then
      begin
      Polish:=Polish+DynArray[High(DynArray)];
      DynArray[High(DynArray)]:= Normal[i];
      end
      else
      begin
      if (DynArray[High(DynArray)] = '*') or (DynArray[High(DynArray)] = '/') then
      begin
      Polish:=Polish+DynArray[High(DynArray)]+',';
      DynArray[High(DynArray)]:= Normal[i];
      end
      else
      begin
      StackSize:= StackSize+1;
      SetLength(DynArray, StackSize);
      DynArray[High(DynArray)]:= Normal[i] ;
      end;
      end;
      end;
      end;

      if (Normal[i] = '*') or (Normal[i] = '/') then
      begin
       if (DynArray[High(DynArray)] = '+') or (DynArray[High(DynArray)] = '-') then
        begin
        StackSize:= StackSize+1;
        SetLength(DynArray, StackSize);
        DynArray[High(DynArray)]:= Normal[i] ;
        end
        else
        begin
        if (DynArray[High(DynArray)] = '*') or (DynArray[High(DynArray)] = '/') then
        begin
        Polish:=Polish+DynArray[High(DynArray)];
        DynArray[High(DynArray)]:= Normal[i]+',';
        end
        else
        begin
        StackSize:= StackSize+1;
        SetLength(DynArray, StackSize);
        DynArray[High(DynArray)]:= Normal[i] ;
        end;
        end;


  end;

  if i=length(Normal) then
  begin
  for i:=0 to length(DynArray)-1 do
  begin
  Polish:=Polish+DynArray[High(DynArray)-i];
  edit2.Text:=polish;
  end;
  end;

end;

end;

procedure TForm1.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
if not (Key in ['0'..'9','+','-','/','*','(',')', #8])then Key:=#0;
if Key in ['(',#8] then open:=true;
if Key in [')',#8] then open:=false;
end;

end.
