object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 209
  ClientWidth = 472
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object MainMenu1: TMainMenu
    Left = 244
    Top = 76
    object Python1: TMenuItem
      Caption = 'Python'
      object Django1: TMenuItem
        Caption = 'Django'
        object ORM1: TMenuItem
          Caption = 'ORM'
          object Model1: TMenuItem
            Caption = 'Model'
            OnClick = Model1Click
          end
        end
        object emplates1: TMenuItem
          Caption = 'Templates'
        end
      end
      object Flask1: TMenuItem
        Caption = 'Flask'
      end
      object Pyramid1: TMenuItem
        Caption = 'Bottle'
      end
    end
  end
end
