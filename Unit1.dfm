object Form1: TForm1
  Left = 188
  Top = 124
  Width = 369
  Height = 366
  Caption = #1054#1073#1088#1072#1090#1085#1072#1103' '#1087#1086#1083#1100#1089#1082#1072#1103' '#1079#1072#1087#1080#1089#1100
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 88
    Top = 8
    Width = 174
    Height = 20
    Caption = #1042#1074#1077#1076#1080#1090#1077' '#1074#1099#1088#1072#1078#1077#1085#1080#1077
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 56
    Top = 32
    Width = 231
    Height = 20
    Caption = #1055#1086#1076#1076#1077#1088#1078#1080#1074#1072#1102#1090#1089#1103' '#1089#1080#1084#1074#1086#1083#1099
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 64
    Top = 56
    Width = 216
    Height = 20
    Caption = '1,2,3,4,5,6,7,8,9,0,+,-,*,/,(,)'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 96
    Top = 240
    Width = 130
    Height = 13
    Caption = #1042#1099#1087#1086#1083#1085#1080#1083': '#1055#1091#1089#1090#1086#1074#1086#1081#1090
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 96
    Top = 288
    Width = 162
    Height = 13
    Caption = #1055#1088#1086#1074#1077#1088#1080#1083': '#1041#1077#1083#1100#1090#1102#1082#1086#1074' '#1052'.'#1042'.'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label6: TLabel
    Left = 96
    Top = 256
    Width = 99
    Height = 13
    Caption = #1060#1072#1082#1091#1083#1100#1090#1077#1090': '#1048#1041#1057
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label7: TLabel
    Left = 96
    Top = 272
    Width = 46
    Height = 13
    Caption = #1043#1088#1091#1087#1087#1072':'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Edit1: TEdit
    Left = 96
    Top = 96
    Width = 153
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    Text = '(1+2)/4'
    OnKeyPress = Edit1KeyPress
  end
  object BitBtn1: TBitBtn
    Left = 96
    Top = 144
    Width = 153
    Height = 25
    Caption = #1055#1088#1077#1086#1073#1088#1072#1079#1086#1074#1072#1090#1100
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    OnClick = BitBtn1Click
  end
  object Edit2: TEdit
    Left = 96
    Top = 192
    Width = 153
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 2
    Text = #1056#1077#1079#1091#1083#1100#1090#1072#1090
  end
end
