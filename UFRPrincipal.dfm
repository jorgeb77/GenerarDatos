object FRPrincipal: TFRPrincipal
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Generador de Datos'
  ClientHeight = 1161
  ClientWidth = 1353
  Color = 11599871
  Constraints.MaxHeight = 1217
  Constraints.MaxWidth = 1375
  Constraints.MinHeight = 1217
  Constraints.MinWidth = 1375
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -18
  Font.Name = 'Segoe UI'
  Font.Style = []
  KeyPreview = True
  Position = poScreenCenter
  StyleName = 'Windows'
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 144
  TextHeight = 25
  object pnlFieldConfig: TPanel
    Left = 0
    Top = 0
    Width = 1353
    Height = 361
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    Align = alTop
    Anchors = [akLeft, akRight]
    BevelOuter = bvNone
    Color = 15724527
    ParentBackground = False
    TabOrder = 0
    object pnlPreview: TcxGroupBox
      Left = 11
      Top = 241
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Caption = 'Vista Previa'
      PanelStyle.CaptionIndent = 3
      ParentFont = False
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'SkinAzul'
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'SkinAzul'
      TabOrder = 5
      Height = 112
      Width = 1328
      object memPreview: TcxMemo
        Left = 18
        Top = 31
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        TabStop = False
        Properties.ReadOnly = True
        Properties.ScrollBars = ssVertical
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.ScrollbarMode = sbmClassic
        Style.LookAndFeel.ScrollMode = scmClassic
        Style.LookAndFeel.SkinName = 'SkinAzul'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.ScrollbarMode = sbmClassic
        StyleDisabled.LookAndFeel.ScrollMode = scmClassic
        StyleDisabled.LookAndFeel.SkinName = 'SkinAzul'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.ScrollbarMode = sbmClassic
        StyleFocused.LookAndFeel.ScrollMode = scmClassic
        StyleFocused.LookAndFeel.SkinName = 'SkinAzul'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.ScrollbarMode = sbmClassic
        StyleHot.LookAndFeel.ScrollMode = scmClassic
        StyleHot.LookAndFeel.SkinName = 'SkinAzul'
        StyleReadOnly.LookAndFeel.NativeStyle = False
        StyleReadOnly.LookAndFeel.ScrollbarMode = sbmClassic
        StyleReadOnly.LookAndFeel.ScrollMode = scmClassic
        StyleReadOnly.LookAndFeel.SkinName = 'SkinAzul'
        TabOrder = 0
        Height = 64
        Width = 1297
      end
    end
    object GbMaxRandom: TcxGroupBox
      Left = 1049
      Top = 24
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Caption = 'Maximo Random'
      PanelStyle.CaptionIndent = 3
      ParentFont = False
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'SkinAzul'
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'SkinAzul'
      TabOrder = 3
      Height = 83
      Width = 290
      object SeRango: TcxSpinEdit
        Left = 23
        Top = 31
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        Properties.OnChange = SeRangoPropertiesChange
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'SkinAzul'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'SkinAzul'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'SkinAzul'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'SkinAzul'
        StyleReadOnly.LookAndFeel.NativeStyle = False
        StyleReadOnly.LookAndFeel.SkinName = 'SkinAzul'
        TabOrder = 0
        Width = 170
      end
    end
    object GbTipoDato: TcxGroupBox
      Left = 335
      Top = 24
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Caption = 'Tipo de Dato'
      PanelStyle.CaptionIndent = 3
      ParentFont = False
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'SkinAzul'
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'SkinAzul'
      TabOrder = 1
      Height = 83
      Width = 312
      object cmbTipoDato: TcxImageComboBox
        Left = 12
        Top = 35
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        Properties.Images = ImgListTipoDato
        Properties.Items = <>
        Properties.OnChange = cmbTipoDatoPropertiesChange
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.ScrollbarMode = sbmClassic
        Style.LookAndFeel.ScrollMode = scmClassic
        Style.LookAndFeel.SkinName = 'SkinAzul'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.ScrollbarMode = sbmClassic
        StyleDisabled.LookAndFeel.ScrollMode = scmClassic
        StyleDisabled.LookAndFeel.SkinName = 'SkinAzul'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.ScrollbarMode = sbmClassic
        StyleFocused.LookAndFeel.ScrollMode = scmClassic
        StyleFocused.LookAndFeel.SkinName = 'SkinAzul'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.ScrollbarMode = sbmClassic
        StyleHot.LookAndFeel.ScrollMode = scmClassic
        StyleHot.LookAndFeel.SkinName = 'SkinAzul'
        StyleReadOnly.LookAndFeel.NativeStyle = False
        StyleReadOnly.LookAndFeel.ScrollbarMode = sbmClassic
        StyleReadOnly.LookAndFeel.ScrollMode = scmClassic
        StyleReadOnly.LookAndFeel.SkinName = 'SkinAzul'
        TabOrder = 0
        Width = 277
      end
    end
    object GbCategoria: TcxGroupBox
      Left = 11
      Top = 24
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Caption = 'Categor'#237'a'
      PanelStyle.CaptionIndent = 3
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -19
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = []
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'SkinAzul'
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'SkinAzul'
      TabOrder = 0
      Height = 83
      Width = 313
      object cmbCategoria: TcxImageComboBox
        Left = 12
        Top = 35
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        Properties.Images = ImgListCategorias
        Properties.Items = <
          item
            Description = 'Personal'
            ImageIndex = 0
            Value = 'Personal'
          end
          item
            Description = 'Ubicaci'#243'n'
            ImageIndex = 1
            Value = 'Ubicaci'#243'n'
          end
          item
            Description = 'Negocios'
            ImageIndex = 2
            Value = 'Negocios'
          end
          item
            Description = 'Fechas'
            ImageIndex = 3
            Value = 'Fechas'
          end
          item
            Description = 'Horas'
            ImageIndex = 4
            Value = 'Horas'
          end
          item
            Description = 'N'#250'meros'
            ImageIndex = 5
            Value = 'N'#250'meros'
          end
          item
            Description = 'Medicamentos'
            ImageIndex = 6
            Value = 'Medicamentos'
          end
          item
            Description = 'Personalizado'
            ImageIndex = 7
            Value = 'Personalizado'
          end
          item
            Description = 'Pagos'
            ImageIndex = 8
            Value = 'Pagos'
          end
          item
            Description = 'Productos'
            ImageIndex = 9
            Value = 'Productos'
          end>
        Properties.OnChange = cmbCategoriaPropertiesChange
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.ScrollbarMode = sbmClassic
        Style.LookAndFeel.ScrollMode = scmClassic
        Style.LookAndFeel.SkinName = 'SkinAzul'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.ScrollbarMode = sbmClassic
        StyleDisabled.LookAndFeel.ScrollMode = scmClassic
        StyleDisabled.LookAndFeel.SkinName = 'SkinAzul'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.ScrollbarMode = sbmClassic
        StyleFocused.LookAndFeel.ScrollMode = scmClassic
        StyleFocused.LookAndFeel.SkinName = 'SkinAzul'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.ScrollbarMode = sbmClassic
        StyleHot.LookAndFeel.ScrollMode = scmClassic
        StyleHot.LookAndFeel.SkinName = 'SkinAzul'
        StyleReadOnly.LookAndFeel.NativeStyle = False
        StyleReadOnly.LookAndFeel.ScrollbarMode = sbmClassic
        StyleReadOnly.LookAndFeel.ScrollMode = scmClassic
        StyleReadOnly.LookAndFeel.SkinName = 'SkinAzul'
        TabOrder = 0
        Width = 277
      end
    end
    object GbNombreCampo: TcxGroupBox
      Left = 11
      Top = 115
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Caption = 'Nombre Campo'
      PanelStyle.CaptionIndent = 3
      ParentFont = False
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'SkinAzul'
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'SkinAzul'
      TabOrder = 4
      Height = 118
      Width = 313
      object edtNombreCampo: TcxTextEdit
        Left = 17
        Top = 35
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'SkinAzul'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'SkinAzul'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'SkinAzul'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'SkinAzul'
        StyleReadOnly.LookAndFeel.NativeStyle = False
        StyleReadOnly.LookAndFeel.SkinName = 'SkinAzul'
        TabOrder = 0
        Width = 276
      end
      object LbLongitud: TcxLabel
        Left = 137
        Top = 73
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        Caption = 'Longitud :'
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        Transparent = True
      end
      object EdLongitud: TcxCurrencyEdit
        Left = 227
        Top = 71
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        Properties.AssignedValues.DisplayFormat = True
        Properties.DecimalPlaces = 0
        Properties.MaxLength = 3
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'SkinAzul'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'SkinAzul'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'SkinAzul'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'SkinAzul'
        StyleReadOnly.LookAndFeel.NativeStyle = False
        StyleReadOnly.LookAndFeel.SkinName = 'SkinAzul'
        TabOrder = 1
        Visible = False
        Width = 66
      end
    end
    object GbRango: TcxGroupBox
      Left = 1049
      Top = 107
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Caption = 'Rango'
      PanelStyle.CaptionIndent = 3
      ParentFont = False
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'SkinAzul'
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'SkinAzul'
      TabOrder = 6
      Height = 84
      Width = 290
      object Label1: TLabel
        Left = 11
        Top = 35
        Width = 39
        Height = 25
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        Caption = 'Min :'
      end
      object Label2: TLabel
        Left = 145
        Top = 35
        Width = 42
        Height = 25
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        Caption = 'Max :'
      end
      object EdMin: TcxCurrencyEdit
        Left = 55
        Top = 31
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        Properties.AssignedValues.DisplayFormat = True
        Properties.DecimalPlaces = 0
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'SkinAzul'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'SkinAzul'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'SkinAzul'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'SkinAzul'
        StyleReadOnly.LookAndFeel.NativeStyle = False
        StyleReadOnly.LookAndFeel.SkinName = 'SkinAzul'
        TabOrder = 0
        Width = 88
      end
      object EdMax: TcxCurrencyEdit
        Left = 191
        Top = 31
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        Properties.AssignedValues.DisplayFormat = True
        Properties.DecimalPlaces = 0
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'SkinAzul'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'SkinAzul'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'SkinAzul'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'SkinAzul'
        StyleReadOnly.LookAndFeel.NativeStyle = False
        StyleReadOnly.LookAndFeel.SkinName = 'SkinAzul'
        TabOrder = 1
        Width = 86
      end
    end
    object GbRegion: TcxGroupBox
      Left = 335
      Top = 115
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Caption = 'Regi'#243'n'
      PanelStyle.CaptionIndent = 3
      ParentFont = False
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'SkinAzul'
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'SkinAzul'
      TabOrder = 8
      Height = 118
      Width = 206
      object Image2: TImage
        Left = 12
        Top = 31
        Width = 41
        Height = 35
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        Picture.Data = {
          0954506E67496D61676589504E470D0A1A0A0000000D49484452000000200000
          00200806000000737A7AF400000006624B474400FF00FF00FFA0BDA793000001
          774944415478DAEDD4BB4EC2601407F0FF575A5B2E0189892E102E228946253A
          79592006DD1C8CBE810FC013383839391BE31B68E2E0A4E8A02181180711C3E2
          0D1022D118046B29ADB436CCC68952879EE52C2739BFE45C080C0E62024CC0BF
          003C4C601F2A567BDCF9603887351360023A80DA069D65DC64B297FDE59A7AE3
          DEFC8E7400CDBDBE676E84787E2B14DA4E3C7E70A0290501A70CD652EF0A40BC
          53CBD675C9FB27E0A5E1C0F5910AAA61419B68D9A5607A9960D0CEEB0F384D51
          08F954E4F30C9AAA36B23E060E8A607C4C40A1A2606E4A674041D456E2AD84E3
          1D11B440C19FD80511798403DB90DA2C82D69CBE80F4D92CDA9F4FC8544548AF
          1C82B104FC433E58DEB720F12CE6E397FA02CE9351D06C0995148F742B0C9AE6
          B0E0296260D486AFBA0BD1A50B7D0157D51510FE16C59302640570B418108776
          098B21D49910663C87FA0292E5086C1050CB00BC3D00ABD20F57E31EB6188FBA
          6C45DC9BED1EC0F04764F82B360126C0C8300126C070C00F163FE121136A923D
          0000000049454E44AE426082}
      end
      object Image1: TImage
        Left = 12
        Top = 71
        Width = 41
        Height = 36
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        Picture.Data = {
          0954506E67496D61676589504E470D0A1A0A0000000D49484452000000200000
          00200806000000737A7AF400000006624B474400FF00FF00FFA0BDA793000002
          814944415478DA63641860C038EA8051070C0A072C2F9BD5F6F5FB3F3D52359B
          0A7E7CA6C0F9FD0B591673B05FE32BAC9C03764069E4EC6FA77E4871926A48E5
          F7D50C36BFAF91E5F3FF5A7A4F7827CF918538206DF5072D277DFE0B57DF313C
          7FF18D21C0539E61C3F6870C52125C0CFADA420C2B36DE6388F0576200C97FFA
          FC8BC1D54E9A61E9BABB0CD942E7196CF85E91E5807FA2121705F24B0DC00EC8
          AA38FCD8DD514EE6F2F5F70CA7CFBF66E8AC3565286B3ECD606E28CAA0A321C8
          D037F30A4351860E0348FEF9CB6F0C71A12A0C152D67180A33D419AC4C45C872
          003012568B08F285811D909BBBEDE5A527FFC538399819BEFFF80B9686B1B189
          B1B23081F905F67F18AC14C9B49E9D7D9FA08B9B333C0DBC1451E36C28316468
          E8390F0E765B737186DAAE730CCD65460C874FBC64B878ED1D034CDEDF430E6C
          08F7E446EAA481A2E4951FAE7EE5E70FF4926758B7F52183923C2F83980807C3
          C1E32F18EC2D25185EBEFECEF0E0F1170698BCAEA620D810E77707A897067EFF
          6194B9FFE833C3EFDFFFC0F17EE5C67B065656260645395E865B773F32A829F3
          33A0CB17676A50270D1416EE78999D6F2576F8C40BB0AFE74FB065482C38CCE0
          6025C160632EC1905D798C616ABB150348FED1932F0C85E93A0CD1590718D2CD
          7F522F0DDC6453E0FCFFEF3F3891F1F3B1317CFCF40B9CE8189918C16C901848
          FE2F10B3B33133BCFBF0937AE5C0F48205CF1EBFFF2F49AA2181228F19D4393F
          92E5009434F0E6FDA7D5403785901798E402A434F07EEFAEBDFF7FFC74A2ABF5
          C869E0735ECA63C6AB9764E8E9009434F07E42F745E6372F48AE0D2901A36960
          70A5814F0D951B19DFBD36A2AB038445CEF2D577040C8E36E1A803461D30A21D
          000004893630A18334480000000049454E44AE426082}
      end
      object RbLatino: TcxRadioButton
        Left = 72
        Top = 35
        Width = 95
        Height = 25
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        Caption = 'Latino'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -18
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnClick = RbLatinoClick
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'SkinAzul'
        Transparent = True
      end
      object RbUS: TcxRadioButton
        Left = 72
        Top = 71
        Width = 95
        Height = 26
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        Caption = 'US'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -18
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnClick = RbUSClick
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'SkinAzul'
        Transparent = True
      end
    end
    object GbRangoFecha: TcxGroupBox
      Left = 396
      Top = 115
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Caption = 'Rango Fecha'
      PanelStyle.CaptionIndent = 3
      ParentFont = False
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'SkinAzul'
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'SkinAzul'
      TabOrder = 10
      Visible = False
      Height = 83
      Width = 409
      object Label3: TLabel
        Left = 12
        Top = 37
        Width = 59
        Height = 25
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        Caption = 'Desde :'
      end
      object Label4: TLabel
        Left = 211
        Top = 37
        Width = 54
        Height = 25
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        Caption = 'Hasta :'
      end
      object DtpDesde: TDateTimePicker
        Left = 78
        Top = 35
        Width = 125
        Height = 33
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        Date = 45673.000000000000000000
        Format = 'dd/MM/yyyy'
        Time = 0.753482488427835100
        TabOrder = 0
        OnChange = DtpDesdeChange
      end
      object DtpHasta: TDateTimePicker
        Left = 271
        Top = 35
        Width = 126
        Height = 33
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        Date = 45673.000000000000000000
        Format = 'dd/MM/yyyy'
        Time = 0.753500960650853800
        TabOrder = 1
        OnChange = DtpDesdeChange
      end
    end
    object btnAgregarCampo: TcxButton
      Left = 575
      Top = 150
      Width = 248
      Height = 83
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Caption = 'Agregar Campo'
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Office2010Silver'
      OptionsImage.ImageIndex = 0
      OptionsImage.Images = cxImageList4
      OptionsImage.Spacing = 6
      TabOrder = 9
      OnClick = btnAgregarCampoClick
    end
    object RgModo: TcxRadioGroup
      Left = 659
      Top = 24
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      TabStop = False
      Caption = 'Modo'
      ParentFont = False
      Properties.Columns = 3
      Properties.Items = <
        item
          Caption = 'Random'
        end
        item
          Caption = 'Rango'
        end
        item
          Caption = 'Secuencial'
        end>
      ItemIndex = 0
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -19
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = []
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'SkinAzul'
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'SkinAzul'
      TabOrder = 2
      OnClick = RgModoClick
      Height = 83
      Width = 379
    end
    object RgFormatoExp: TcxRadioGroup
      Left = 833
      Top = 115
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      TabStop = False
      Caption = 'Formato de Exportaci'#243'n'
      ParentFont = False
      Properties.Columns = 2
      Properties.Items = <
        item
          Caption = 'CSV'
        end
        item
          Caption = 'JSON'
        end
        item
          Caption = 'XML'
        end
        item
          Caption = 'YAML'
        end
        item
          Caption = 'TXT'
        end
        item
          Caption = 'Excel'
        end>
      ItemIndex = 0
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -19
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = []
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'SkinAzul'
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'SkinAzul'
      TabOrder = 7
      OnClick = RgFormatoExpClick
      Height = 118
      Width = 270
    end
    object RgTipoTamano: TcxRadioGroup
      Left = 659
      Top = 151
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      TabStop = False
      Caption = 'Tipo de tama'#241'o'
      ParentFont = False
      Properties.Columns = 2
      Properties.Items = <
        item
          Caption = 'Tama'#241'os letras'
        end
        item
          Caption = 'Tama'#241'os n'#250'meros'
        end>
      ItemIndex = 0
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -19
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = []
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'SkinAzul'
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'SkinAzul'
      TabOrder = 11
      OnClick = RgTipoTamanoClick
      Height = 84
      Width = 408
    end
  end
  object GbDelimitador: TcxGroupBox
    Left = 1109
    Top = 132
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    Caption = 'Delimitador'
    PanelStyle.CaptionIndent = 3
    ParentFont = False
    Style.LookAndFeel.NativeStyle = False
    Style.LookAndFeel.SkinName = 'SkinAzul'
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.SkinName = 'SkinAzul'
    TabOrder = 1
    Visible = False
    Height = 83
    Width = 180
    object EdDelimitador: TcxTextEdit
      Left = 36
      Top = 35
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Properties.MaxLength = 1
      Style.HotTrack = True
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'SkinAzul'
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'SkinAzul'
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'SkinAzul'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'SkinAzul'
      StyleReadOnly.LookAndFeel.NativeStyle = False
      StyleReadOnly.LookAndFeel.SkinName = 'SkinAzul'
      TabOrder = 0
      Width = 25
    end
  end
  object GbRandomFecha: TcxGroupBox
    Left = 511
    Top = 115
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    Caption = 'Fecha Aleatoria'
    PanelStyle.CaptionIndent = 3
    ParentFont = False
    Style.LookAndFeel.NativeStyle = False
    Style.LookAndFeel.SkinName = 'SkinAzul'
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.SkinName = 'SkinAzul'
    TabOrder = 2
    Visible = False
    Height = 83
    Width = 426
    object cxLabel5: TcxLabel
      Left = 12
      Top = 35
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Caption = 'A'#241'o inicial :'
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      Transparent = True
    end
    object cxLabel6: TcxLabel
      Left = 175
      Top = 35
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Caption = 'A'#241'os hacia adelante :'
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      Transparent = True
    end
    object EdAnioInicial: TcxCurrencyEdit
      Left = 113
      Top = 31
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Properties.AssignedValues.DisplayFormat = True
      Properties.DecimalPlaces = 0
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'SkinAzul'
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'SkinAzul'
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'SkinAzul'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'SkinAzul'
      StyleReadOnly.LookAndFeel.NativeStyle = False
      StyleReadOnly.LookAndFeel.SkinName = 'SkinAzul'
      TabOrder = 0
      Width = 54
    end
    object EdCantAnios: TcxCurrencyEdit
      Left = 353
      Top = 31
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Properties.AssignedValues.DisplayFormat = True
      Properties.DecimalPlaces = 0
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'SkinAzul'
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'SkinAzul'
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'SkinAzul'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'SkinAzul'
      StyleReadOnly.LookAndFeel.NativeStyle = False
      StyleReadOnly.LookAndFeel.SkinName = 'SkinAzul'
      TabOrder = 1
      Width = 55
    end
  end
  object pnlBottom: TPanel
    Left = 0
    Top = 1053
    Width = 1353
    Height = 108
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    Align = alBottom
    Color = 16775668
    ParentBackground = False
    TabOrder = 4
    object btnCrearArchivo: TcxButton
      Left = 575
      Top = 17
      Width = 240
      Height = 72
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Caption = 'Crear Archivo'
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Office2010Silver'
      OptionsImage.ImageIndex = 0
      OptionsImage.Images = cxImageList3
      OptionsImage.Spacing = 6
      TabOrder = 1
      OnClick = btnCrearArchivoClick
    end
    object BtnLimpiar: TcxButton
      Left = 1061
      Top = 17
      Width = 240
      Height = 72
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Caption = 'Limpiar'
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Office2010Silver'
      OptionsImage.ImageIndex = 2
      OptionsImage.Images = cxImageList4
      OptionsImage.Spacing = 6
      TabOrder = 2
      OnClick = BtnLimpiarClick
    end
    object cxLabel1: TcxLabel
      Left = 27
      Top = 54
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Caption = 'Cantidad de Registros :'
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -19
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.LookAndFeel.NativeStyle = False
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      Transparent = True
    end
    object edtCantidadReg: TcxCurrencyEdit
      Left = 247
      Top = 49
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Properties.AssignedValues.DisplayFormat = True
      Properties.DecimalPlaces = 0
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'SkinAzul'
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'SkinAzul'
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'SkinAzul'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'SkinAzul'
      StyleReadOnly.LookAndFeel.NativeStyle = False
      StyleReadOnly.LookAndFeel.SkinName = 'SkinAzul'
      TabOrder = 0
      Width = 182
    end
    object CkbPermitirOrdenar: TcxCheckBox
      Left = 12
      Top = 3
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Caption = 'Permitir Ordenar'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -19
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = []
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'VS2010'
      Style.TransparentBorder = False
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'VS2010'
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'VS2010'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'VS2010'
      StyleReadOnly.LookAndFeel.NativeStyle = False
      StyleReadOnly.LookAndFeel.SkinName = 'VS2010'
      TabOrder = 4
      Transparent = True
      OnClick = CkbPermitirOrdenarClick
    end
    object CkbPermitirFiltrar: TcxCheckBox
      Left = 215
      Top = 3
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Caption = 'Permitir Filtrar'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -19
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = []
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'VS2010'
      Style.TransparentBorder = False
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'VS2010'
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'VS2010'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'VS2010'
      StyleReadOnly.LookAndFeel.NativeStyle = False
      StyleReadOnly.LookAndFeel.SkinName = 'VS2010'
      TabOrder = 5
      Transparent = True
      OnClick = CkbPermitirFiltrarClick
    end
  end
  object RgModoFecha: TcxRadioGroup
    Left = 948
    Top = 125
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    TabStop = False
    Caption = 'Modo'
    ParentFont = False
    Properties.Columns = 2
    Properties.Items = <
      item
        Caption = 'Random'
      end
      item
        Caption = 'Rango'
      end>
    ItemIndex = 0
    Style.Font.Charset = ANSI_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -19
    Style.Font.Name = 'Segoe UI'
    Style.Font.Style = []
    Style.LookAndFeel.NativeStyle = False
    Style.LookAndFeel.SkinName = 'SkinAzul'
    Style.IsFontAssigned = True
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.SkinName = 'SkinAzul'
    TabOrder = 3
    OnClick = RgModoFechaClick
    Height = 84
    Width = 240
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 358
    Width = 1347
    Height = 693
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -18
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    LookAndFeel.NativeStyle = False
    LookAndFeel.ScrollbarMode = sbmClassic
    LookAndFeel.ScrollMode = scmClassic
    LookAndFeel.SkinName = 'SkinAzul'
    object cxGrid1DBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      ScrollbarAnnotations.CustomAnnotations = <>
      DataController.DataSource = DataSource1
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      FilterRow.SeparatorWidth = 11
      FixedDataRows.SeparatorWidth = 11
      NewItemRow.SeparatorWidth = 11
      OptionsCustomize.ColumnFiltering = False
      OptionsCustomize.ColumnGrouping = False
      OptionsCustomize.ColumnHidingOnGrouping = False
      OptionsCustomize.ColumnMoving = False
      OptionsCustomize.ColumnSorting = False
      OptionsCustomize.ColumnsQuickCustomizationShowCommands = False
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.NavigatorOffset = 77
      OptionsView.FixedColumnSeparatorWidth = 5
      OptionsView.GroupByBox = False
      Preview.LeftIndent = 30
      Preview.RightIndent = 7
      RowLayout.MinValueWidth = 120
      Styles.Inactive = StyleActivo
      Styles.Selection = StyleActivo
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object RgGenero: TcxRadioGroup
    Left = 659
    Top = 45
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    TabStop = False
    Caption = 'Genero'
    ParentFont = False
    Properties.Columns = 3
    Properties.Items = <
      item
        Caption = 'Ambos'
      end
      item
        Caption = 'Masculino'
      end
      item
        Caption = 'Femenino'
      end>
    ItemIndex = 0
    Style.Font.Charset = ANSI_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -19
    Style.Font.Name = 'Segoe UI'
    Style.Font.Style = []
    Style.LookAndFeel.NativeStyle = False
    Style.LookAndFeel.SkinName = 'SkinAzul'
    Style.IsFontAssigned = True
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.SkinName = 'SkinAzul'
    TabOrder = 6
    Height = 84
    Width = 379
  end
  object FDMemTable1: TFDMemTable
    FieldDefs = <>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired]
    UpdateOptions.CheckRequired = False
    StoreDefs = True
    Left = 384
    Top = 510
  end
  object DataSource1: TDataSource
    DataSet = FDMemTable1
    Left = 384
    Top = 617
  end
  object cxImageList4: TcxImageList
    SourceDPI = 144
    Height = 48
    Width = 48
    FormatVersion = 1
    DesignInfo = 50332402
    ImageInfo = <
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D49484452000000300000003008060000005702F9
          8700000006624B474400FF00FF00FFA0BDA7930000026C494441545809ED58CD
          4B5B41109FCDD3043D9458829ED4B3F118F05E088DF4E0C99C4545A3B75EA4E0
          BF50A895F4E241697B6BAF2D4D0C7A0E08392A9EBD281AF00B844493EDCC4B1F
          3CECDBEE872F360F36ECECDBECCECCCEFC66E6650840C43F4CD7FE579F73930C
          D82203FE1A65479080039C310E15E0B1EDFD85D211ED3D17293B90D9CAF40F25
          521FD0D85534CE410A1A2DF4E6D355B3BE562BD4EE8318C2DE537220FF3D1FBF
          BCBBFDC13BA8ABD850BE6AD4679EC389988A359777379B41C6EFCD95812840C7
          743291DA08D80F7D4BEA00E53CA6CD92C1CD2BD9AFD90903392D11A9038CB102
          6A14E53C1E0987036D6759781AD281DC01CEB3A677B5018C6555EFEC53601CF5
          7804F9FE571D64BF4CBB22F8861877175D9CA411C0BBD10E9C7B74A844E0046D
          778BD14316BFBBC38BC8E37DF7B033916C67D5A53926D5CBA124E5113130FE4B
          7414D6BE8203B16DBCEC0149773C386DD8D115D2E5973A40BD0D0756D4550C8C
          6F54E62BC7DA729A022A3500D78D8B77C9782A0D0C727EFDFFC8FD526BACB9EE
          E7EDD65AE907EAF4E769FBE59BE4B781BEC121342483248A1C3573456CE616AA
          B35593B443D57A43FB1549ADC59F763AE7B0789AAE6BF1E62176A1BB3DDD4E93
          A18FE9E34183D3DEDBA9841610EFCF6F5C39920DA2B5E117CAFA44A910A4B727
          F722EF80D25B4806BD974A323EEFFC1E1ADEF2C94F1B018230EC22269DAA14F9
          0844DE81508A5835DC1E9FCE7BDE93113D231F81C83BF05F52C8B612BE82B029
          4460D856825030A4508AD8B61286E893982D624241976C2BE143CCA6900F0CE5
          A56D257C50D91422306C2B41281892F25F7886FA03C56C11FB60897C11FB7C89
          E6F2373AEBA5F9C3FEE8080000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D49484452000000300000003008060000005702F9
          8700000006624B474400FF00FF00FFA0BDA79300000552494441545809ED596B
          4C5C4514FEF641B594576981E5B9BB141050504A2B454CAC555AD390806D8DC6
          586D35F607D1263EA2FDD348FFD9C4C49A18342D89D454EABB68D29214428984
          40B1A2D0CAC37479C863B1D4852E0F0B6C59E7CC32CD5216EEBDBB85DD6A67EF
          CC999973E69E39F39D73F6DE5DE06EB97B021E9D804A6A75C3C079BB948C3B7C
          BB1D07B2A3B30EBBB3D6798DDA79B05C7D3FB5162A15DEAFEF3F5F040F8B570C
          3004E9B042E34746BCE7A9115E3140CB10D00746DC1623BC620079CD4D239831
          CC9DDC46424B37535A4D239D2E97AC0B89E7F3527C2EC41A6E0473A71EEB20A6
          666C64045860174141512B905D125161C40A3791F04A1A4D0935E0D6629BB161
          1609B0147B482E125E4740182290984DB1E44E459051BC1A03B7EE8F8C300445
          A2DB6AC6B4CC98F0190484315AB50664844042CC2F44DD4240649B856E2AC56F
          B374E376159F4340A9619208149FF94EE93D9755FE8E4760490DA007360D0BCA
          A58444D2855C297FD8988EFC8C27B0DA3F18C313D770AEBD0155ADF53745F56B
          A2B03767270C61D1989999C12F3DBFA3B4EE7B8C4FFE833772F7E0A1B81494FF
          5A85534D957C4D4EC27AEC7BEC5998AF0DE1C0B71FF039B98D620452A3D6A170
          CBF37CF33D7FF763CDAA10ECCE2EC003D1495CE73DDA15786BDBCB3086C5E042
          D725745DED0319BC3B3B9FF35BFA3A384D8A304014D1173C312F872A36E0F1E4
          4D50B1CFC7D52770B8E2183EAF2FE77A1E4DCCE434265487E095817CE32473A4
          F2383FF9C4D90D8B4DC687C541A376A84FD41940A5A5B78388A2AAD88574C161
          5CC1E5BF7A386D1BE8C4D73F57C0323EC2C7C3E356F62C63475448381E8C4D46
          736F3B0A4F144194A1510B779548769FD8D0480C8D0E73D949DB143A065D3FE5
          8AB5AEA8E3085C7116980BBA7715ECEC3375639A4B500C9C6EA941BDE9373E26
          432A2EFD0472A537B7EEC5DBDB5E41B22E9EF344235020549222F40C4F15DA06
          4C98BE611322B2A95AB6A402C1AF1ACFA0F85C197A2D66A4C524E1DDEDAFF238
          10B710AE42BE9F106E0095E6BE76228AAB6203ACD7C7F989F9691CDE17B43200
          9B93B3901197CA9587F807C1B0369AB943170E967F842F1B4F43AD526347E656
          CEA7865C65CA368D4476FA493A03A808A3A8AFA42A366090A53A5210C97C9CE8
          7D3A234B993B90159F4E436419D371287F3F0A329EE4B150D3D1C8E729E5F20E
          6BC855DACC269EC912C2E33030720557C7861947F9E5384605EB28E76F34A6E1
          F52D2FA09BA551328096D75D6E2282A63F5BB16BE353A0AC442F296B0356F379
          D39023E8F980352DCC6528C8091D11136C5AF1A5188156166CC5D565A020CED4
          DF8FB1EB13F8A4E6242EF6FDC1955396F9F0EC671899B022373587BB167D171C
          AF2BE77CD1343BA54CCA54625E2955492D78B1E41DB77F99A378B0B1CC323639
          21A5660EDF5C6D99331683CAB29279FB55EC42E2667228A12047CE1319C52EE4
          89B2A5582B8940E1F69D4BA177D17B1EAC3EB628DF99F9DF47C0D95AD197FAE5
          CD53BED02387FE3F1190FAD5C153BE9C931732773C02F3BE18846582BAFA8BC9
          531F775E5FFB632B4C2D66A14E21B5977A1D819CBC1484C78628DC38D883226A
          2D019A7D6E21A0589BC48251EB043E3D720A564625441D6C3BFAA76DB60D35DF
          940E7A1D01DA5160903F9E7B29171AAD86865275D2AEC62EDA3C09FA8401B491
          587D38F20A1EA1EEA295B9CCFEAA2F4A1A8490CF18401BDAB0291954A9EFAAB2
          C7E2A367CB4A8E3AF37CCA00DA58DED339D01B75D49D53D9BF36B5C301EAD7E6
          4CB2014384B53E766D7E668FCE4FABBDC05EBEA3F9D69C82968F9D1A9F4380F6
          46014A81CAFA9354A94F73AC3FEF9215F6F3562DC344E7C5A6BE84B4F557988B
          54B037B11F1652F92FF48CD1BC609C5F580000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D49484452000000300000003008060000005702F9
          8700000006624B474400FF00FF00FFA0BDA79300000468494441545809ED98DB
          6B14571CC7CF99EB6663B2116FA0085543D33495D2B2D417A3788937F44531DA
          3E88BD90FFA0D582D46D5E0A0BF14D8279136FE083BEABC95A055B1404095E37
          1641C12A7DD07673D9B9F6F79BCD6967F636676EFB94E5FCE677E6CC39BFDFF7
          7366CE99490859F82DCC40A419A0914687183C34944BBFEF20BFDBA6DE4704E1
          BD42D4BDE74F9DB813229433A4A500078F1DCB504D9DB24C63A9931D0E940AA6
          A2CA3B2FE44F8EC369E0D23200142FE86AD1348C65D52A114256E5818BF99385
          EA6B7EE7825F8738AE1FCDE55292B5E8B77AE231BE6D5BA2AEE9D70E7F3FDC8F
          E7412C7100144FCCF6AB6A2AD52BC94A436DB66549A6562E7CF5C3CF5B1A76AA
          73215100261EF2EE0223A9749A3485B06D512F6BD783402406502D1E0108A1DC
          105FFE38BCB932A6F9311180FAE299103E086356BBC1034159D8B87C73F1EE2C
          36999B992186AEB91B3D752A0886D4A66CBFF4CB4FBF7A2EB84EA8AB1EB9CA2F
          9EA50288D959626865D650E311828AA96D97474EDCAAB9080DB10104170FD99D
          120D221680F0E21D02388487106074A432347446867DFE020471B64AF0210A2C
          ECB636D862E58663F13D619B73D78F1C1FFECCDD291240A15090060E7C34AE2A
          F27E77D070758048B7FB412873657DC21D5F729F04A9178B45B564D22B5D84F4
          2F59DC3973F9DAADF45CB9F18EC217BB02D16C77B24C33E38E15EA0E30F11068
          0F1859DCD9911EDCB16926A536FE54C07E7C86108DDFD8A2284FBAE304069817
          7F158238E2C13B05210EEDDC5C8A1342AEFA761225E97966FA75D649387F10E7
          3D977389DF5D6F008857BA57AF2C3D7DF14A314CB35E97006DD4590FB0788965
          99449494E799D2EBDEB1B131DD1D841BC04F3C0B5A815805102F63832036B9B7
          4CFB2B3B3A3A5AB3C8B80078C5270261D3B3EB52DABE7C3E6FB0F86EEF0B1054
          3C0B1ECB9DB0C9D90FA4E96F72B99CC5E256FBA60061C5B324912038C4639E86
          0051C56370B450109CE2317E5D80B8C46302B4401001C463EC1A80B8C5631234
          2E8880E231AE072029F19808AD294408F118D3F3262E19C20834D67D49417B2C
          A5ABA37DD181ED1BFF5664D7675848F128C80340A87D041B93B6A55D99CE833B
          3655202288479D1E00F8EBE62E36B6C2106260C3E7B7619FFFAED93EEFA70534
          FFDFE5FE93272BE10BA4002D1F82255A6C4AAE58FFBC3B9CCD663DDF3641937A
          0070F083A9A9E59641C6A1FE095842859E2FF6AC3D3A48A91935410D00064C16
          223EF1A8B52E005E70204C32015F827D781E8FC52B1E357916313630FBB4BBFB
          AD2092ADF0DFC087AC2D8A87993A17D763E3D60171DDA7B5F538EE042439F7AC
          67DDD7713CF3D50A1BDE01D611EF84A409DBE0517AC4DA82F824C5A30E888FCE
          DF2627FF586148D6043C521FFBF7AEF480E089CD7C2503FEBF9BD5387C108856
          8847C990071DBFF14040D0C4679E29865CACCAEF1D08D9C237766FF52808D832
          F198DB771163A76A5BBF7EED1BDD14B742FB63B0FF4AABC56362010F61EC8BBE
          357F125BDC03636FC2529A26363D6D94DE7D9BC45649167E0B3390DC0CFC0B28
          FC0BEC94F006AA0000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D49484452000000300000003008060000005702F9
          8700000006624B474400FF00FF00FFA0BDA79300000604494441545809ED574B
          50935714FEFE8480042342444AC0201079051304B46AC72ECAD48ECE58D1A9ED
          B4D3B1B8B08BCEF4319DB6D34DA7BB6E3AD387ABAEAA9DE9A6322ADACE506D61
          3AAD2D30E2231830208FC6525F488024064248FE9EFB9BF79F07214957F9E79E
          7BCFB9E771CF39FF3DF7FE3F90793219C8642093814C0692C80017497760685C
          2DC9E2BFE4783C4BFC0D04FF677B041E7F783CF8A859AB198BB7B028806F3BBB
          772BE4B25F346A953C9E723AF9E377EE3A16979DADAFEF7FBE2FD63A59E1CC79
          DBEC0FA37FCFC91FCCCCA2A5A11A393259B8485A69A7CB8501E308A61E3C9217
          17169CA6C5D404519B28008DBA4C396BB593816958E6ADD8A9AF4751417E5403
          A9643CB4CCA17FF0161C8B4EE464CBA0292F55C6B32FDA42D74D63BC73C985FE
          9B26DC9B9E0113D09497415F5309A94412CFDEAAF86EDAF08691098C99A768FB
          03AA8D4AEC68A81582D856AB612E44B52B62B20098344FDD6D3268181987C7C3
          237F6D1E7635D60B23B152D6E6ED8FD17B63186C9448384A5415B650C27C8EAD
          3A009F87B3569BB080CDB100A954025D7525AA69011F3F9971941234383A01B7
          DB03853C574850C13A4588C9A40360D65CCB6E5C1D1E85F9EE0346A2ACB828A9
          027F52A8A3429D318355652AE86BAB20CB92323204E205202AE2106D2FC10CEF
          D4D5A174E3065C1962270415B8950A7C2B15786162053E6D9947DFCD6138169C
          90C9B2B05D5B834D4F1579574A7CF06D35BFA6AF06FC1361C8E38545F41A8631
          336705C771A8ADD884862D1590101E261A427A781EC6DB93304DFE039EF00DEB
          F3E984AB435EEE9A10B97022DE1B483800B600736068DC8C6102862BD72BB053
          A7C55A796467EC543F7D832C689B10747D5539B4042C01CC5E2C484B00BE051F
          D265D73B68C2A2D3892CDABF2DDA6A949714FBD8C2C8EA6680EA6799EA283727
          9B02ADC3466581C05B4997D6009803C17706A3CB55C56081307C602850F8C167
          3BE3AD14E205B0A2228EB518BB31F73435E0D68419C631B37052CDD14DCE74D8
          D9CEB68956B319F5956A61FBB0F95442D20130679893F5559B5152A414EE0CE6
          389B8F76B62F7B9661B05C87D17203771D535870399838726572A8E49BB0B550
          075D6113B224F1DD5B55110BAB45E97C77066337D7578BCEF64172FC27F33958
          9C334C242A14E62871A0FC108EEE3E22F2315849C48C778C062B2782F3BC07E7
          CD6770F9FE6F48E42107BF2A90AFFBA0E3E50E7724BDF8EF2892D62AE63ACD1D
          F8F3FEEF096BD237D97B16C7BC8414DF251035C6104DA67AC26831ACCAF9801F
          DCDBCF9DDC7B204007B0B407B0EC71E182F94C60C51560EC567F46DD147C6AD1
          39C17DBDEFC4BE9C70F5B407C0B21FAF60839D924AA438DE7C0447F50771BCE9
          087DA2F85DAC702AF817836519EEE732C20B76EF9892C1383BB8623B2CF36FE8
          DBD054A215749A555AEC28D509B8D049F836610CEA2205D01DC44F1A9DB2DF11
          D950E797606B7175C83C73BEBDF1309E2E0B387CF9CE35F4FF6BF0CBD189D4EC
          27BC88C43BFA073727FD9888598294349BCB1A62A7627D19DEDFD58EB7B6BF86
          EDA50D028F6D9B379B5F0971BE67B21FDF1B2E085FAE8210EB78A8D8100CA200
          5A6A2A4C6E37D7C873384B823682A41A2FFCE53E31C1D11FF6ABBAFD74E3AEA1
          BDCDA15D7F18FAE21AB4371EC2B692BA2742D45F365FC5E9A12ED2A44394E858
          8DDE4A2C76F2BCD6532F8C9015FF7E5997B3567803258AC83F312CF3A78D919D
          A7704C3DED1703919261D11BA0B9D4361ED7830D5A9D767CD17B0AF76CD3C1D3
          021ECB794180C335610CEA2441789A50BE33DCB02F88FBF64010DD937D889679
          BFBE8713D94A7B00734B33EC161BF53BE1458420FE3A05160473BEC3F873BC3D
          3FA4CC539CF5AAFB87B4D7005BA9F5E4DE36BA56CF313C1C14D979B02F39E239
          4F7FAEFCC19E63977E0CD797864FA4839E3C3F6EAA6CABA2CF006E4FB8FD25B7
          2B7C4A4453963FEB3E76E91B118326D2BE85680DA115CAF33F01F81302914047
          CEB3CFE94FA3A9103F1A2B3DF3ADDFED7D093CF73959DF8CD8CF2439F7E1AFED
          17590D45952499A8BCB431D857E592C27D88EA621F2DD2425049C0DA04057705
          124F57F6BCB4B3EB9D2E279BCC402603990C643290C940DA32F01F5BBA18C699
          B05F590000000049454E44AE426082}
      end>
  end
  object ImgListCategorias: TcxImageList
    SourceDPI = 144
    Height = 24
    Width = 24
    FormatVersion = 1
    DesignInfo = 29885172
    ImageInfo = <
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000018000000180806000000E0773D
          F800000006624B474400FF00FF00FFA0BDA7930000040949444154480DED54DF
          6B5C4514FE66EEEC6E36D9DD985F6B374DD5549BA4416A2B6A41A1601B4CEB9B
          0FF64513B02D2288E08B8A0F4A9E44F0555F2C01F167139F0222A2A591825691
          D45004F1A54A631ADAEC9A6493DDBD7BEFCC1CCFDC9B2C8D1BE93FD0CB9C3967
          E6CCFDBE73CE3D73813BCF6D2A206EE3DFD13D3B012516BA4F182D0789681948
          7E35F2F16269A7C3FF4B70E174FE094FE073225B2012093200CB2BC73E5D7EFF
          FB33DDDF911523BC86B5D17E95F5A9D173CB53FF25692288A3EB39CB079F171E
          1408B00C6E35EB509C4FB4D02009EC21077C8BF019CDD93C757CBA38CBEF3686
          6C585BC6B5FC194B186BEF559EE74938609592C8ED52E42569847D7B5A721E22
          02E2E83785035130E283E967E16D4139ADDCB44D0C1D6D2FA8D2BE23F9BC5429
          08E9C00CFE9E2F89F252393ADAD39FC57A56A3787523267299C444FB5B83BB9F
          046E9C8F0EF2D4940147EC75DEDB96F19219A848B291DEB869A37A430AE4073A
          313CDA8FDD0FE521840439F04D1261E969C66D8C268264B76732F9D6B4F49290
          89343C16A7CBA5C07D64DC77B813A95C2B93B662E8E80378FCF401F41DEA8664
          6257366DE970039D8D26828E01359ACA28C1A1F1603797C845E9AF69FC510C51
          D89F8BF7397221155A72690C1C29E0D1B13EFC53B330968619B73118A1614746
          32275E929EE5DA6AEE9E803F723DD226B0985BAA47FBC475B4867D26F611F76B
          AA0DF8F1BA0FFED0D90868736A2218185BF8C2E8DA8209AB304105BABE116997
          7ED9B7585DE57DEDC3843568F63B6D78BDB252C10A07C1DDB4AD8B9A081C31E9
          F094F6CB56D7CB4CB0C6524655135AB9725333376022D2F56D7A7AE626724AA2
          1212A7E15062D99160706AE2D2DC52E7B7958D7584B535385DCC17FC7C3A612F
          FE02FCFA27C00120F499DC2F63EE2AE1873942474A06455FBF1B43C7F3B67B90
          1E9FDE9D90E6CD1AD1F8977F1DCAEE52DFC4A778BEBCF778CBC583CF20BDB71F
          B3FE4728AC7C8864C2A01E0217EE7A0E57DE1EAFFD56DD38574DB79DC54FF7F0
          1BF16864901BFFECB124827961F5CB2CD9AF170FE0E7D2FDA85B8599CA282E0D
          BF0AD5BF0F81F150D1298406A8F89C89D3BA054120D355917DC156C57C61F2DA
          23313C209CD1F1E2743BD56ABFF38D29F0E587703707964D82540A5D278E0189
          147710F1652364CC2A5E33137890E671850EE21DFD16D66C96BB8D36CFE03AAA
          F5A1E21B43EB51896CA57292FF3A0526603E8A09B86D04B744B2B70F1A09906F
          22706B092593C1EBF6BD786DB640D9DFB0A997E09D64B0C98840DAA02B4A8523
          77A01C46147D640B81C0D77C8BE3E8F9B77C8BCDE00CEA489DD0A6CDC07C19D1
          E3744490D2F5C940AA40904DB84DFE31433A245E98A5C5369B483F6C494A4E0A
          96271EECE18A64BB2E1BA92AAE9A6EC3890BD49208A5909FB8F51DB96D05FE05
          C0A13AF4DD91AEAA0000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000018000000180806000000E0773D
          F800000006624B474400FF00FF00FFA0BDA7930000031A49444154480DD555CF
          4F1341147EB3D458A2D4F4420C06634CF0A4278C65DB26022A948389078D7A40
          4D3CF30F78201EF5EAC97052138D31F180272452350A2DC59B3F38182306B531
          12C16E7111BA337EB3BB9DEE6E97F5C7CDE6BD9DB733DFFBBEF7DE4E52A2FFFD
          C77ED7C0CB746C4090382B887A85A05D821821FE428C4D08266E754FD79E4571
          6C2AF026455D96C6C604D37A4148202797DCB392DC9FDAD05A2E6666D63E8409
          B1B0CD5799589F10FC3E0893D1E476375270499076422F9AD341BE2681F92CED
          AB71AD04F21D7F484E1CACC02F6BC4337A717D1EAFCA3415B9418DB7DC003894
          DC0493742154E52E39464594AC9136E6D2A8C527F05A8FE550B50E97B32508C1
          8956929D9418BD4DFBC717E8003C79F90E55DBF77AC85D41C1B28F7BE247153B
          82185C99C5C4E930F2EE9B058A27920AB7BBEF38B57767A930ACD3F695B25D44
          BD2B22ED0C808FE0B6F93A40C599E06DE91CB9EA23B7B3F090827B46AEF8C865
          71683D8363657E01213A20E224E1BEFFC0CC77A6FA15381874A4FAC8B4DCF1E0
          D0C9659D0895692A4200806C00028D24C69A2E1A90AEE14C56ED783D876DB8A7
          F61210A032442060DF0A8A83A05C7A6A03C31E9F8A79DA0A86460E44047DF662
          71DC780530EF540301F72A2E5E1FA5B5CA7203E446E6F76FF4EEDA25140352EC
          2117E3471E893C5E95F904B810776D01975C26C5CB6FA9702E4D0BF907B4BE6A
          D0CF6A85DE4F8DD3F3E12C6DABDF207C2F395B996B51CB3DC58E80C17D56D2B7
          4CE1CAF54B728E13992463B9D63F68C858D089AC9EE5074AD5234853E6EB40EE
          721E3B0FC2A5203944ED7947907F15C2BA40815F9340CFACF991337612B85508
          3995A991D9553A7B9EB10057C5E6A9C1397311793E6B1A51FD743ADDAA732E26
          5079428EC7F1E007B5052B8C6983C7662BC57AAE77DD5440829E1C6AD571531F
          82BC0D55A2489BD0BD2D765CB188E5864A4641E2C3BC69445E506FC92C904639
          08187008A0030430C09881EE86A2C80142BA7C46F8E18239834F30840E4028AB
          96606670C1728373C68C7C8BF2C8117913270FB66598664DE09F8B88B3DCC00B
          A3E9DFCB8BFFA7783295E892FE37C9BF0068809570A9491BD40000000049454E
          44AE426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000018000000180806000000E0773D
          F800000006624B474400FF00FF00FFA0BDA7930000029649444154480DED95B1
          6A145114864FD8716711D1983C451AB11182A58D9D9D2F602BD1C6422C520492
          CACAC5D2BC849560AB0856697C094D08D9413277706EBEFFDC3B37B3E01A1F20
          72EEDCFFFCE73FFF39197657B3EB7F57BC81B52BEA5E7EF6FCD511E01E671C47
          87EFDFDE1F137FC365C0C1FCC39318D71E3E58FFB423E1F7D3C773DDD69B1D1F
          FFDC36408C62FC61117E7D73E31B34D1DBF6E6E71DA3F4F5D7A3798CFD97FDD7
          2F3E4A5D06ECBF3B6C21A69C1211471DA313688E01D173DC84FD720619B773B1
          3D78F37226A34A8F7C8AB91B41EAD6C159965C72930F46623083542853014C2D
          C69A768FF100AB6E54564F6788BD961A32A433F37988F3090BFA2280A639B3F6
          FC1C94A20C90A00B9D8536E0A54636C1523C9773CE94ADC990B145AAC1BB16DF
          E106DAD2806A52D974A65747670A3405B81104319803998EB70027DA6271C692
          ABFE822E58E85A37F2261E5879CE832063DEAAAD7DF3DCC3348FA5BF00070213
          DF0A278975915320A88953ABEE7C28A0508DC2C00115A301BD742C2721871611
          DA8A1EB470809433953A29123080AA63A07BD0E0311A8044550EA176170E86E2
          20B2C9D8141F8AAE53171811648ACB013D0310A8E862792CE510E4A91F0C705D
          E64A1FB970B2B7E54FD1A49AE4EF010652F8A5C12403CE374CF671A2E0A659AC
          FA14F5D685DE4208BC094CF38624DEAC6D0574530562AC902E6FED3571CAB501
          E7F215219CF03DA8EB9A662A59044D42979E7EF9034DBA934C232530F36F72FB
          AFEF41E0370F57B5A78D409E63C22D43E713F04129D780AC010E31FE0B02C229
          87B78210036179E242240EA0E08C73B00B075B63CB84CB00EBFF3C85DA3A3D39
          D9D58FFD9DBB1B7B915F7A053C14FF010870FA3E617FF2E983B2DF4DB3CB6676
          F3D6ED3DC43FC45D9FFF7A0317154391A7607FF5350000000049454E44AE4260
          82}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000018000000180806000000E0773D
          F800000006624B474400FF00FF00FFA0BDA7930000033C49444154480DED544B
          485641143EE3FDCD6A65A53D16D5A6166DA242F095654AD2A245B528A2166DDC
          B43308828276B569D12E17D222B0C090A212414A21CC205D5450502019918F4A
          7A6BDA7FEFF47DE7CCBDF96B8BD6D1CF9D398FF9CE7766CE9CF945FEC95FEDA3
          AF87B60F7E1BFCDBC3013B8498837FC2BB02E7C9A77DCECFD6AFDDB844D66D5B
          2F0F2F0F88142F15E76391241197C405BAC0EFA6BF4845CB7E19ED7F22E34323
          5897DEEF578F34A6BC45A9A2D2F97AF1D0BC178F818986D0E73871709D12C305
          9D580E058A6F4050F6E5324D1544E04CEF872765FAD39448546C3120B3640479
          EE920A06F05189BCBAFD40A6C62661235812C8DF5F4102DB91939978B1CC8CE5
          C5E54AB42C199CA75203C4A91EE5E4E3C8677152841590A77E58FC98925247FB
          EB691F7B2779C4E7818D29619B148993B006BFFA60AB543BAC21AEB52297F132
          AD92734A14082248E084C9525F121291D07C4E8B61B60336C421965CE9284840
          42066C298D646B694E8C48A4727924552B8A2446147D75E591D497C30619F195
          1D6D527DBDCDF0281660D95770070493A06299B9072663DD596D59A4017DEF12
          D84E1A57DABEBAC7139CC249DDB5565DEF3DD0AC49D40893310583E44CD2FF21
          56207596E6EE046C60D486BC334A623C8D50B69E632DC0A364E14480645F7619
          F4B40EFFF00B2E9224B8105E3C4B48690D6097CAA4E6B37BA0DE5E1565BCF34E
          60A0E31B16319F5C78F1133B1339B5A9589FC1D967799448E4FCE69CDA2D8FAD
          84A70FD788774ECE5C19003EE3568E8204DC0D2F3285A425A38D7825A76FAECD
          5339F43E07D7C8A1CC612236A822175FCEE01D08DE014E12CAC22393C4CA12D6
          506BFACD37A7547817F477D61665BCD60E2145BA836AB4644D99B5212F79275A
          B261156D240679D36A277B30B8C61DEFEA6C93060C9E9E1C814EC5C212E152EB
          425BDE9BF05A96DD2027BA6B14DD84047BD7D8BE6EBC4537C16EEAB8C465E9DA
          D7AC7835C2342F81B55A0FDB1281DC1D77748B6D091B5553828E371E97C936B5
          D77BF3E809BC07D3F1A71EA84D64B5A279EEF9AC670D499CC749548235D39124
          0E76014E7D4C60F7D1BD832D4146D1BF40D33083B09F3BE6A59AB4A0545789BF
          02E0F4047371BA860D40DE07D5FFEFEF2BF00B58901F8EA5C165550000000049
          454E44AE426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000018000000180806000000E0773D
          F800000006624B474400FF00FF00FFA0BDA7930000049E49444154480DC5545B
          4F5C5514FECE3042B9CD4C01291429F74B6C2AD6D646E3DD44FE418D8992D437
          2306B535165BAD13A1144D64A4D5160DC1E0E5A5E1A50F5A1ED41A0815500A55
          04C21D5A20DAA40222859E73F6F65B679801DAC6CC9B277B9DBDF63E6BAD6F5D
          8F0144F6D49C6E3EA8954AB54C13A669FE51FD667920124D77244222B3BA7CE3
          43CBBC29C64937E52A2200974846424B4B0BE5D363C3989D1A2780591E898EC8
          4404702270263BC9137FDDE34984D79B88D464EF75FF8940366E796A4F37BFE0
          0F7CEEDB786D6C3C6CE4B5D6C6FB8186FD0AFA08F9125B29D8B60DF28041350D
          28ADFB58979AE3470FB6BC57DF54A66CB3D932AD2EF78A2AF5FB2B16C51E2565
          DB4CB5B59F7A758C3EABB52A8D8BDD829DC5F9C8CFCD812731C1115C5858C4F0
          D804FAFA07B1B8B44C50B44E8D0C59997945C50AC8B72DABACAEAAF22B11BE0D
          C07FF2A427C6BEAB4D2955B26FF72EECD97D1FDC6E37A25C2E3A1ECCA8D20AFC
          CE5A58E8FCB9076D5D3DB04DEBDA95F1D1DEB4ACEC2FEB6B8E39C605204A5E21
          62F846E7C5DE16A6E3F1679E7C04F71617C210C330A01DD2F436484A314754CC
          484F4372920F4323E3F19EA4E48140F5DB6FF13ABC3601C47AD39EA5FAD1BDF7
          EF4451613EBE39DF4AB340527212158206E984032200AC81D4015B7D5EB85897
          A9ABB3450F3FF654FF4FED3F0C52C159C1981D964583AE8C8D89A6E7C5D0F430
          37270775817A0C0C0C8151B1C852E820498A36D20325BB9010B705368C3B4750
          55DF50602855535C9887F46DA9EC1420252505058505A8AF3F851D993B70776A
          4AD07BAD1DCF259A50248C1CABABAB989E99DBFEE0134F7FD1DD76615EFC0E47
          6098F65EF15272EA28495B92F272735151F10A3EFEE40C7A7A7A9D28367ABECE
          6B64656642D9EC234BED13E34261006678BBF4797C5C9CD321365324C2029A4B
          90F2975FC2A1370EE1C08B070862936E4F9537311E1667C5D63A438C0BB9E525
          C481319C9019BE1875C9250B676883ED6938A94A4FDBE6D446BEB3ADC2E9E2BC
          D0290D8B5EF2122C84683BB40E003D434B58585C64DB49D7005A001C92921868
          6C6C72942432C9397DA13D725AE642637E9E69A7BC32D48C23C8D73A80D21DF4
          4A4F4DCF185B7D3EB2344A612E3006C1A678682EC5281D200239272A897E747C
          52F4B469B8DA29EC2C2713C2F92B5F9DA67CDFE8C4144CCB62B1EC3512EF82F9
          961A05896736805360165576D3B2D13F340C8674A9E903FFACD8140A03C88182
          EF2EAFACE257FE6324CF6192C2D160F84C5EDD72D7F5CB25FCFDCF0A58E06362
          2B44512146F6F6EF5B471E6DBBB867EECF6B85DEC404783D8974884E31704901
          379E6506F88F65B8D2CE3290631393B8D0D14D13C6B9C6BAEA2A32E1B5290226
          5AC7D8D1CF03AECB3F7674A2EFB7DF615BA6D3928C8ED3CCF6544C1D23B0991A
          F9D6DD7B19DF7ED74615A3CF76AF96852DAF31A1AAAD1D83DBE1C3B55E335A9F
          A5EFA57131D1C8CBC942E63D19F0312291F88BBFEBA92B57313832C6B4DC6091
          717ED98A7AEEEB53FE45F9BE91EE081014D0C6EBEFD4EC670A8EF0A75622AD29
          43C41C497B49B6C8AA3EBE6A3EAB3BDE421D99026E9BD77F00AC0BBE56E9CF36
          B5EB2182A5CB1411700E565467C347FE49FCDFCFBF2EF5E1BB403451D6000000
          0049454E44AE426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000018000000180806000000E0773D
          F800000006624B474400FF00FF00FFA0BDA793000002B649444154480DED54CD
          6B1351109F79FB5169141AB1AD486A93834240F4E0AD1793E6E4259E0CF41FF0
          28EAC963C13F403CFA37E4202288A7242DEDAD272955A4D0548315256220016B
          76779C799B97EC476CBD0ABE64BE677EF3DEECEE03F8BF4E99009E146F540755
          425A097370BBF232F32AD427FC4961A3EA5A67561458FC73B61FEDDF88E5D893
          D4B8D62C911DE0A0CE5E9789FF3460769669FC5F2F356DE7D34C1DC172156AA8
          548EF68E2BA2CADCCF1C108CC075E09BE61196399A5D22B45C8BC1116418F835
          12D6AA78B56258E34EBF490025F8C30A0202FE03310B0200638B24B189E30134
          EE6E662B02913AC1A9E00C4221481A5C9A3200375B1570A15403714E232E6240
          DE3183EB9D0A18370BD89693E81385E03ACF6028A31889845B4637720C6E408D
          1C81A7E23E6D9ADAD43330017916BCC192DE192B810FE5DB6FCEB520B29E5E79
          DB42C45BE292878C4150BABF7F7D436C43B6519292310B6370D9B1F20F923980
          98075E02CE029463B721B154C2D6E6CE3D72F8D839992D4B99E9709099EBE8E0
          883DBFB9E32040CE80B37BB8F06E3796C33E98DAA07BD413706B04CE0DA853AB
          A32F05867EF51D01B78C0D809D1AD46239129BDA80022B1F1B0F511B12CB43B5
          1C7521D161D4363A1A45E4E3A5D7CD593B535ACC2E426EFE92EC5C53AF3F80EE
          F72E8F3C4C8F8C45CA6244008D071FAE558C3376020177D50CB8F68C06D623E2
          0ACF1BFE15B880F21656451A52461129E07269B9961336607069E279E1684FDA
          B9D44FA358034BD95B7271594A1AF0572BAF27BFAF9EEFF355C67B9B8690F24D
          3E32094DAD7A51FE71C857C065F39A72D2726DEBFC472930F4ECEAEE01EB7918
          AD40598587EF8B6D482C95B0B5C963B960C0591ECFDBD9CF3A1065080B11F3B8
          77F14BEA1B90B82D2C493EC11ABFA6450607BED8F6CA2DF4923904B8A6908ADA
          EFC3DE7AAB9CCAD1B17F9EFD065FC261C4EA9D446C0000000049454E44AE4260
          82}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000018000000180806000000E0773D
          F800000006624B474400FF00FF00FFA0BDA793000003A949444154480DDD555B
          685457145DE726F3B83326269968D4386A118BF840B10A111525048B63C5FC28
          141431118CD106AB06FB53F0473FC452A90F7C4545F047FC287EF815637DB520
          6A62345162413199C471CC6332EF7B67E674EF1BEF646226A2FED9CB59E7EC73
          CEDA6BEF7B1EF7025FFB23BEE8051A9FFC00883DE4BB80C0A5058AF21BCAE75C
          E74E263E2F80940237DA8F02B2CE6DB76045810392D4EEF487D1154F9085C3A8
          98B79F0D139F1E80C51BDB4F42C89AAAC985D83FA3185A2A85EBBD21BCD51268
          A220CDC118A088F5289F7BCD0C906B1A1F6D59BCA9FD048BEF9CEA42FD7417DA
          C371543FF3A26728F361F794DC4D9DCF08C0E237DA8E93D38E5F28EB9AD222B4
          8462D8DCE6453091A4E1516549E68892D9196593B8EBEABD0B345E6B8A3FFEB8
          38518D6DE1D6C09801240E28072B7FFDDBF9E09F2D75E3EDE0CC9FD1B26C1D3B
          734390AA078474C9BA072CFE765AE7A96DCD285B386F16DA887EDB17C0EE57EF
          D0977D5988F1BE28E2E87BCB6846056071BFBBEB0CCD56AB9B56E2FB1D1E381A
          5B51DFD18ADCF98B903BA10815D05021344C1229A2013D50D028AD6882ED989E
          71827872C43165719FBBF3AC10A872D4AE81BA691592CFBB10A83B87D3DF3871
          7949296A972EC2EC3C15794E1556EB507EBA96C460388A702CFA4849C875EB57
          2FEF6671C688006FA66DFB4340FEF4A1B80C45212D39B875A81293664E45FE38
          07FBA621A544381283DD6E83D7E76FB1C602651E8F27CE84F426FBDCD5952C6E
          DFB06C28F3973E0CEE3D0F1667E29BF2D928749764150F91F80457014A2716C3
          A9AA0B75B5A0867D18E90010F839674A111C3B3D48B2F8AED348D1ED6412E35D
          D94C6359D836C199B378497121F21D0EF8FBFA31CE6907BDD08F26673800F09D
          A5EC5B404F20B8EFE208712647A68C87CD6A61D340A6789EAAC2DF3F8014295B
          2DCC91730C12559901400C687F3D45B2A78FA6C62E638967F3C80CF050BFFF02
          497F201B0F6A7700714DA7D7973097253373D349D37536F9EA704B07D868A892
          F83DD9DD07ED767A8E0687CBC4BB2F100C478CD352E22A443671660F86229404
          2EB1CD50B862947436FC495F9123C9E75EEE8E42F1BD8E139158ACD56EB3209F
          EE807F20402B2A47F00682614463F116BDB7A0C19C4807E0010A522FA1ACA3CB
          7193FE58511A8BD0CFA54908B1B6B4E3CCAE1CA978BCBEDEE6A7FFBE46244ADF
          7EDA544E371ED78D4D1E08861E89845CBB71E35C8D7C8D425A46FBC9D5952B6D
          569BABBF4A0A514D4EF309A0FF5CAB8068F0E559CF6F5FBCD8D8041EFF7FE03F
          960A9800F90C08D80000000049454E44AE426082}
        FileName = 
          'C:\Users\jorge\Documents\Desarrollo App\Generar Datos\Icons\Cate' +
          'gorias\medicines_24px.png'
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000018000000180806000000E0773D
          F800000006624B474400FF00FF00FFA0BDA793000002EB49444154480DED5441
          6B134114FE36D9D43469B5C526A515318A458FFE00D1A267113C78EB5D452CEA
          4144E845C493A59E7A133CE8D57FA02822827850D48217B548D58AC4A6D9B449
          7767FCBED9ECA635EDB9970E79796FDEBCF9DE7BDFCC2CB033B69B012F2DE0C6
          FB679E89C6612278D600C650D3A686DD4A33268D678CDBE7F4D3E0F1C4696167
          F4E7C4DA71C0221E16DE3A3BF1A5BA1DE6D9B6D1A5712A8E05FCC43876B8F81C
          0CF4086C5DD586CD44F1B209618DD50AD8A5B3D9227F4CA035EEA31388D8B98D
          60389F8B7776129C39317CD272418B86604EB3E58ECD04CECFC44E5B0714AFD3
          A7BDEBFC5D091CA00B60B0D31D00AB44EB01DC3AE3D6FB9C1DFB5468BB814E07
          116951353F9602326550EAEBC5CF5A03F37F6A8E1A6D2246DBE66971428218CB
          CE84C6B9F6ECC9FBE80DAA783371F955B4BC7C2FA335499C801C1222991306B9
          AC073F93819F9524B6742CB90C35EF62965A45E46BBF70B152C4C0CD4B7B33FD
          FDD7D304AA5E49421E9424220DD2AB6B119A6188A6B4248CD092304EBA191AB4
          DAF640ED1D6E15CEA1569B83F57D6F706AF27C9A40E00255D56A5A7355E42A67
          07EA44D54A7CCF031B83AA6663B43D94573F636AF00A867A7E63A43E89BC793B
          3E3636F63DBDA6025417AA5A07AEB9A4B5C62B4ACE949434A79C2B792C4079E5
          23EE8F5EC570BE8A6F8D51DCAECFE2C9D1B30BDCD67DC844909F0F999044F4C5
          2D3D34E14E887C3B603D45DAE5E003A653F011DC2178D05B4132D20E54BDE14D
          0A29490721CFA1497E634092C72CFCF11AF0FED02837E630BD2FAE7C7E6504B7
          6BB3A8170E2830C1EFEEC08171B3E8919D25DF9695CA86AB5A9D91F3954F98D9
          7F0DA59E2ABE3662F0A050C1FF23ED4080EA6277BEC7BD50CDFB77F928E6FAC8
          5AF2E8E28714F10377E1E0104A6B792CD64BB8BB3483A058C166A32B81E891E8
          DB63B678C161AB85C52F015E1F7A8087D5BF582A1ED90CDBF93A092C5EF22377
          5CE04EC8BFD34A92D889B6C0A35C05DE820FAF30EC8036FED9171BE73BB3ED64
          E01F92A882E80321EE8D0000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000018000000180806000000E0773D
          F800000006624B474400FF00FF00FFA0BDA7930000033E49444154480DED545D
          48544114FE66AEEEDDDCFC772B13C132497BA830442C295849D382A244A29232
          89A2978C9EC240A137A38828A2A2D4A2087A882C58352DA2B288C2108B4A8C32
          CC6CD7D2725DDDBBDE69E6DE5DDB6BBB6BCFD13267E69CEF3B7366CF397307F8
          FF9BA10264061EB6FAA2F2118FF37A4C44D2122992447B53C79FD28F72B9FC83
          5E1BB7B0B4FB95CD6FC3C58808470A8E10EC8E37276E650CABA13245EA337702
          CCE68951CB3837C67DB67009396848C647308266C64809376733201E8CD9B82E
          C63A02F25828E18486230527A96A8B58830951E9DD60782036630FC0400A1A8B
          FAF9A6642E8163A07D674B0A08F70844A7E933F680BDCE4EB72F740DDF759892
          1D8AA46D4F8854911DABF4B701BC0DE10F089B415F67EEFE44593DC17B20F7B8
          24584DAA76C08897A27B3442B9D417D540BDB4DABEDBEED0882053C8036E3EC8
          AF5993E0A919562472AD5FC6FD2139C8760DFAC673D8DE5ED1D2AC59D3A6A04D
          2EBD5AB83D2F4EA96D1A3493D1494C052FCE28425652E6B41048E07D682A682C
          2C9D4E085B2FAAD07CB2B67EEDF20DF326EEA820529A4545D317333EBA25942E
          D98C1DCBB621276505DE38DF62686CC8B7435B781CB23E7DE3E2DBEF6FF57CD5
          10DF64C8A0B6B696AA9436E42728A676A78C45515E747C8F449C390E7B73F6E0
          CCB3B3E81AECC6FE9C7DBEED86C5C2C8E4455E2E43D90DB7E8E1828E1230B22C
          8A32C854C5EB9F11505402B7D70DB7328E2C6B161A3A2FC324990C91038C1CDB
          E5C275F7D06AF763860CF86D2917C49EAE58A4CD52F1CEA59F3FE19DC0E1B623
          C84C5A8CFA4D179012335FB80515CA8816C34F1A0EE0B9E5F98939E6490C8CEB
          74963513C9B3E7A2CA7E088D2FAFA032BBC2EFF6C7CA9F935581A0FE177F2356
          BF6AE16572F3F208DB1269C1C1955588E5BDC84BCD85D3E51470086153318483
          FE1785A68B781234CDC583474BFA87F5FCF30BD43D3A06714D7BBFF5E2F89393
          9A4FF0897C0AC40D191046CE31C2EA84439FDB40E1C187871853DCE81E7CA535
          5DF88490F381380934C415B335141DE00F4C35C793B8FCF5E0B57750C68EB6ED
          6A3DCD3F3C6EEA5B8D07E8188A4F15CB9E68B6943F94198CC2CABDCD3ECAB0F0
          8CDD9C734874B2877F2B5D37CA6E780C0EFF84F10BBB6406C3362E8F85000000
          0049454E44AE426082}
        FileName = 
          'C:\Users\jorge\Documents\Desarrollo App\Generar Datos\Icons\Cate' +
          'gorias\payments_24px.png'
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000018000000180806000000E0773D
          F800000006624B474400FF00FF00FFA0BDA7930000015349444154480DED534B
          4EC330107D4E1B914AB04028A442EC119BDE822B7006D44BA01E02C119CA1276
          DC225DB06201AA84AAB6B00848AC306FD238A9DA3A76C56FD3C8E319CF7BB667
          923C60F338DE80AAC375BF3322BE4FAB1B23759AB66D84C0061479D7E1424B64
          B259D306E4F969DA83C2791EDB268D9E0D92BCAB03E17CCBFEFF827106DC0E80
          F11B7093AEDF8CB3837807D8E2978AB78128FC850B1E26B343EFEE677EDD99B5
          D9B74C32B442F67894549CA7972A96A81522126F3365007DDDE942E3C2AC57F9
          C7E1330EDA31C2666D5DB2B54BF15D4AC0FAC4D13EE1145523087C0E070B4D78
          623ECA0E64A5AF084960B1E12B70B86B01E7D2EA8CF22CD6550745E2A7DDDF5F
          908B2AA3A8061457B6BA1F1F8ED9B9D4412E2A8A2BE28F222233C479EFC331FC
          A50B0430A2322293DCA2F970640FEB1457DAF4E4187BE56A216828BC33F551C7
          215E689FD166F8BC812F875A422F829DF9620000000049454E44AE426082}
        FileName = 
          'C:\Users\jorge\Documents\Desarrollo App\Generar Datos\Icons\Cate' +
          'gorias\products_pile_24px.png'
      end>
  end
  object ImgListTipoDato: TcxImageList
    SourceDPI = 144
    Height = 24
    Width = 24
    FormatVersion = 1
    DesignInfo = 36700916
    ImageInfo = <
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000018000000180806000000E0773D
          F800000006624B474400FF00FF00FFA0BDA7930000028949444154480DED545D
          4F1351103DDB6DE99742458B08B5A112880684627D515F106334F1CFF853FC45
          98181E7C3231582598628251415129606977F7EE7AE676177697A6F407B099D9
          99BB3373CEDCB9ED052E9E73266084E3E6CBB7AFB95EC6C08FD723D35B55AF1E
          3E0902C9C0F1ED32FA3EBD00E305C64AF84B9C201CA37F0A7875348BF2C42538
          CAC3F68F7F68EE1F33DE43BCD31A89C608A24149107D74AF88C5A52974948BB6
          ED62D672B1F1F12BEA1F7E4BB8AF26FA46199CBB9543B556390117828EA370A3
          328EB16BB1FE981F97FE04DC6EB55A66D78AEA6AEDD881AF509C2AC6F1B88E4E
          214A404084555918CA6734B0EE3C042E6BA43380EAF8A0022CCA6548A204A140
          E0EEED1D688270E702DE26D9D1FE6190E65B124883FE4A4C7F023385FABB4DF4
          02EFF0B07F6D6E018914BABB767D4B1241F635764AD1A0E46C7D69C230DF637C
          FE363A0EB81B9E019D9FF54F68352D20436049D47AB63E46A0B3FC179329C814
          D0F8FC07DF1AABC81747A01C0F477B7FE12007640BCC651285EDD33F2B518293
          F9E98A6EB67C4B0FA3AD78D83BAD2E4E6A14E0F8F468244B72C46A0DD572DD83
          2094E0295C1E72B0B83089D2D475A4B269D88E8B83C3636C3776D0D8F88E6335
          4418B9D282BAC0F233254A00CE53C7F95236EE4C0FE3F1B32578460236AF088B
          E086E1223B6CA272771AE33337B1BEB68EDD5D5E1B0993BB631D4489EC4BF457
          245BF548E22ACC967378FAE27E04DCE655212416CF417C97C4330FE671A5C01D
          B021B04EAB0F2E2646407092E4CD36569ED774D741E7021806175FBEF1EF8052
          6D0E4997E7331081EB6081333752494D1000890D3A175FC0652DBEC7031F99E4
          B5E1DA386707CE1AAC164A958981C103A2F418091CB936F0464673A1034FE03F
          890E9F93A77302CE0000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000018000000180806000000E0773D
          F800000006624B474400FF00FF00FFA0BDA793000002A949444154480DED544D
          48545114FECE9BE73826E1E8A83534A848839651D10FF68B333039D5A210C152
          0ADBE52AA87DD2A28D9BA0DAB40C0CD24C8C6C1129380515B5C949CC1F4C2312
          C77A2A82A5E3CCBCDBB96F18DFE80C6E5A368FEFDCFB9DEF9C39EFDC7BDF1D20
          F36476E05F77801205FC7E7F4124126965BF9EAD90CD268438313030F096F91A
          4453B91B315C67A186CDC996CFD64F9D93A7784E81F1028FC7E35214E53547CB
          D992B1C44EAFAEEBD7028180261ACA5B40B8CB9A956D3D48CC41A72014BA491D
          5FDF25822489D7EBED23229FE4E9CC42F8F8CA31751F44EDE9E21BB45590E2A7
          8E8900F821EE7E0F773FC4DC409605385466414D858A1207A1B5270C6D49E041
          C1CC8ADB12B619491B87A21C60290A2C47129110745452D7E4A2CAC54F26173D
          B6D382DC6C636146F29D8B36DCE858C1C8AAD5E6CE091BDADA90A302078A01B7
          1DF8B90CBCFC06E802FC6C87052D3CB7A97C90858DD556341FB7B29F8A1DF90A
          CEEE55B138A89841851BA82C00F61701565EB28C146F010E6F033E84A407085C
          66D2A61E2D09BB388BF9E6D86AE7CEE40E3873816A2760CF4EFDC12E87F902A0
          4A5C2A752AB7FD5A936F372F95D3DB7B27783491F065FC7CED9F78C05F86E0EC
          6F7C1E5F88FB3C06C7E6D7F92CC51153F791785C710E79EE4EFE426C7135CD18
          D581FE5120C4ABB852952621497A386C3A4457156A1C7BCEC5DF986A1A36CBDD
          CBE269429B4B824FD0C810B70044D85221440C83BF561281B9F1B9044D99B531
          CDD404FA10531F2952A1332FDEF3A937303737961DC63CDFCC7A4C475D10E21E
          FBB191A7C3D046930AB12821B5D1EE2F92F2EDA7667A32594B5DE3D3FCBD492D
          6EA2BFCE8168B48E2F8983FF123464A9CFC8D7B3D6B2B850762430A59D96D9CE
          83CE127B699E4BF285A9C51FA14F33DF25F7941677F3051B923C63FFC90EFC05
          61D8CE6822E645340000000049454E44AE426082}
        FileName = 
          'C:\Users\jorge\Documents\Desarrollo App\Generar Datos\Icons\Tipo' +
          ' de datos\couple_24px.png'
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000018000000180806000000E0773D
          F800000006624B474400FF00FF00FFA0BDA7930000028C49444154480DED554B
          6B135114FEEECC64AC6D9A58AD2011E246702948A5F581A2D2851BB35210B72E
          AC0DBA8BFD0D7511F1ADF8231414158CF58969DDB8D74D698A8252C9A4D59A66
          66FCEE9DDCC9CC80D1D66DC379DD73CE77CEBDE7CE4C80F5DF5F262092F1DCC5
          85BC695865081C626C90FC2FF48D49AF7DDF2FD5CAD94FB4438A35C85DFA9937
          45EB03A303E4D593C082E79ABBE7277B6B1A6C69436AC3F6CA3EC4DA8ACB02C0
          6661F9659A27C98A620D608B51E5FD3F11AB116F90F2FBC3DA6E135EAB192EBB
          19866503263948CA062A908906ED2B61F1ACB58C9BA7D218C987C0009190D373
          2B18BBDF40DD23B6D324CC32424B1A290AB2279AB87A228DF1470EA66B7F3E45
          75AE89F30FEBB856E887C48058C52CA329D180BB48057C70878DDB852CC61F3B
          78CB5D6A80D6D2577CE2E00E730EE459B98D83D43A893ADE404E4333837B7329
          948F677061AA8199CF2BF404246DE9BBC2D810739457E3A4568E40C4EEC06F77
          F7E53C83387A2C019359C5E70D1CE1A9C037706AF697F2C9583B0D122B59AFB5
          26549BD43C2925E02A89EA9715145F3AB87E34839D9B2C3C9D5D5681D2D0003E
          D65B38F7C2C18DC3190C6F235056A252091121DD9D65FB0470059EF1724B334B
          B8772C833D8301F2CCAE8D61EE969E14EE3276F6D5222E0FF741CD5EE3C32C79
          DEC862FB83A6AF967CFEB3DE0FDCDAD78791ADF13DA8784454BFB630F66E0975
          A31790EF0363F3059B4F0A0D521C1D6C94BBB1C109E0F47B79B19299D985C486
          4EF1645ABC81854526A4C96A370289474205BA0B6EDD8966C41A084B5438A342
          3461B5361FC04A14136BE0096F02A621FF07D6FA45FD2E843B116DC013459740
          EE8D9F1786CBCF364619E97CFCB8E842722C150366A9B65FC4FE70BA60D643C1
          047E0348709FC17E49E0950000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000018000000180806000000E0773D
          F800000006624B474400FF00FF00FFA0BDA793000002B049444154480DDD545D
          485361187EDFB3ED68AE6DE652B38CEC3F129696686E11D58D211205E54DCA84
          89D24537FDDC7411065D4410D14D2025060E020B26FDDF0422E8CA112A248541
          909A5EF463A8A5ABB3EFEB7D0FDBD0ED846E5DD5789FEFFD7F9FF37DE77C03F8
          D77F68B4811CBFDFBE625E540921B5C9266FC0A866B9B14504E57D034727DEBE
          3E2D22621F0D50091215F07CF4798364A7254AAC8B872360C09AED3C48311E4E
          0A500AB80652223BE9204E0080FA909539AB23513336AF725D5BC7F19893AA8E
          136C181F7940CDEFCDAA6ACEB23BC85C2012AE404B4BBC7641664933DE74AFB6
          362201AE7387237F2D9DBDBE217681E2CE42FBCE0CDD49718913709FF39BF516
          E977668B056DCE3C3249244C4B1447C6CFD4CE9197B22C22785ABD352C004FF1
          147BDE1A9961CD8AA0090E4F3636F4702C1D28894D21F7AEE700F23E1D103A0B
          37CEE4EE76BD49AC49C54F22E06605D4663AF83193D99C9D39871D273A3B4D1C
          4F0786044177F157014A1D0DD4E805D78C166EBB49765A6248C093421E570FE9
          660271405379EFD065B293A4A8BD3D734F6BAB2529110DD05147AD3F28BAE1E7
          E9865F8DA63B3455F3BD2A2BFBC57EC1ED3BFB51E0434098A2CB7961C2577F97
          343F10A7752C49C055157D8317495F22B0748132EF1D1B1A7181229F50C046D0
          851E2424509C5BF8D5A19E59C652D13B58474FDA46A5AA8C68339F463F58C33F
          6615F293059563138DF55D9C302EE04C025E7A4AFC88B28AC2E36832DB728B36
          8123371F503118216426D5E96290D5E386CB8BCAD26E690A97D0B60388A8D065
          84822D3BA4D5B18A36176FF9A95A22CF621ED5C6CCD4F4DEE0C00129E106FD0B
          BBB853689A363BF5C5F47DEA73F768C3C9431C63A44DC0CDC5C3C3AA6D5AF309
          29CED20BDECC3129654DBFA7F431DB8CBF22E0010CBEE963EBB7570B9ADEEF2E
          79C4B1FF07BF017FBFC155796B95000000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000018000000180806000000E0773D
          F800000006624B474400FF00FF00FFA0BDA7930000027D49444154480DDD54CF
          4F1341147E6F76B7D5B60A0651931A39A0A9F15F50939AEAC59395C4C4037713
          3D79F2BFF060E285C48389178978E04E4C3C18CF260A04304D9088140E6545B7
          DD9DE737EDEEB0A52242B9E8E67DF3DEBC1FDFDB99D959A27FFDE1DD16D0A816
          8748BB25567486588A2C944BE70AD316097F114D5F2513CD0E4C2E6FA4E3896D
          1B0811FBD5916B44728789AE20E1120013E3DE8272FA88E12D31BF2C4CD5DEA0
          1053906264FFD6C87D6679009E1270183227C44F0AAF6B4FD9BF7D6E9C849EEF
          6445636A46BA15849104A1E648635352498E62C9BA4A8EB80E651C954985B64D
          A1711744A358CEB633B6FCA025F3EBBEE7394C8A984018473A0A0D49E3CDD09F
          2E0C15E458D6EBA11145E7DD4E7AEFB8FA3D601451CE737A8329CF562BA255BF
          939B725B53592B65845A878DA04547BDDF865399D4CE69345B14A1A62B104F14
          6B0A62DBA826B6ECDDE286EFE43C171BD3B36A93D3054656CE75690135A616C1
          26D0167CDA3F958EC2097C9A0F71EA957C189E985BF75F29A5388F0626EBE4E8
          4532F8939DCFE06558F17CDD9F341C86CB706A8A26DCE3D32B75143F06DAF2A9
          327C79EFF76EA7DA815160CE0A2BB8CAD32B866B0641037C20B012F95C1E1C44
          EECD64BE5F6D6A0D47BAAEEB1403C71B43300B1C54B23187ADEF6A4022776DE4
          A0C60E0EDBE043E5D469FC47CAD4EFC35C6E73C53CF6A2794437E0EBB955F5C5
          59B83BB29BDD89DAD1F1485FC7EC05B07DC8F8D99D358EC3812A263C768BF06F
          6F24CEBE35D366C2611B68A185C4D9AF4E73B90999D6B2E4C427802B3E559A59
          1B4B627FA37141A7700FAA26D7135A32DAC036F8B1B9562B0C0C3F324E95759E
          19BD1F788EBA1786FABDA959D6DF6A46FF1FF805C91ED09E1CFE625000000000
          49454E44AE426082}
        FileName = 
          'C:\Users\jorge\Documents\Desarrollo App\Generar Datos\Icons\Tipo' +
          ' de datos\PhoneType_24px.png'
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000018000000180806000000E0773D
          F800000006624B474400FF00FF00FFA0BDA793000001AB49444154480DE5553B
          4B034110FEE6624492463185626761636161101FA536791808825A5989FFC0CE
          E22A5BF11FA4B0500431065F28D82A06B51041B0B18A8AA0D8AA37CE41EE72BB
          5ECE5CACC4658699D9F9663E76F7760FF8EB838216C0E585289E2BB360CA033C
          20D80E51167D11BD00611B6F6D1B34BDF929B1AFD425E0DD5C12061700F48BD6
          17C63560CC50BA78E307F225E0FDEC38404529888BFE2C845759E530A5766E75
          B0A14F7029DB23CDD765BEB1E60204A35DB6708D5936CD8E3DFA8D00116349F2
          09D1B092C4612EAD1729045C9A8C81784E07351C5B3CA5631502B4D2980062A2
          CD0961542F5409D8EAD30121E35E3ECE777A6B54028BE4B0BCE9D07E14EF1FCB
          DE2A9580605F206FBE197F9E0FB2434EA146C06527F10B6BC89D5875EA5582D3
          A44D70E7247F61DDBEAE633723D3B4C06CA2F9216F1267703638E2B4A8F7541C
          C96D9E704021EC03A54ADD5EBCB2023761598BAE1FCE79D4E1BE0494D9BB12E0
          A56858A9E805BE0455D079D5366E884E74708B3E518BE9495EC85AE8EFDDCB59
          45041797F416125D2B62150920807C110AD627A082FC034C048CA02D0A28FB4F
          A92F5ECA5C4951E991BF0000000049454E44AE426082}
        FileName = 
          'C:\Users\jorge\Documents\Desarrollo App\Generar Datos\Icons\Tipo' +
          ' de datos\marital_status_24px.png'
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000018000000180806000000E0773D
          F800000006624B474400FF00FF00FFA0BDA7930000022049444154480D636018
          05E486C0FFFD0C2CFF3731CCFCBF8A811966C6FFCD0C01200CE76351039383D1
          4C300606FD9921888191218D8183211849AE0D28D60AE7635703970631705BC0
          C4F0F1FB0586370C401AA410847F3F64F800C220361803E5D0D580C591081624
          360AF317C7E5E70F646F9E5366577BC6C0A007967B2AB2E5E4BF7FFF806C3F20
          6660F8CD79E1FD73A5C737643965DF33301880C5D0099C3EF8F7FF4F9092B48A
          DB3F86BFF020921496299016952B8019F2F7DF7F2F6931591B100D1343A7715A
          80AE905CFEA80504438EE641C488EE84FF8E8D5D0CFF197281E21C404C0AFA01
          543C91F1407D059086234C1FFC63C807CA220C6761F9CDC0C2FC0B28868A9898
          FE323003314214A4079E8461C21816FC77D53D079364E0E57AF76F62CCA5BFFD
          B1971878383EC0C525F81FFF9B9E78F5EFC4B8F30CBC9CEF60E2FF5D74CFC3D8
          301A23887E3E7CF188F9EDB7A70C9FBEFF665012D3B87CF6F8D5BFFFFF321818
          5BAB30DC787A97819B9D89414E54EDD08EF53784C5A519B40D4D35186EBFB8C1
          20CCC3FE47905B8E431E2808331D48631415790176E2369E814FA56414FE1D9E
          B0FEF3E3BBB71D1880405659FD8E958B0FE3E78FEF988EECDCC8FCE9FD3B7BA0
          30838A8EC1752B575F8697C71EFDDDBF719500480C1963F8205957F13FB20252
          D9732FDF47311385337FE5AD8E27C75696936A28B27A19ABF0CEC47035784A42
          0922C67F0CD63296E1C8EA4967FF67B0245DD388D601002683AD43D7C0B06F00
          00000049454E44AE426082}
        FileName = 
          'C:\Users\jorge\Documents\Desarrollo App\Generar Datos\Icons\Tipo' +
          ' de datos\birthday_24px.png'
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000018000000180806000000E0773D
          F800000006624B474400FF00FF00FFA0BDA7930000021D49444154480DD5554D
          4FDB40107DEB10923886F45271682524CA0521F19926086821D0A82A17FE417F
          097FA512478E5C504148D04355B5A540AA14A9975C801E7A2BC431CE47BDDD71
          BB8B6D61EC884BB13C3BBBE3376F76C6632F70DF2F1696C0E6DEFB1506B60EC6
          5EAF9666B76FC2C5C1F4781D1BE5421E0E5BE18CEBD593E3F99FA3530F07BE1D
          AE992F0A8BB8E10A621867161C6C65F73F1D4AB80AD02815A7B9C33F003C090E
          B4CECE81D129B4CFCEE7C47A4E3A787510C305101AD6CCF2D382B17B5021AC46
          832B1A7F297452887B9BA6E5EA7AFDAF76178121049384A3BD92D01E3971187A
          99D8B95C3FAA7CC48F4E1B8FAB5F00FD7A1FF239E9308C28718A9E93284F7B70
          68880C5286330C0BB5233C0921275C18C6CBA532B87C56EE34C62FC8EFCEF2BB
          3FD7C19B0D97E73A40F1F9A96849D778E781F353C9A1C9491C6D5A57B8B25B71
          A00AA332509690C985D9C0BB83AFD09886526102869E0E41FACDB13290E476B3
          05CBB6B1FFB902D3B2FD4C21ABC8005E72C9D14D90C812E58C2CC4BF487277AD
          2333E89A31E01099C1AFBAE9BEDC66ABED73D5D3A97F2F3BE3B3071791193CE8
          33B0549C4426D5AB7CA9839667264527DD4E4E0E910108D49FD5B1285A938210
          39B5A99E8ED7A6DE12DDFA05519085FC181289046290376963242A03076C4718
          FC851606EF9D13E532F4C8B2B491E06FA59FEFC83CFA5ECB33F092382A556009
          8CA3C581E3381C7BD323C3EA448BE3F77F63FE004BEFC215DBB01D0A00000000
          49454E44AE426082}
        FileName = 
          'C:\Users\jorge\Documents\Desarrollo App\Generar Datos\Icons\Tipo' +
          ' de datos\age_24px.png'
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000018000000180806000000E0773D
          F800000006624B474400FF00FF00FFA0BDA7930000019049444154480DE595B1
          4A034110866756131B11042146B05311D284A4B1B8C2CE906821682104622D58
          F80679030BB14FC0D82858E8294210D1746288452A2D2282111105B1312137CE
          21BB2CC905562E4D70B86567BF9DF9FFBB5BB803E8F7C0BF3C407DD19A27A228
          2256C227A54B3008230302C07ACA2A20C29AD464B6CF266916E054D2CE99F73B
          613B794E5A091470D6CE893031615F9FB7737D2DF445B79CEF3CE2B987E4CDB5
          6223032EBAD37A542A5054D4A24BC2BD5D76341CB24B45042C680810696FFCF8
          EA42675EB9D119C8C6F2CE760E9BCD0C0502F9D8E6D63A18C4A0418D2AF988CE
          D5E0376A601846AFC850CBB3ACFF0D8C0F3996CAC4C746868F1A8DE664301878
          7AFBFC5A2EDBF95BCFF7A2414F83FA92B50104BB5CF7CA9F83507C211D164254
          09609499BCDE1145E4E634F72281D7AC0C66B3C5198496CD45533CFC5CF70228
          59CD261E5C1175C8029C15067EC55902A65B88AB6EE20E6500404117F4620882
          21A9A31948D4DB5933C046AFA41D846FA9A50C1C1087FC5F79941B3EE6DA00D1
          818FFEFFD6FA03AEA85B278B8FDF510000000049454E44AE426082}
        FileName = 
          'C:\Users\jorge\Documents\Desarrollo App\Generar Datos\Icons\Tipo' +
          ' de datos\joystick_24px.png'
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000018000000180806000000E0773D
          F800000006624B474400FF00FF00FFA0BDA793000003A449444154480DCD545D
          681D5510FE7637DBA43584D0A6FE6002C536B63642C1548BADD560418D5094DA
          FA20A220A26255D0074B8BE09582E0834FAD62A13F6A6DF187287DD352B13E58
          1B35D01F6C0DA6222A88184D4A93DCE4EE9E337E73F69ECDDD9B06CC83E06567
          67E69C33DF373367F602FFF12F982BFE600FDA2693E87E115964251AB695E4C8
          EA010CCF86332782B3EBA20745B0CF0A9A2D02A81809C6683EB6E6EBCA479723
          F9D70467D6E25620FA92E0B1023B912A09905884EBD79F2CF7D79384F50BB3FB
          51C983876BEEC5FC17F722BAA5178601248BADC8CB34673C97ADA07B8FC4930B
          C69F6582CF33A25D2A65EC3FB0148DE904C2D6C5E8FC70100DF31A9156A67066
          F30A544647301E3763EB43A781B869280CD2DE0B8F5F39C458CCA860E57B631B
          CA578C9F22F8EB3CD0CECB84B116428799C24A314408A1EBC200630C8C916549
          1A6EE171F734B877F5D575F0E232021DE34542814158B51134E0FBB69BB0EAF7
          1348478771EEA547D0D4B309E35F7C8CA9D1BFDD659F5FB80A12CE8330198635
          562151203041741F5374E00AAC242A0822F4DDF80C56FEF12D605324FD9F62E2
          E4670E58B34F98C091AE279D2FBC2802787CD6979BCCD7D88D9619581E9AD6C2
          B22D7E68EFC1AE9B77222599653B14582525C45BDD255CB8761DA6E36C8E9A57
          B0E4C048AB3176AD664E2A978466AFBED75F2D7F18531263EB373B1088458208
          BB56BF8A81EB1F606B02C664C0CC4F87CB91E4049104773383D883CD46D2DFB9
          C555F4D440096F32F3EF3A371198A79949162B159672D4A1F39513489AFEC58F
          8587A52A5910CF147CE24049CE5E751BC69AAFE6213E5CCCC0794546EE19DDD6
          D1AF712AF9CCFDF444DB318EE37156814CACD36C1B3316DA99EFF6386A979AAF
          D179A8DB638B04772AB097D01BAA2591576A2FF78EC69FA1A26B9CEF22091BED
          C83814BAA789A86FC43CD752FA7521AABFBC45EADB50526B84A6B609D8BD7939
          B3B4B8E1ED72A14D3C50F07D7BAABA25684837F2CC3B94BAEFC0D89D3AC76CA9
          0378FA83F324D0F674D0F7BD9ED6B46AD6B3A448F2E7A42DF729B84AB102635B
          3DB8EAA397DA1D40069403B83502E55A81329FC9080EA1D435A66B2A853B3022
          BBB5DFDACB5A9DF598C1EC77FD9EFABEFF6AF3AFE2A2027B29102C803D4CB053
          B5E01AE47DEED55CB49FAA4C2B89DB3798F4E0AA0B04BFBDD0518ED1743B0FBF
          EF416B344DF99C45DC65AC7D94FFFF235C2061A1B2133631EF2AB097C01B73D6
          DB7F5C1C86F20667EE3A117B1026FE04AF2DFD65CE38FFFB807F003697F6EFA9
          184FAA0000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000018000000180806000000E0773D
          F800000006624B474400FF00FF00FFA0BDA793000002CE49444154480DD5544B
          4C5341143DAFFCFB112AE9C6548552CAA7D0F2A9D5A0F19B68423544A371A309
          5B13976E5CB9C5B875654C70E342342A11914F04441E9F0A2521B03241574230
          D82006A5E5CD78674A9BBE028DD8152F73E6CEBDEFCEBDF7CCBBF380BDFE28DB
          111839636F06C37328C8E31C138AC21F19D6958E8A46F7A7E287BD35CBB72FCC
          0AB9DDDE549B21D520740AEAA7E0465A67290A9A00E509CBC3B7C58505F7E849
          7B2DD9DD847F1ADB2688EF3CDED222979BB228BCFC03CC8099AFF35FA09E3ED8
          DA710D59D221CD943681DAD929B7C6A55468FABDB6060EDE7EE0BBFD16A96947
          DA049B956327F9D960F3DB2EDF6FB3DE78DC66697D4A78267029396376B292BA
          8E57BE935C32580E718E9B041025FA549CA0AC539C7C821C193110110AFD8DB0
          D65561BFC709ABA74C98F2C41447460C449095E014364CC5D0B20BA8FA2C82BE
          F3336660F135A0D05385A21A27A14CE4D4216306AB93A1DD330847784E38CA50
          7EEE3C526584F144578952CD0DF5D8575389C2EA3282439874D031E0D35797E8
          AD8D101B7C0581C031EA903002CD7EFCF9B988B51E8E785709A75FA1E95D31B0
          7D7CF3029C33C4A48691AE97A4937CFB1AB926457663FC5E8804A6BA3A98AB2B
          60A974104A854907255963A12B7441A997A9B1694195D39AFE7A9C314AC24867
          E8B9330B6B8E416E53B31D1F1E9803A752BB68B5FD7A226ECC53BAD3C444A5AF
          289806B5BB139C45A1BEEB9272ACAF078C74F2D27D8302AF17A64A17CCAE5242
          09529F4426F1420B5EE4E27804282A258A552D740161EBBF3BFFFF0C4485A3BD
          DD14278AB1FE3E29C7DF0FC8CA8383C3605A44D4A163905FEB85D1E582D15942
          382CDF274F3A0611F5EC1606B2723A3ACE35C968F0DE52660C260686C0B52882
          4323B2E2C9E17192EB985243601BE23F061D835CB707F9CE7214384A085B19E8
          EE813802DF8923326043935706AC3F5A2DA5D7572EED827EF23D88CCCDA4BD07
          C27F6FE32F3C0B7478F29181F40000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000018000000180806000000E0773D
          F800000006624B474400FF00FF00FFA0BDA7930000033D49444154480DCD544D
          48545114FEEE7B638C8BC6B414A936FD90948B16A3581685D9E0D0A294C45DAD
          DAF40B995492044994154AF48390EB1649820A819918ED664C836C2C5D15F427
          A8959A3A8EF3DEED9CAB6F669E6FB485040DE7DE7BFEBEEFDC7BEE7D03FCE39F
          F81B7FFF5E6CD64CD7E928CC6248B15E42C094F8466BD71CF407BB03E14F58E6
          B764010988D01EAD8A486B4DC02DC941A4201DBC92092945D894A2A62038DB40
          44EC729422BFC3A71CEF0AB57B54E3AC222428932A9D4E402693C78B49DC2D0C
          CE9E57C04553D202A142FD28913C5584A42C4B4E841C37A459BA2F186923D326
          9ACD2283F804016E2E26373C5990BE6380EF380CCFBA789BE8449C2BA0D73196
          286CE23841A83025DF80D963F59C4088E61420E7760BDC69E90A1C1EFF89D0C5
          7260B0174C4E77410581A810DEE2C0F41B95B430394E1015863791DCA41D669F
          B91523671C17DA78EA868D9CF3E8E8791C4F1C8E02C24006B548ED88417C82F4
          2DDB13314A4FDFBA435D34C7AD3C7A146B553061721490421F4B04F1F1C706FB
          1320F3EAE850BF6D13BC29C394A3F3D1F8EC28F0C344AFB52326E71E7F6DBC02
          EEBB059BA13BF8FCB0865A24541126E7B6C22502568EB53A2E99762FBAF25DC3
          69BA96C5E40A4CD9A62713FA2EBF6A4B24D00139316623A7DC0FBE9EA95C2224
          0A022C886B618D2D9CF0021A7F604F2C72B54E8C62EEF9E3382921949FE8881C
          A6D0AA194B6E9B385AC451DFEB48F37854DC272C11D27F0F39B95D6CC7DA47AF
          8BDBC2E452A0CE1F9C6CA33487242DC05925BDB3E7A60DD42B0262588AFCB781
          8692E0543563920D3A553277DCD791975A9FAAA332D9CEA76803657D5355F16C
          A7E62890DB3CB06A32ECA984D4D658E927DB4F1C2CF8F2CA9BD8F3E086FD7D4D
          A54D5D560E84F96BB57BA261A0223712F391E2B8E4B09171C995226B29169347
          A58D18E9BC8A43432DF4348167DBCAD15E72CDEB72096F2C093AC2463AF35D8F
          FBE8D34B34729A8737491D03E44BA56197B930FCDD77F8B5A0B3E80290E2B6C7
          E7AD19FA27C81DAAC8FE386F2E2AB0A37DA4950247682417C9574E21A1D1B4A4
          B4BE3F9C5966456377B0B363A44842EBB6022B59E9611F78EBCF7CC91C2E9E78
          E8BA18969A7E99F5950E4D93DF57CAF1FFE0FF00245467B609A8113200000000
          49454E44AE426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000018000000180806000000E0773D
          F800000006624B474400FF00FF00FFA0BDA793000001C849444154480DDD543F
          4FC240147F574B2141314119505082896E6AE2A071E11B386AE2AC9FC1D9CDD9
          5117175D1CF9049A90B8B8E82C2114341A450322B49A9EF70EDAB4C7414BA283
          5EFAEEFDFBF5FDFAEEE50AF0D7179135307554DEB014B22ECBD93105ACC2FDCE
          6CDEF6FB695596A004CE09A59A2C67C7281083D91126031FA783D5CBDAA245D5
          6D44B79BE61A6A3F8944B52BC458A09C5EE7466FD116C5E98012425A7563A50B
          F8ECEA81AAD5E8E0A3B191B37E40A70304248FCB14F5B0F2B03BE3A9E37EDFE9
          C01D34F52A77B5F434D77EFEC4E6E181191907503486570A8D93AD3C33F82327
          A85478D221F0F1D9C0F70810E0ED13F00C5FE595844D4BA53C113F3F3C978658
          22092F37457C2F8C9B2D7282EED1D820BB937E7E389B8678366B13D830AEA504
          7E672EE68DA20EB5C6172F286E72029F333785BC71A743B35A67430E89F5414A
          E077E6625E988187444EF05B3368BF9B171EFAA0CE939E0B3483D7C7762E684D
          372ECE86DC6F068A1BE8D8CF25001460EBE3AD63A38F360BF11CFA6833C119C4
          971798D5FBFC0C01DE83A5F9DEEA2C221D324C6660E012F243DF83A10982DF03
          BADFF3E56A280363890CE052432500CA043C8BFDEC5ACECF8E7A52FFC0F90632
          DDB1843A1266EA0000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000018000000180806000000E0773D
          F800000006624B474400FF00FF00FFA0BDA793000002CB49444154480DD5554B
          4C5341143DEF435B7E152CF801CA6763448D46C148706174638CC69521D18D0B
          65A92BE39A4413772E8C2108093B74C10E4D5C2A8841424C5416F805AC7C1268
          B1B6B47DDF19675EFB4C5F9FAFC5B8304EE6CCFDCC997BDFBD334D81FF7D08C5
          0A68188C9C27A2D05D8C2382BC5CB9DAF2D88B237B6D703F15302A50EAE3BA17
          280495ED05187E3B5D151C9BD83848A87C89B39594D6C56529042A7DAF388740
          1C797DA26A96EB365C155041103209B52347D073B2A8C824B3FCCAA0F4B090E8
          AA8013760F4528977F8AD5DE66573CB15810EDDB32386C0ED739BC6CDB9F2F8B
          27585A82C6601FE03A87976DFBF3A5EB0EF2377D4D4DF9264AD90E72CE289E20
          DC98A36585AF849D653957470276B3C28BDEFACBEA4C37CA880A620013B567F0
          60DF6DEB94DD7F3B51A16D910A16C71D8C5FA93B47A830109035F0E7204A40C7
          CA33EC5D9FB18EF1FE7358065BB8CEC154CF29E7EF98BAB03F7CB862337CA4D1
          2F4A6520A68EB7D369B444E7F0BEFEE8DFDF0135B11ADCB5AD46F65741920330
          0D05CD6D0AE2C93AEB3BECD658065B0A6DE6724D47050D5D154D15353ED618D6
          20818135AA2A28E240E8F3C2F8A616719DDE82C391A07AA7342648CA4D534F05
          A9A981101D492261347EB2EDBBA2B46D219E8B22E67BC23DF3B38696BCAEA663
          D0D251707963EE223E282D403A0E4417B3E03AD8B06DA67A4D47823BFD23B5FD
          5FFBB6C7127EC43692882602584CB62320B0F7CA83DA01B9CE23DA36D73DF0AB
          45B7EE0D5F30B4CC3021A4BABC7310E4CD287C877A70EACB148ECB9F30960AE1
          636190BA56941A5682BEBB039D86A63E22EC8F805282B9658AD6B175CC870CE8
          1AFB4D1082B3B529C4D7FD58CBB0376047DD6A024DD74FC3243261C129A1189F
          9CC60E5DC7F3C9292B41D64FB02754BEB0F6A33E02B96C11A00C2839AC0A4C55
          7BC2BEDC2026612F874051550C35B78324361D013A82B1A793F7AFBD7338FFB5
          F11368203A15EB23A2800000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000018000000180806000000E0773D
          F800000006624B474400FF00FF00FFA0BDA793000002FD49444154480DCD544D
          485451143E77DEFC3C9F4EA3998E5959682D5CB408FC03A9A040C6A0B54229D3
          26AC2C31C48511CEAA8D8AD1A6B030515A44D022A17155D822B354823049CA45
          14C938CA28CED4CCBCF76EE75C9D970F734686A81EF7DCF3F39D9F7BEFBBF730
          80ED7DA3DEBC431A839BA07307D7D9FB93430B57B613C9B6E3F4EC9CBBD262D1
          472509EC9A06100B733D1A868AD3C3C1A954F1D6540E84EB2A3F5E5491B55078
          D8BD97F46FEF025FA647564FA0FC670AD8654B20B76867815DC9C59C007907F5
          DDB212090A25C5643A22AFCF275B97D50718E3415290C428CF9F8186CAAFE0C8
          DA25F4687811065F16C244B054E8EB5398017B1A7249671FF97CB1751B988E08
          939F4140B684AD797D7DBE08CA62DCC3B97EA4748A45D811C02569D1D064D3B5
          B132341BA3A1AD2D53D6E4C7AE15AD1E8D83486258C49C9818ECC3046F36264F
          406D6FEB9A9782F340D43A5DD79CB027F8507777983318C75BB63F61236EDA01
          193651CB2BB7047CA07F1E3CC79CE3C031CBFDCF3563524B8D5FB3712F745707
          36C56C30A42C2081368CFEE5B832F07EE800AC80AA4ABC56D2E009DEDA2A346C
          39CC0574E08C31F3B1A9D1629194EB941489381127B964CBCC7F0BC03BF1AB54
          B276902E661448D60ED2C568E9C63F48D60ED2C54C0592B58364588633791B31
          6ECC9EA3728EC369B3E273C7B7C6C02A4BF692537236AD22195658ADE4D8B2A4
          DFC651ACF10F4859C6766097B3453B50BF87269D9E19A31DA48B193BA0023716
          9A8C76D019BC606A07BD6AAB81F548574DD8F5895A03EB4099722548EC20FFEE
          9C9BC7600038786E29ADF8AE185C0EF700D3C1EF2AE0ED99AE9C2ECEB9C7173A
          8F2E0C3A77DC0114FC2B93B3ED2B9FE6BA50F1DC2EEB177197261A11E27E8D59
          BDAB438D015120BBF7E36BB49623D1407F8ECEC8B438E41F70466CB2432103A7
          C78B8408A9105F5A8A2C3F7FA130A08340801C3003131CC6171F5EAC12D7548D
          EAC56B360C25817C718F3C16075D6319F11F1A26C4A268C3782113D725478614
          C5AE2E511A0E6B892958C8FFBE8DD07AFF7FFA0901A8BEFB0C6AC97E00000000
          49454E44AE426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000018000000180806000000E0773D
          F800000006624B474400FF00FF00FFA0BDA7930000017949444154480D6360A0
          3160C465FEAA43874459FF32C7B130FC5AE8EBE8F8069B3A62D43061D3081263
          FFC394C2F89FA1E7EF3FF614101F1B26460DDC07FF1D1C38BE317F5DF29F81D1
          136818D72D6B3786470E9E0C7207B633A81DDD0514C24458D47C031AB88D8BED
          5D0CE3F63B3F413AE03EF8C6FC2D1A68783050900B88195E7EFA0EA2185E4169
          30078DC0A286EB3F0343C8D79FC25130A5700BFE3132C8C2044134CBBDBB0C0C
          3FBE3330DFBB03E262C5B8D4FC67FA2F0FD3C00263A0D3861F1E33BCADC96310
          E6E164606065469706F3895103F7C1174373070624C00134545A908701442309
          A3304172D8D4209B058C13889EF3D76F37303032D643781492FFFF371A6AAA36
          300001DC0740364D10CE3878F0EC25C34320969712075B4C88AD005507568C44
          0C9C0F402E026198638861C3D422D3A341C4801C74C84103638F0611C12042E4
          03268627B070A3946664647A04338309C6F8C0C6B2E43F23C33A20FF0F10938B
          FE3032FC5FCBCDFC6F29B9068C407D0035EE9FCF66C887B50000000049454E44
          AE426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000018000000180806000000E0773D
          F800000006624B474400FF00FF00FFA0BDA7930000047E49444154480DED544B
          4C5C5518FE66E676861905FAE03140238A452CF214A9AD213151575557EEAC55
          A349A18B56AB68D5F818932E4C4D2631481A4D6D638D36106D4CD8B8D2B40171
          280A25A9B196025270109119DACE0C947BEFF1FBCFBD4CC1B8B07BC9FD5FE7FC
          E7FB9F8C0770FE22916E7F206FEE395BA9E76DDBBED356362C5B8DDAB6F5C9EC
          A65B8F7DDCDABAEC78DE1CF788FBA1E891329F57F56C0E871B1BEBAB511A0E03
          0A988AC711FB7118A3BF4DFDA42CFBF1C39183BF8BFFCD902772FC784E209989
          35D656D7353735C0F0F9E0F57A35062B81695A38D31F43DFC0D0F0D27C687B47
          C7FE257DB98AB59CBD36A8943ADCB72DB77BD5B1568D4022BD375C5C54575F7B
          0F6CCB86C963AFCDF42953E914FAFB07D0D2F20026A7E20D2766928BFEB66F00
          DE7B6C8B555AF064AED01388F78D7485767DDEE551F836F5C5AE87F52199603D
          59555981D18B97F041C787181B1B67D626128924BABABF447373132C066EA8D9
          8A2DA10CB04492FE9108460805A51C6244B11F22CB7E06DBB075D3C60DC809E4
          60E7A33BF1D5A9AF31FAEB05E4044388BCF3367C86C100168A8B0A906F9850D6
          22BC46C00560A5BE00C67BFA908EFFC53319A94D79E36305DC1666685A164AC2
          25D8DBD68A9ABA1AD4B065EBFC7E566341EE96792F9B0508088199B586F11948
          4C2CE0FA92579B2CC7912E37B88A3FCFCCCE36979596C26BDB1CB007BB773FA3
          AF4DD364BB15C9C6F4F40C167C41146E6F00FC21D89C0337198AD2D1A54D1C0F
          6D9CD4CF35F3DA96FA74E4FC05666A3A99726B045848B2962D121A183A8749A3
          58833BC0EC38AB70FA2F3A89E0626B64977917727D4767FE9C1B890D0E394198
          F5B24B12C4B44C9CEE8B613A99C664418DEEC08B8D7938706F9ECE5E82BD7C5F
          3EDA9BD7EB3BB15D6C2DA4A13870285AE633AFF7840B0B1AEFAEDC8230072AB7
          F13F6671EEFC2F48A5D378EA89C7F0486F4883C6F7DC26D728EC9CD0F6DCBE3B
          B4BD3E7A49B7EEEA2B951E7D409655229188FF3BA36AA93C13C72D564AF73D89
          2026FC257870C7FD086E2CC44723570808ECA9CDA5543832BC4009B435B01A05
          749E4DE82AAEBEFA2F01180C1527E3CACEA4602D66B423B88E6A5D90201CA0CD
          014ACFA5CF9A686BC93B9E733F5C3F856BAFDD954DDC10E015D203F20771F1E9
          0AFE1B019527A621CAD8B39B75C0DB8F4E1204B8DC5AAEEDD2CE712DE3FB2AC0
          0250141DD5F60A9EC8B50198259381D78D2FBAACA1B679A66D32AAF0905125A0
          BAE1AFDF4B288176886E8E22BCFCB3692580B209FCD966B64A53B67C223A3B0F
          F79CF7C49337CE396D06C9BC5995C575FFFD049E8FC499B4BF3E172F90241031
          F54ABED4944F50FA104056B27DDBCA5A0A2889EFC457B7D981D3FC1F2D124785
          76EEB9DC4607654B140E72C7C57E3F96D02D797DC70631F1DEF7F3DAD6C0AB06
          AE2F5DB636003D25EBC80F490E4D82316366F656EF3C157ED4E982374EF3874D
          03AE9C89AF106D56E8626B91ED955865C72EBB33E0EF0F1DA55CA7BFF2900004
          D5BD96402B3AA524B57A66CBEF566771D7CEC056BD92A1430EA03CD68178C88F
          2D7183D1E0E7D85424110AB1CF48B2FFD37FEEC0DF5452FD54BDC6102C000000
          0049454E44AE426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000018000000180806000000E0773D
          F800000006624B474400FF00FF00FFA0BDA7930000049149444154480DDD555B
          4C9C4514FEF6C6EE725F0A584AACD036C4A6356D4A2DA4522FB1A931210D4D6A
          E3838F9A7809C4A49707D3075FC0526241D04A62E825F5895AE4A151D3A24214
          DB484A6362B1AD02ADECD25D5A5C6E0596DD7FC6EFCCB20B8DD6F8AA9B9933F3
          CF9CF9CE39DF9C390BFCD77FB67F0AA0B9B9D93DAB9C2F594AEFD15A6FD64AFB
          94D6E03C4C7195F3CFC3698ECF5A6A6A220FC379A881FAC6D6BD0AAAC152AAC8
          E574A0203F1F991919203C262627E11F0D22B210E53786290ED61EDE7FEEEF8C
          FCC5407B7BBB637074FC183DAC494FF3E2A9F2AD58575C0CA7C39100843BC585
          582C861BBF0DA1FBBB4B084F4D4369D534F478F181B3FBF659CB0D39967FC8BC
          B4E2F916AD5475C9BA2254BEB013B93939B0D9E8077B3416A58A86C31E3FE6F3
          6563D386F5989A9941686CBCDC373691DDDBD3F51595922DAEB9F859DF78BC8A
          FCBEBFBE642D769497C16EB77387E0900E46E1E49A83C1697AACC13BE13EB0E6
          B1D5989D9B432074775BF9333BFB2FF774DD341B1482C00178F7E4498F021AD3
          53BD7872CBE624002F124A2958163B47A52CF05ECCDA9D60103FF6F519DDA7B7
          6F437666BA8D1B1F545737BB0D2845D280273C5FC583455B363D61286124D4E5
          351BD0F8682D030F12FCA38F5B5158586822121AB7979572AE8AED9953BB896D
          5AD280B2A92AC996C2C202029302020702A3E8EDBD642E97C6A11885F4DB237E
          7C78BC156FBDF13AF2F3F2A92F0E68AC25552EA753A8AB32E8144B06942E5DE1
          F3D10330E4F881D05808274E9DC281438770F14217E623118CF8FD686B3B61C0
          7DD4B7745C9759C46CD52878240F96D6A5C436CD6924052F6CA5D7E345647E1E
          365EAEC7EDC6868D1BD170F408BABEFE06673B3A50F75E2D9C7C13A74F9F4156
          76B6B90BA1926731C7734A69A4A7A5825EAE22A4694B11686DA32F62DD1C548A
          5FEC5EAF17BB2B2B71B4FE08B2DC4EF8D87356E4C46959A42CA1ABB4C5E8492F
          5FBB41A7588A40EBC0ECFDD912E1502E4C38B76B9BB9700AA4B85C38F3F62B3C
          420A09AC3933DE134C4617F725E326F9E8185180DBA6250D30AEABC1BBF74AA2
          7CA1F26AC588E6E392910395250305965346467D3241B968408CC4B8EE1F0DD1
          03F453CBB42445BCACCE6834063F332719320FC85CDE808C7CE1CC903875B226
          51CABA74990F0EDDC202311474A741A7481A08F9D2CED1BF9BFD3FFD6CEA8C1C
          487403602DF16BC95C8C93AA848EC5C87FB87C45EEE05A78E4970E629B962C15
          57CE9F5715CFEDF24716165E9E9A99C6A385F14490D06998745066E542E7AF86
          4A4935DF4AD357668EE874F5F4E2F73B21D2AF5EFDB4ADF5BA41A7481AE01CDF
          7F7BE17AC5B3BBDC7F4C4CEE9899B98F55052B6599603268CC2B07A28E143858
          592525055878978A7AEDD721D2A7EBDA9A6A5B453BD11F30208B056FBED62D55
          F15E78B26C70F816523D1E6464A41B23524DE9B0A9A65293866F8FE08B8BDDE2
          39C1D13419B8F1CEC0C0004315A4788F97C9F8FC01B9FF70DD5E823530AB8BEC
          2CCF79B93EA4F14D889294E760681C92714CCD61A6CDC14F8ED5FEBB3F1C0148
          74A98AB68CE93DCC9E17599CB792923504A4B79A7CE8BE98C697DE68B8B3A5A5
          259238F3FF1BFF0470A0DEA4BA74AE4B0000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000018000000180806000000E0773D
          F800000006624B474400FF00FF00FFA0BDA793000001F349444154480D636018
          0504428011597ECFDD3F3EFF1919263130FC574416279ECD78EFFF7F865C3765
          966D303D4C300688FECFF86F1AF986834D5062049B016243308A050C0C8CB210
          614A48467964DD6816204B51873DF42D60410F88076F7E306C3DFF96C15E4380
          E11F3049CC3FF4828119E8CF4C17690625514E8659FB9F315C7AF49541539A8B
          21CB598AE1E9FB5F0C53763F61F8F9FB3F439CAD388391022F8A9140AD287C86
          79079E335C7EF295E12FD0F0D5A75E33B8E90931982AF3316C3CF386E1F6CB6F
          60C32BFDE580ECEF0CD79E7E63D874EE0D83AE2C3783AFB130C3CA13AF500D03
          F2302C680A5164E0618708BFFEF49B41538A8B414D828BE1D5E75F0CAF3EFE62
          90E067659011646790166063780912FBF48B41459C93414B8A1B28FF1B68242A
          8298842A869507F41003232323302523A44162081E300701A591F92036461C80
          046158948F95E1FAB36F0C9FBEFF6110E763631003E2171F7E333C79FF93E119
          30EC3DF559C162775E7E67F8F6F33F83182F2B4C2B9CC6EB8330735170849FB8
          FD89C1DF44041C147A72DC0CF56BEE83D9DAD2DC0C7E46220C171E7E615873FA
          1543B88518DC601803C553BBEF0193024C8602DA5589156E2E5E1F5060075CEB
          70B3E03FC353B8DFC866FC7F8CAC152588181918338092CF80983C0474E0FFFF
          4C2033C8D33F327501006D9395B61ABEA04A0000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000018000000180806000000E0773D
          F800000006624B474400FF00FF00FFA0BDA793000001A749444154480D636018
          050442801159DE7B6D903723D3BFC9403145202607DD6360FC9FBB2560E33698
          6626180344030D9F0EA4C9351CA8954189E13FE334100386512C000ACA0231A5
          481ED900740B90E530D8ECCCEC0C2A02CA18E2F80448B2408453982149278181
          1440B405F15AB10C539C2631E88AE83074D9B53308710811650F5116680B6B31
          84A805316CB8B391A1E35437839AA02A43AA6E125116B010A30AE6DADB1F6E33
          1C7B768241FC9A18C3DF7F7F89D1CA409405175E5F6078F5ED3543A1513E830E
          308836DCD904E4BF22CA022662547DFEF585A1F04009C3F6073B195CE59D19A6
          394F025AA44D8C5606A22C3095306600E17957163064EEC965F8030C9E209540
          A22C202A88CC24CC183C14DC189E7F7D010E9ABFFFFF30B0303153CF82B5B7D7
          311888EA3374DAB6810DFDFEE73BC3D21BCBC16C4204513E78F1F52543FA9E2C
          8620D50006395E398669176730FCF8F38390D96079A22C00A9FCF7FF1FC3C1C7
          871978D8B889361CA48F680B408A5F7F7FCD00C22036B1183515FD677C4AAC46
          3CEA1E23CBA158F0FF3F633A50F219109387400E64FC9F419EE611AB0B00A5D7
          73849BEAF1800000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000018000000180806000000E0773D
          F800000006624B474400FF00FF00FFA0BDA793000003A949444154480DDD555B
          685457145DE726F3B83326269968D4386A118BF840B10A111525048B63C5FC28
          141431118CD106AB06FB53F0473FC452A90F7C4545F047FC287EF815637DB520
          6A62345162413199C471CC6332EF7B67E674EF1BEF646226A2FED9CB59E7EC73
          CEDA6BEF7B1EF7025FFB23BEE8051A9FFC00883DE4BB80C0A5058AF21BCAE75C
          E74E263E2F80940237DA8F02B2CE6DB76045810392D4EEF487D1154F9085C3A8
          98B79F0D139F1E80C51BDB4F42C89AAAC985D83FA3185A2A85EBBD21BCD51268
          A220CDC118A088F5289F7BCD0C906B1A1F6D59BCA9FD048BEF9CEA42FD7417DA
          C371543FF3A26728F361F794DC4D9DCF08C0E237DA8E93D38E5F28EB9AD222B4
          8462D8DCE6453091A4E1516549E68892D9196593B8EBEABD0B345E6B8A3FFEB8
          38518D6DE1D6C09801240E28072B7FFDDBF9E09F2D75E3EDE0CC9FD1B26C1D3B
          734390AA078474C9BA072CFE765AE7A96DCD285B386F16DA887EDB17C0EE57EF
          D0977D5988F1BE28E2E87BCB6846056071BFBBEB0CCD56AB9B56E2FB1D1E381A
          5B51DFD18ADCF98B903BA10815D05021344C1229A2013D50D028AD6882ED989E
          71827872C43165719FBBF3AC10A872D4AE81BA691592CFBB10A83B87D3DF3871
          7949296A972EC2EC3C15794E1556EB507EBA96C460388A702CFA4849C875EB57
          2FEF6671C688006FA66DFB4340FEF4A1B80C45212D39B875A81293664E45FE38
          07FBA621A544381283DD6E83D7E76FB1C602651E8F27CE84F426FBDCD5952C6E
          DFB06C28F3973E0CEE3D0F1667E29BF2D928749764150F91F80457014A2716C3
          A9AA0B75B5A0867D18E90010F839674A111C3B3D48B2F8AED348D1ED6412E35D
          D94C6359D836C199B378497121F21D0EF8FBFA31CE6907BDD08F26673800F09D
          A5EC5B404F20B8EFE208712647A68C87CD6A61D340A6789EAAC2DF3F8014295B
          2DCC91730C12559901400C687F3D45B2A78FA6C62E638967F3C80CF050BFFF02
          497F201B0F6A7700714DA7D7973097253373D349D37536F9EA704B07D868A892
          F83DD9DD07ED767A8E0687CBC4BB2F100C478CD352E22A443671660F86229404
          2EB1CD50B862947436FC495F9123C9E75EEE8E42F1BD8E139158ACD56EB3209F
          EE807F20402B2A47F00682614463F116BDB7A0C19C4807E0010A522FA1ACA3CB
          7193FE58511A8BD0CFA54908B1B6B4E3CCAE1CA978BCBEDEE6A7FFBE46244ADF
          7EDA544E371ED78D4D1E08861E89845CBB71E35C8D7C8D425A46FBC9D5952B6D
          569BABBF4A0A514D4EF309A0FF5CAB8068F0E559CF6F5FBCD8D8041EFF7FE03F
          960A9800F90C08D80000000049454E44AE426082}
        FileName = 
          'C:\Users\jorge\Documents\Desarrollo App\Generar Datos\Icons\Cate' +
          'gorias\medicines_24px.png'
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000018000000180806000000E0773D
          F800000006624B474400FF00FF00FFA0BDA7930000022B49444154480DD553BD
          6B1451109F79B9DBCB25E7C5801F452C2CD414F73F88414C04458D8A120B4150
          218595A0A5D1CE5A429A888D202C881E828D45B008580BA2B1B211D4CE3D1293
          CBE58DBFD98FF0EE76F7EE8A18709979F39BDF9B8F7DB36F89FEF787FB3DC0E2
          D1FA7132F23E8917C393B73E9F7F97F879D6E46D74F26264C6E58C6DF7DD3D17
          F7D560EEC45281892EBB894234EDD77CCFE5B2705F0DC67E061348DE0775656F
          D02C9D72892CDC5703B3D5F6F6CB4921367229C17996F336125EC710B4BC1FF0
          47A12DCBB666C47C022E4083818D918337BE4DAC03674ACF1334368B2791A9C5
          4988976F7FB9F8552D38956AABD4985290A73D1BE0635E4D920DD9D72166FB26
          B45898EC15985CE9DAE0D9E1A541629E8EB3458C7DA5D8B6286AA40ED139FF90
          5F8E607AD539A6D998D92A063A9E6AECAE921D985D1C8F6AE3647FF001B570E5
          F7F0E02462EAD094746D803FF79A935101BE0F0D05C543AB0BC6A43F61660337
          4E63B7558F1D0C7BBF40686198AEB2E695CA07AE7F9C5AED8CCA3D413054D4DB
          1116C738BEE34D9E742683BF037E0CFCD06673ED34EC4B689BE4361036338C8B
          A9D128F2E2E6CA85C78A5D7D7AACBE5F58EE2A27C23AA65483CC5B345FF32B28
          7E561323E5E8CB46CEF62A4CE1AD8A8933CF8FBC4D2E444C11659EA0BCEE8DDA
          023DD22826B67B56363E28EED42AF8C678E99E9018DD6B4A73043680EE9E60BC
          E966B24073C4F420BDD383117AC8B3C875C2C2A339FE8EC37FDE60C7DF78D70B
          FE05112687E12B0D15C90000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000018000000180806000000E0773D
          F800000006624B474400FF00FF00FFA0BDA793000001FE49444154480D636018
          05C33E0418CD3DFCBD18FE33AC06FA940B88A989BE3231FC0F6161646034FBCF
          F09FABAEAC08ABE14D5D7D0C84E48E9C3EC7A02023CDF0EBF76F86F71F3F3218
          EB6A3300F571FF6764B26081992A252D0D6362D084E42E2E5CC1A0A1A6CAC0FC
          E737C38E0347187C3DDCE066C02D90101664F8FBF72FC3992B37C09226BA9A0C
          CC4C4C603621391B736386DFBFFF303030323118EBEB3180D483350209840522
          420C73D76C66B870FD36509881E1DDC74F0C8941DE60B60401B9506F7786EEB9
          4B8151C9C0901519C800520FD60824E01600D90C272F5E6508727300FAE41FC3
          A67D87E11610925391976198D9540E5286815990453E7CFEC2C0CFCB03B6E0FD
          A7CFC8520CF8E45014A271502C80C9313202831344C00490689030238840120B
          CDAF86F34072AB26B4C0F92C7016900172FD47A02FFEFDFB07F60950088EF0C9
          2D68AF01AB5BBFE710C3ED878FC16C1881628195A10EC3B683C718FEFDFFCF60
          A1AF0D5303A6F1C971737182D59CBE7C8DC1D3CE12CC86112816C405783128CA
          4831809283ADA9014C0D98C627075270EFF15386176FDE61380C6E014812A450
          43498101045EBFFB00A2C09818B97DC74E3118692833FCF8F51B6C1158239080
          5B70EED21520173B2246EEFDFB0F0C42FC7C0CE86AC1851D30C8D701130E3B76
          E3C913FDCFC0F093E93F632079BA47750DA910000076E7CDEE429E8700000000
          0049454E44AE426082}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000018000000180806000000E0773D
          F800000006624B474400FF00FF00FFA0BDA793000003E949444154480DE5545D
          6C9365147EBEBF7630DA32E77EC46518C2604E61321A49161785C99CA817629C
          C1A98931D92EE4C60B8DCE9B25861F1334C60B9519D4A4A086250A41368D8996
          6D10B6B502FB292DDDD649BB9FB2B576EDB2F5FB7D7DDF2FD698B11F907865F3
          3EE73DE73CE73CEFF79DBE2DF01F7F843BD1DFE77A69B76D97A324D27E7D7829
          1D6E2962A57C83A7410A7922C9B42C5B2441E84FA9737B7BDFE81A59D8C72F4C
          DC6AAC0C1B5F5A454B96018DAFDC5C595E68BBDB53FD49CD57DB0F3FEEF8A7C6
          BF7A83C6338D25E3D1A8EFB91D7B458E2A88BC646A866E84F48EAB9DB1B42E7F
          58909F7BA4B5AE55A7B4C9DD9679F1C42B9E92C28DDB37DD5362F68DDC0881E7
          78DC97B71ED726AEE1175F87C1138439417FF0B647D4F0DDFEE77543AFC888B3
          1322B108A2892873A16A1A3455E1EDAB6CABDDAFBB6745337B8BA69934F3BF7D
          D1776CF7966A6E2C3E8EC9C4241CD90E54953E028ECD8AEA9415DD8FBEF000E6
          A6E70ED0102B8E88D0DB82E9E8A3308CDA0B8AB5DAA5173C949D958DF3810BAC
          DF44091D556D798DE90F8407D11F1CC0A59ECBF3C4E0B62D3B22D2F6A41D5313
          5E10E3678323FB8FC5B5F287373AE119F19A6219139C08623A358DB49AC695DF
          FB3078C507107C347E3C14587E44BC7898166E61422713225F58B4951305098A
          A66097DD022B7DFF9F661418B4405665F8C23EC871198AA27E30E61A6DA2692C
          7900F9F1A92A2ADEC88A128AA19F92ADD233F7964224068E6C284065B113A0D7
          53F0B4E19C2C4114448CC726E01F0CB48CB946DF647D0C8BFE55905F1FCB8296
          D5460BF2286015385E29AC804392B073CA8D4D98050C1D9056A37F3E8DB2076A
          41EF3FA2D763E77CB997EBE0A68FC61A29167F83B4ED3DCA6DA630179D04EA67
          7BC174CD043373E318E65721A7EC69042787A0CA46327975AA06ADE6C4588509
          F380A603DEADF4919EE078B2A7746D600C385967B2CB98B8E52E78729CD0751D
          9E612F5967CBDF71BA755059D822BE7DA8A79E10E3382308E190926DCC5D1669
          DE8ACEFC2AE8BC004FB007796B724FB4EC6BF12FD62466C9D259D9A2A9949428
          10995B8784E2C05ACB0C0B6F82467F3AED0E27CEFA7B601082582A964A6E88BF
          7A53E15F09BEB9795B82FA1D14E62254C037536AFA0B8D4E08797F641E472F75
          C13F1640281A42C19ABCB7DC3BDDDAC2DA4CCC33874EE614DB33F025FEFE7E33
          29B69F1FFA23FDECA7DDC16E7FAFDF5F9C5BECCEB5E70C7DFEC2D1CF18B91444
          4608BAFABDC14B1F539FA3C0E8EC7A24157BB75D4A7601E422A05FE4F6B44718
          57F45A51A76A08D9DFBCEC0AB378259882ACE89D83BD5EBA5750988B235CFDC1
          779D5F9BC11D1831D3CB117C4B4715E708F9C1E0B933879A9C2319EEFFBDFF09
          824D8C096EE78FBD0000000049454E44AE426082}
        FileName = 
          'C:\Users\jorge\Documents\Desarrollo App\Generar Datos\Icons\Tipo' +
          ' de datos\Payment_Method_24px.png'
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000018000000180806000000E0773D
          F800000006624B474400FF00FF00FFA0BDA7930000011849444154480D636018
          05031D028C3007246DFD6AC2F89FC98B81E93F174C8C2CFA1FE33746867F5BE7
          F8709F05E9075B90B2E5AB310323E371A0002B105303FD065A6236DB9BE70213
          D834262677204D2DC3814631B0FE6360F604315840C4A36DFD6E1F6F9F0431A9
          86F955CD418E6E87F8806AC6621A44730BC04124E7997F80C193D11ED37E4A44
          FE1F609852C500B600648C831C0B83BD3C338849313EF8F02FC38147BFC1E6D0
          278840563DF8F49781E121884539069B0535061E440F3EFC6778F0E10F54987A
          14CD83884E163032FDA25EA0404CFACFC0F413C482F8E0DFBF9D400E245D0119
          5440BF9918FE6E0799C308224018545C3331303A3202AD06F1C9C5FF81C528C3
          FFFFFB60C535B9E68CEAA35E0800005B2F435F97B71DFF0000000049454E44AE
          426082}
        FileName = 
          'C:\Users\jorge\Documents\Desarrollo App\Generar Datos\Icons\Tipo' +
          ' de datos\Credit_Card_Number_24px.png'
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000018000000180806000000E0773D
          F800000006624B474400FF00FF00FFA0BDA793000001BF49444154480D636018
          05044280119B7CC2FEFF1C2CDFBE2F05CA7900311710138BEE3130FDCF9DE3C9
          BD0DA68109C640A659BEFE8806F283809814C381CA199418FE314E0331609805
          C640A6DF5EDD63FBF7EB07642152D8F2C88AB15AF0F5F165858FB74F22AB239B
          8DD5026E59DD071C42B2F6649BBA73235C2B560B84759C1E2808303128F031C3
          1512CB38F0E80F50692C104310560B405220C3EDE5C9B500640204A3245387C0
          AD3EFF19192631FC6750844813265958991964D584191C83751998599818403E
          98E3CDC508D389E283FF0C0CD38086CBC22489A1FFFCFECB70FFEA2B866FC24F
          19F8D42431B4A058009425CA706591070CCE1A8781CA1918DE7F1360587DCE97
          E1CF979F603E90780CC470846E015C021FC356E5244394C97AB812900550CE53
          604ECE80B2C11459168075A211EFCEDF6F5C57ABD5C08006C8B2E0F05D73865F
          7FD8C0467DFBC509A67111645970F7B5020308E33214591C6B6187AC80523686
          0F0E14800A5106860527C2C1662758AC04D30E13D631E093032BC242C0330448
          CE3E70EB13202D0DC424A3FF0C8CC987D67BCD43D788124440DB80498CF119BA
          2202FC3FC0DCBF96FB0703A88222A074541A4B0800005BF16DCAED1EDC880000
          000049454E44AE426082}
        FileName = 
          'C:\Users\jorge\Documents\Desarrollo App\Generar Datos\Icons\Tipo' +
          ' de datos\type_cards_24px.png'
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000018000000180806000000E0773D
          F800000006624B474400FF00FF00FFA0BDA7930000037B49444154480DED944D
          685C5514C77FF7CDE4CD67A69338F99A696792989A80ADAD21CD1412C9425031
          5241A9A08282E04670DF85A02B578A2068451005CD4E04A9ADD88552B58BD4D6
          96B6D686349D7E98C44C1A93992633934C32CF73DFCB3CF361695CB8107CDC73
          EF39FF73EEFDBF73CE7D0FFEEB8FFA27095827023BA0F29AEC19041504AB20FA
          1130DE5403C59BA26F1A5B26B0BEF73F8CAAF982C8FE08C15DE0F1C34A110A17
          21379CC32A3FA5064ADF6E64D8128175C2DF8632CFD3FC6C1833B1F10C589A80
          A9A13C6A79B7EA2FDE581B60AC35EEAC5B87D8965E3DDC821B6FC1F87B30F991
          B3C58C43241DA15239E4007FCD5B246090D06E67D7F2BC94C78486A7A1E97907
          D37350FC65EB05EB7DDAB55915A3AADC656DC45BEB84588B425007F3E724830F
          A5E7BACFE2D27EAF11C2E0AC75983E41ECB155822CCBB7ED0D281F84EF87BA47
          E412490BCBB30EAEFD4A5E22F97804C567D6BB48A0DC2FC77BD7F9280B179C20
          4F406ECE15F8ED1DF06F075FB38317C4EFED80C67D106C69C5E431EDF0EA69FF
          DBFD6F08EBEB5ADF2895E50A3DDF9538FED069EA03EDD8B7A8F199F561FA16E5
          CF0AE18B824B56A184BCC46497185FDA04A2B8A3BFB38F07DBF6BAB656A68BB7
          185A99E5A5EC07846AA53CFA3BA889822E8FFE0EF4E1E60150111DEE7C1F8ABC
          365C029FD7C457E3A3BDA9958D4F6161819397CEF06936CEA3F1095ED97E8A96
          40490E0C4BC3773A6F5E3D7C710E2B3F6A491EC7F5392EC19ED63DA43B7A35B6
          4E32D90C5FFD7CCCC654C0E4D8A4C1D737EFE59BF865EE49F541ACDBF6D95339
          0F99CFF9A1183A37F0EAD298C65C026D68292E15B93C3E4257A28B80E967F8CA
          4F1AB6C5F01898211309E1E0CC2E86421769993EAD9B2A6559A4727B8CC39507
          F824B7320782CBAE4D04FAF01F474EA29462AF6435B720B112B8769892497159
          F171C7CB58BF5F252F926AD9C17CF2397EBD3686F1C7A55FAAF19B08BA129DB6
          AF33EEACF5E13AA672591B5B3B35C79A48D626C94BB367895249B4D1E80B311E
          9CC6F07A66AAB14655A9AE013360DF225D1E8DF5FE4D5F349EEED887A10CA281
          28DDF775531FACC3F498DAB54EDC0CCE5FBFC0C8C4284FF60CB22D1875835A1B
          521CE87982E1D153DC9A9FA1211C23BDB397642CE9C66865564A79E4CC5116CB
          F20BD7C0AAB804A572092D57A7AED919ACFAED25154BA1C536EE3065A633E40A
          739BBC2E41D5A31BACA56AFFBFFEEB15F813F9BB0392263B70D6000000004945
          4E44AE426082}
        FileName = 
          'C:\Users\jorge\Documents\Desarrollo App\Generar Datos\Icons\Tipo' +
          ' de datos\type_of_coin_24px.png'
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000018000000180806000000E0773D
          F800000006624B474400FF00FF00FFA0BDA793000000E149444154480D636018
          050442801126FF7FA5AE170323E36A209F0B8829415F819A4318C32EED00D20C
          4C20028219CD8034A586038D60E066F8CF60016280309205202EF531CD2D80C7
          01C8EDFFA73334303032D483D864E3FF0C8D8C994073A006D0DC07A31640431A
          37351A44B8C3062A4376105D79C6C000C27FFF3130AC3DCFC000A2A166A25064
          5B70F62103C3D9470C0CEF8045DBC9FB101AC5642887054A934C490940B488F2
          A2D2101E82644230C963EDBECEC0E0AAC9C070F70D76FD64FB00642876235145
          517DC0C8700A28FD1388C9453F1998194E92AB7984EA0300F6D82689EF2864BA
          0000000049454E44AE426082}
        FileName = 
          'C:\Users\jorge\Documents\Desarrollo App\Generar Datos\Icons\Tipo' +
          ' de datos\product_24px.png'
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000018000000180806000000E0773D
          F800000006624B474400FF00FF00FFA0BDA7930000028949444154480DED54CF
          6B134114FE66379B505A62422305D1404C631441EA4D44040B5EA49AD622B909
          C1AB20F837789142293988D26A413DD48335A955F1A00511412F1641110B3516
          7F50538B414CD2C4ECF8763BD9CC66078B7A121CDE9BF77DDFCC7B6F677613E0
          5F1FEC770F309ECC65282929E5FDD0199FC8BC1E2A40317C0AED971215BF441B
          0C72C71ABA5625728EDC633E8FB281504BEF7C0AF003F2366DADFE082F65A585
          5D0D0672A923E0EC0E2D2F9267670773593070C28ED50662CB0E11C004BEE0BC
          206D4193F96C2A7F8FAAE549DB4E3E766B26F18DDF46917C9AE7D14B1A75E311
          2BCAAE41EB96B98C3599584F7BC1983B7B92BDAAEC6145CCF34827AD5B0587A0
          E119CF611B038B93E632CEB8DDDC250AE213D10951B33412D54B1D27F0C6D104
          08AFFA9317837E6C3DD64BAF5A888512C7E30FE63EA257C83DE63E81B5CC70D8
          0A2A5F0C1CED8F6D62A0268E27C20C1AC3607681075439DE06A08B52EC6C303F
          5E749E0EECB62E4C5AEFA03B8887D866BE5ACF48B2039983084C77A753D1836F
          4702C16A82A8CBBEEA711483C7110FB9649B7CAF030BEFCB9FBAEE3EB80AAE3D
          195E999AB117687235B819493F24ED10F9DFD8DCF0CA8DFE66013A6013DA7733
          1A3502FB19A0BCCFD64E35A24FBCBA545F1B9557A9964C81E5E8A9E7A4F4917B
          4CDF4225486D7CF4A4916ADB7CCFD2E5BD36129326622B3014A018BE9889F0B5
          0AC29315E85153B1832445AEA701E3AC80B661150F4D54E9F7CAA1F57084C7AB
          CA26AA5C4F0313E6BBB6FAF0ED3051BE6E387279CA80B1CB7B0A65AE932580FD
          144C1011AAF7D7BF85AE33355B294FB69AD98298EC5C819BC17302A66B05FCE1
          50E5AE3F9A54D040BD50832E292DF8B9CFFAEF6BF17664E5B66BFFF98637F013
          D70AA937FA9EC3A40000000049454E44AE426082}
        FileName = 
          'C:\Users\jorge\Documents\Desarrollo App\Generar Datos\Icons\Tipo' +
          ' de datos\product_category_24px.png'
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000018000000180806000000E0773D
          F800000006624B474400FF00FF00FFA0BDA7930000017C49444154480DED54BD
          4A0341109EDD0B762227D6C2E505B4F2AEB2B3162C7C0CD388D8A6B30BA9F202
          A98D8F10B04A6729723F012FA02026C4FA72F966618FEC5D62CE2D25C77C3BB3
          33F3CDECCDC212EDBE2D1310E578B3D93C5E2C161D21C4396247401DF942FE33
          70174551B84A301A70F13CCF5F90E00236F2ED38CE491886A9264B6DB0E69343
          DB1607950EB32CEBB0A16134C02F5E7020080262D8D8E0A81AD04A8C06F0EC03
          E4FBBE828D0DCE015048A3B03618DD6E776D6493BF9C6C5CB2E7797939C1669F
          244951B73C229B7ABF722A0DFAED0F1AF652BAB99E2A226B066F5833D6D9C3DE
          3BF5DB9F1C325069D0C0AD08F1F749495492B2CA2B66C56DFFC71DF09FC471CC
          CA405D9F41C20693C3BA415AAD163156C3BC676CF3E9B8A30DD6AEEBDE42EF01
          341A8D084F074D26134AD3945D757DF3D96CF6A00858CA97FC04DF25602D38D4
          00E3BCD2058C11E1A9BE47600AD80A73B946C1371A8CC7E3579CE0148D1E91F1
          03D49539780329E5194EFF5697B4CB53135802085B8FC411D5904B0000000049
          454E44AE426082}
        FileName = 
          'C:\Users\jorge\Documents\Desarrollo App\Generar Datos\Icons\Tipo' +
          ' de datos\measure_24px.png'
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000018000000180806000000E0773D
          F800000006624B474400FF00FF00FFA0BDA7930000027349444154480DED53CD
          6B134114FFBDC9265948DA8A9AA8C54FD096C6C48A967AF2D08396E245117A55
          FC27B4E821178BFE015E040573512A78B3A2224AA17A88A5F45015A5DA685BC4
          606D1A933669769F334BB261F3D5D07A111CE6B76FDED7EFCD9BD901FEF541CD
          3470F9C6DB3661F275193B20A1E6A829E8DACD2B3D29A534C2BA05A2D1975ACE
          E31F972447881193124CB8C0C4937A2E73321AED2B285B3D68F51C25FB9AE653
          BBEE05F8FCF0D5DE47CA3E341C7F4E4C0FF3EE967EA93F96A83B455D4FD1C124
          3AD4D29BF73D5352C170E59E2A293BE954B2119A28C0EF1541CE9339ADA482CB
          F0F62BC964BE53B2111C7770E7FE871E41625426042436329324C4C0C5C18313
          A564470744E2AC746C945CA62200C3541C6A6DC159001CB6AC9BF8309183C351
          00A0C826B88BA9ECE0B00BDC1A99F6CB88FDA818B7EF4D61399DC397440AB107
          D348FFCE574454A90762B1295FC96ABF033FB49009D8054B014A2EA572187B3D
          87537DFBD0E2F760667609CC8C95950222A1AA2B1386470FC9BCB84499900DE1
          684D394B50E4BBDBFD68DFE9C7D7F9342626BF239359C39BF84229C429A9CC65
          EF583EFDB033AAAC29F2C4DC32923FB3585CCC62EF9E5644BAAA766E27104C9B
          CB2E201F846DB4238B8B63DD3BD01D0E626CFC1BDA5A75CC2FA4F171E657D15B
          2D18E53FC9BE03066A1ED189E3BBA07B351C8D04E1D604B66ED1D1D5B90D996C
          1E9ADBDE9FB30A97FF24B971E0EEC8A70099FCC319555B5B5D2DE0C98BCFF20E
          D4056FB73AAB15C9828297060F25AD0E5C4C6113B2875A9115365DD770EE4C47
          85B55A250387A5F595D5239B46482A7F77122C4EAB80499490ECEBBE2019D3EC
          CC83CC59FC1FCD9CC01F1B50B08B91E826020000000049454E44AE426082}
        FileName = 
          'C:\Users\jorge\Documents\Desarrollo App\Generar Datos\Icons\Tipo' +
          ' de datos\weight_kg_24px.png'
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000018000000180806000000E0773D
          F800000006624B474400FF00FF00FFA0BDA7930000029A49444154480DED54BD
          6E134110FE66EFCE71FC174B315290122541081A2A244445418B48441528A879
          00780040D47981F000D006C44F43850412050509048890023120881196EFFC13
          DB77CBCCE62EF685039B502161ED37B333DFEE8C67666DE0FF67400728E2EF7D
          F5267CF22F10A90E40AF9BCDEC9385296A46FC7EF56E823B5BB50D00D38C7051
          035A3FD4A0DBB6D37D76A658FC40443A248756FD09CEF2AD9B8C09C67E579BAB
          5F01E91BF3A5C2B204D94D20C6F2566D911D9765FF97E812829373078ACF557F
          2005AAF5DB7FB8AFE6BDFC28DF5962D81AEA226BC41204D09E38F707ED9E9EA5
          16111E84F70F8BB64544201027E8CD71F1D2E3884AD457964EF5F9C93546800A
          B8CFD02889BD2741E0F1AB11BF413C8071FD4E7886549C80BFA3268C8B1D4BA0
          892B605288089B6FAA28BF8D8F66F2480153478BD191506BD76CDA9CC0E1B784
          840A02A87AC3EFE285DB422B0830917260FB7B327294ED4063BDDEC6A7760701
          DB336907B3A3295341F360FE7BBAE2CA3EC514621590EE569B1CF0657D5B38BC
          6B768031207B620C19258D051A1C7CD5E7B0D5BA392382078B43E95455F60B44
          FEDD8A778E7CDFC43642084117CEC79CC541C560D4AEAFB204E20D322E230A57
          8F199D5716B4D26563B0982BE51EB132CB3632142BA5CC97E315B7AD885281D6
          880284F42F55C6E2F7A75539E980DDEFBC4614F07FD2676EC7B4C7AD12CEDFA8
          A3FBBED70EF1D9D359583359D91A642DC5AFB25781718622F6430B7DE51C5F08
          F743A99CAD600D53C14E345DCEF425906F2AD8E1926546296CA783CD2436D622
          39C0DDDCAD201AB2F893203372F871A5956ACC17F2DF92CEFC948067BB3639E2
          E055BD35D4906746CD735F4B0A2E3ECE2FAA87FBEB7AA433E6DEE2B73DCF5E8B
          3160E94D52747E6EBCF074C0C17F94FE014336CE52ECD5B8ED0000000049454E
          44AE426082}
        FileName = 
          'C:\Users\jorge\Documents\Desarrollo App\Generar Datos\Icons\Tipo' +
          ' de datos\measuring_cup_volume_24px.png'
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000018000000180806000000E0773D
          F800000006624B474400FF00FF00FFA0BDA793000002FF49444154480DDD554D
          48545114FECE9BDFD4208310529A166644666A5AA2A99546206298FD5010B4E9
          67DB268230A3652B17419BA020A128A188C4363A8D0C1A916E22AD104622D392
          74D2749C199DDBB977DE9B99F79C14DAD5E37CE77CE73B67EE793F73DF03FEF5
          83D6BA00E1731F8210A741A8016853BC5F84384E33FA41A21BD591E7448871BE
          C2FE3840781DC5D06C7701B1C7F85570391B4F832751E0FE80AA4C9F21CB3882
          9876810E86FC324905A52606173E5713F3270C272361C703DD185A2857F983AD
          2DD6214B7C3567A926F24835E84ED36322883E4729278F19A6C539C768B84006
          85D1C52457026087A07BC2EFDAAEE72AAC1800A1B573C5D5B5E8C199601D2EFF
          ACC4AC70B0045CCDB981F5DA2CCA335EE3E8864EA58D0F17E17D4F03C20B5932
          7723466D921830DD22F1CA510ED2DEC8E2A999C358107649713E63044DEE3158
          0FB9F8CBF66B4ACEC9FF88C62BD799D30CD52E6E64A2CC7205B666A5B2F3D87E
          B18FDB16FB5C9C587C70222FA1042772752E5C3A51217E8A8AB22351CA5E596B
          D620BC91CD908B17DB7F28CDEAF22BFA1018ACC0CCD73CEC6DE930CA634839CC
          B7C8E71AE25A09E3EF4D88363A10B9692CA019448FD97A044663C0C03220B754
          425C934CC019B99DDA651D30AD8A72F1FB51A06B09E8E0A8C435DD17DE07F554
          89F81A7ABB754040E9534205E5A6F84A1459D5F5226A2FE34D366CED320F10E8
          550DC52C7B186ECE8ED8D9AD6A9F301F6EA0FAF96FE9BACC0FB9675D2EECB100
          37C67716138B4D723EC028646C63487B47B5E12249D2814F3329535D689C5F6E
          0F938A894D22EA2CE4C58E2133BC93FBFAF5EA2EE175CA817A6A0EA601AA64B3
          B5720C322C46BD543FA7360495210AA2678906D24A12DC42560CA0FDA1CF7C76
          97B84F30524C948AB7702404817D094E22EDFD9775D3339082017E655F647E87
          91EC21F821D0C9675FC51FA1135C93360547D8C37FCF904CAC48FED85AE15C7D
          CD20E4C6D9C1693A5B828666AA0EBF485794DAAA036483F0F27BDEE66CE477FD
          3900BB19798CEFFCF9F4435BBE45D5D141CEFF63FB0D524CD6289BB14E650000
          000049454E44AE426082}
        FileName = 
          'C:\Users\jorge\Documents\Desarrollo App\Generar Datos\Icons\Tipo' +
          ' de datos\color_palette_24px.png'
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000018000000180806000000E0773D
          F800000006624B474400FF00FF00FFA0BDA7930000038B49444154480DDD544D
          8C144514FEAAAB7B7E7A6667D89F195876960DBACC8A1A8359B27BD0258BAEF1
          27C4C4C483668D17EE1E8478E0025EB89878F082074E12830712200436515836
          245C802542A2F2135066E6E032ECCFC0CCF40CD35DE5AB1A7A7E985D43F4A495
          F7DEF7DE5755EF75E55535F05F1FEC590E30BAEB930766ED516FEB5A37107B30
          7FEA48A2955BCDFFDB0253DF399B3CC39BBE3D7FFD6074F90A224BD7748E52F7
          36147B46B165F4957D5CF0EFCF7E1ACEE88955CCAA05DEFCA19286EB7D2D19DE
          A53DC6E2C23216F3CB184B191402977202BDC96EAD4408D2331CFCF39FA643B7
          C96F938E0253474BAF0A81F3B42A4EDA102925BED89A8724E6ABDF1260AC636B
          41404ECE4D477FA6250DA97F52230428F9B714B625A75827745C17959AAB7DC5
          3DA5710E76E8290E6D9F3179A4326C185EC731FD4DE1DC05ED3AA91D1A57359C
          0FCF7E14BAE3CF19BEA3D060DE94C27FA34CB4E7682B30912C7D3C60D7FE717E
          D59664C87BBB3581D91A58374EBCBCFBF5D7AAD20CC95F566CAB2AC05BE7B30F
          AB3A1C1C78A8D137DC6062285C71FA6D37945F2A4C1EF527081B3DD8FECEFB23
          5CB21BC461D3600AE9E1E7C1795B7EE40B45358D443CAAD1375248FCB9B080BB
          F7EEA1582C417263E4D299E3B7D47CE304A66413EA0A2A3293CD2193C9397405
          C22AF635D65B7FB85717F33EE563859C10695D849C20471768F44042BE416453
          989CC3330EFAB039B40C433673194D9E4DA23996C8BD424A771E88F7AD576E9B
          C61349E8496219E46502B58700EA31EED40E195D60ECBD0FD2E4F793D6856196
          3143A8805B0144E21DEF0E763406D3B2D412AAA3D79ED741DDF48FBFB56B8B72
          7501C393DB54E02BFD16CEF9BEDD1543A5586FAECF29AC380EECAE6661265963
          8F9AA746EB9CBAC97CA0672626C2BF960B2BC5AA53368510A7A9C1BBB969A1AB
          BB0F0B993B6A4F9B3EA246278736A3545881F05CD48477DA32CDABC1B0EDDAF1
          7551A72467D4067D820D918DE39158FCC5C4E0D058EA8597F65CFEF164564254
          3DB786FBD9DFE13EEE7C7C6EED31F2D93FA0D6D035ADCC9F3D95D998DEBA57E5
          50B9FAFAD78DAB02A63296256FD63C1CA2668DF494EF5F545C80050F236C6EB6
          CC603A10B41505C6794A399158774EA152E26E95DDE261E5F39EC045B95C9D05
          BD2721DD9B8A63CAACA51F7EB6EF0080FDA45AAAE592C6A01DD1F8C47C79EC9B
          8307B0C630D7E035ED49EF38077774A08C613CA780EEE15D8D64A4811982FFB1
          FC0520832555836F6E5D0000000049454E44AE426082}
        FileName = 
          'C:\Users\jorge\Documents\Desarrollo App\Generar Datos\Icons\Tipo' +
          ' de datos\Clothing_24px.png'
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000018000000180806000000E0773D
          F800000006624B474400FF00FF00FFA0BDA7930000019649444154480D636018
          05C33E0418917DF8FF10BB37C37F465B6431D2D9FF0F31DAFFDC06D307B7E0FF
          19065686AFECA7801206404C149AB6DA98C1CEE811838EF26B24F58C6719B87F
          58329A30FC0609328188FF07D9DD18BE721C07B289361CA896C1C6E009838CD8
          27101309FF37069A750C6C2650146C010303A3150303500228702FFB27C3FBAD
          7FC018C4060A318068743190386EFCDF04622603030BBA22412F66060E3588BD
          8250496C6220A90367E5189C4CFE3308F0BE62F8F59B91E1E52B1606596970C8
          80A4C118D3026F8410A72AD4222C6220DD7911A74114185FB9CEC1F0FE233361
          0BF61EE6016BC04738DB7E014B2347B291DE77066C7A11CE056B61605094FB05
          6511A6B04732AA3E0C0B94E489B700D5286084B2FC4717C28C646CDE04E98205
          0B880DC3C8910C12B3B7FC0AA25030860F541489F7017224A3988AC401E76460
          2EE662F8C6E6052C269600E5D8819828841CC9481A7E00F3543403F7AF1DC0DC
          FC0D6C014CF2FF21B679404B12617C42F4A5DBE20C72121F80F9E027B2D2B9C0
          B228055960943D1A029485000099837914DBD8FBE30000000049454E44AE4260
          82}
        FileName = 
          'C:\Users\jorge\Documents\Desarrollo App\Generar Datos\Icons\Tipo' +
          ' de datos\isbn_code_24px.png'
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000018000000180806000000E0773D
          F800000006624B474400FF00FF00FFA0BDA7930000009249444154480DED9541
          0AC3300C04B7210FCB53F289DC0AB9F4D64FE4297E59538F2DD14002BAE45424
          10BB5AC9362C06491981030FEFCFCFF7A441933E2A228E9C9A4403C9AB39FA55
          DF5E4B91C568A876F9AEB562978EBC2B129AF3C108DA99175978CBCAFB211F08
          3D4D8BD2A2D08170207F515A143A100EFC164EDD446DD9801CE37F39A726D140
          D27B68579C99BFC82F323B212A17AD663E0000000049454E44AE426082}
        FileName = 
          'C:\Users\jorge\Documents\Desarrollo App\Generar Datos\Icons\Tipo' +
          ' de datos\barcode_24px.png'
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000018000000180806000000E0773D
          F800000006624B474400FF00FF00FFA0BDA7930000028B49444154480DAD534B
          6B1351143EE74ED2A279D74441B42D6E22DDBAAA58DCB810C18D3B15A18DC19D
          2EC485FA0F8A2E84BA92B4C607B8B02254A41B375A14C5C7A2A0B6A0B85004A1
          896DA60D2471E678EE2457E6663299461DCE37E7F59DF365EE4C1020F82238DB
          5F8A6C8C0983F602510448AC0BB296121BD50584FBF56E1BB05BB39C3A9320AB
          710109CE312FCE68B70A215CB3FBF06A6665C66C6FCADC57A014CB8D22D03D26
          0D31028CBEB0D0896D95E2CB76624781726CFC2800CE32B98FB159AB038A6303
          95E9C7EE018F40694B7E1786AC0F4C8A317AB535CBC2914C75E6BB1A142A501E
          0D6B92E3BF59CE6390300C92F33276A03DC18F487E475858DFB8136238D67F70
          19B69E7CC127E6A4FA8D00AA77F743ED59D65D6F8420BC336EDE5891C53F8B9C
          04AD31F65A4DC4ABCEF2E5AF004FDE70B76587F6016407014482FBAD5ACB852D
          F825F73C94B9B60C9078447B28C97190DDCD0B194E1270B39186A17569EF0001
          75C116A9674760A8194D80083FABC6BF7801F449CD6B02610C3DE546D7BF3EF7
          83AC6680BDA0489A80F3E6091EA8A6F484289D2F3C7DA2D9B879BBA4063C67CE
          8A051BE0B822345EED01A81B2AF5F8FABB21ADC63FA7E02E70EE4E9B7139969B
          07A0C3CDACA7FBFC8079F3887B42B81315DB24CE73DC60F4620D1B48CE69331D
          05D2EB858FFC68D7356640C29FF854DA2C2EB5D33A0A4852D28C5EE2635A9471
          30683169462E77E2F90A204CD56C843C0F051D555D08CA493E733DE62B2099E9
          4AF135229D96B11FB89F4FAEDD7AEBD7EF2A20875295E21D3EAA2B32F602279B
          7D6F475502052431650E5F643FC770DB5CCA1CEC78EE6E127F2CEED43FFE991C
          4F9285CF9931C2788F061D48AD165739FE7F66464F6D2FC7261E99D189CC66B7
          FE0644DEB3CDF070E0D80000000049454E44AE426082}
        FileName = 
          'C:\Users\jorge\Documents\Desarrollo App\Generar Datos\Icons\Tipo' +
          ' de datos\tracking_24px.png'
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000018000000180806000000E0773D
          F800000006624B474400FF00FF00FFA0BDA7930000028749444154480DED94DF
          4B544114C7BF33F7EE0FB55F6A5A6C6DF41028FD320AF365372D415302A95EEB
          21EAA5A2A0CC3F2008147A33A27F408A4A822C74C3072533D6152B88B2327A28
          DB484D37726B97BD7BA733237B63BD5B777DE8A92EF39D39E7CCE7CCDC3977B8
          C0FFC7A1024CCE073B8365868193828942E93B4940C48DB4EBDAD885C1192756
          978091324F08C62E4248CF590C0C3A3752447690FED8B89C15601E392E454CC0
          9B0FAF36C80B6479A359CBA91265457238BAA6E34CED114CCE7DC6EDA77D8A58
          5FA2D75D1E6A5E5CD43484B8D2B6A7EF9C82A8737CADCCE2BBFC5B9130129492
          DD26221CDD975C4A773A5CDA7C8C9FEA0C37ADC850B60D0EED68C0D9DAA3E09C
          C3ADB9D0BAEF1876FAB7A02B7217F79E0F64F2AC3195501751F9A6014CBE60EE
          A4C10EA80075B612793437766FACC2712389E59E226CF355E0E6933E84C68708
          776E1FDF705406CCC3445E27C1B6C18DB1FB30CC345AB6D7CB79748DF620F4F2
          A1B2F3E9E6A2EA444D5707EA969DDE3B386FDB402E223F2427EE6B22EEB8B8AF
          C284A60B99A6A42F5CF882EFAEC2660ADCCAB9014DA8B2C8D149ABD60848D938
          81CD32C665F73795FB043117444C035B49D7A298E4F006331F3866A340A94FA0
          D4FFAB5C32CDBEC17B2FC478919C83A0EF80CA38D806FBFD5700756F47399E3D
          D0C80218F1550D696CAA36952F3B5522FA3B46C8499220DE15A0B4AC1C81FA46
          94AC2E07C897F1DFE9D563CDE28B897F4D3EB149C6C4088D0BD774A475B8971C
          F5F3AA696CF944F65A26AF111948F268F8FCA375D25CAC6E0A48BEC80B8BFFF1
          0DD1B660AFC5AB131067353A66FB97E9290CF587303B3D25E874EDD6640EC389
          A7AAD9B36AF61F0C08D3ACE64244C2FD3DC376223BB2543E3BFB9FF77E02C46F
          D39AFB5312C00000000049454E44AE426082}
        FileName = 
          'C:\Users\jorge\Documents\Desarrollo App\Generar Datos\Icons\Tipo' +
          ' de datos\shipped_24px.png'
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000018000000180806000000E0773D
          F800000006624B474400FF00FF00FFA0BDA7930000017449444154480DED94CF
          4B025110C73FBBA9A4627A8A122F76A8BFC1531174F20FE83FE8D8A57F6089F0
          D6BDBFA04B75EC5C9E430F41502225519404E10FD430DDD7EC6ABA5AA9E07673
          989937F366DEF7FB76E02DCC64CC04B4BFEAEAC2F010E250EABB627D0D46C1BF
          24B982DA0B345E25EE6BAB984B7B93C71B74C5D35D07169535A2B43995CD8458
          4735B94B280EBE082813AA056896704AEBF926DDBC3A5977EEFD2050D9FD04A6
          7986C672AF519B838515F08604BC0D957BF8ACF6CA56F01BB8B5AF5BEEDB54C6
          D811F04B7080EB3E88AC75C0CD2694EF2606171CB9A7E5BBA68E50DDB0BF58E0
          E1D54E5ECE4149083A59CFD79F7AA11D040FFAB8035F60575D769E5178F50F78
          B87EC4D4DFEC36DD6C105F84C0BC9D4EE44612BC57E036DF90B9356C304D7C58
          C05D2388C96D639B823A85EA539C9DE8E88C60EC98DC1F9122EF64759BA0A87B
          D9FA2F829AFC20927E83020E19F9D01C7DE3C23626DBC11499E1465708E485EF
          05529C0F83CFF28926F005439F64C901CDE0940000000049454E44AE426082}
        FileName = 
          'C:\Users\jorge\Documents\Desarrollo App\Generar Datos\Icons\Tipo' +
          ' de datos\package_box_24px.png'
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000018000000180806000000E0773D
          F800000006624B474400FF00FF00FFA0BDA7930000032D49444154480DD5544B
          48546114FEFE7B67C6F16A4E233E4A268AC05022E84969424345A91558CDD022
          82285A44B4AA24DB64D022214248A845508B36D12203C18C1E660465A1151AB9
          28C94A66D49CC2A69AC7BDA773679AE9DE7994B5F372CE7FCEFF9DF39FEF7F5E
          60A67FE27F167074CFA6BC4F15D653E395B67E59D2FA6F36DC7C95AD8E942D90
          0D3FE1ADDD6B094BC393E596C31074552531B8E546C36510324EF65F08C4716F
          5D2B01C7BE17CA0ED52A6C894970E5BDDBDA1BBC89BED14E9BA0C953DB2A4015
          3C4F26C04B63915F7EFD2F6B32D32238EEADDDCE8537E4E0874710952B5FE811
          57D1589342249CC98EC1F92B41B3D79DCF5BD0A649B4BBF97AF7571E5BACF8D4
          F720718C7D9535269C332BE6A4347F250809FB3E22DC6BB9D6F5421FAB21BEF7
          1D3B6E9CE37E359FC915004324C8C9364D2C69482A40E2000F3E988085C0070D
          D242BDDFB1BDBD97ADAE6C328B94198EA38D3BEA5C00CD6DB97E4BDFF3182809
          D1CB87EDC634BF3F124832ADE23AFDACBC13DCB2582B57EB332E69DA55BF682C
          6FF11C9F32EF62A8B0FA24156F5CC6E134E1B3316354E62E8266DD0A22DBA525
          9615DF2D547AB84F7BC88F2A0C8D9E8BF1BB0F4F78369F993FF175A3BBE7E932
          67AE4B2ACE5FA817217E6C8D62ECCE59BD9350130195AD5F0E55BA877CC50155
          C36367081A6F7AF5C7DF3732180A3C7FA3BEADE8A85962F7743D4179D15A0821
          25EA4521D4A5C2777F30012423314015CD70163870FE08B07801D68C128CC5F5
          9CBC1CE752E55BC8DED0D98342C5652CAE87F9D2C8877427A16602881A6C5809
          3C7A013C7B9DC849B38ACD11C30AECA5316B6A089B8CFD1402C8B0F2240253C6
          9C345F709A242CB0C94A5A8C8112D6A470B5A4AF3B9FF1A0AF006AF281EA589A
          AA5A18B2943A3499369CF4D8495D41174627007F804399854843301240440D41
          A568A6A44B46D04C20E334072759B3CA7870982F5884E3844FC1776C4DD20E7F
          F48211311188D13B2380B48E1306585325A221DA160C4FF212E3A10926F34D0D
          21AC06A7F86FDB087FCD4E81EE683C1A6F45DC985B02A797ACAF02E42A48B000
          9A0F24770AFFED313DD3A7B8F66B449BF98ECA02D240AE15ADB3BF8C64DF577D
          D08CD59FFE34FDDD83291D640000000049454E44AE426082}
        FileName = 
          'C:\Users\jorge\Documents\Desarrollo App\Generar Datos\Icons\Tipo' +
          ' de datos\fruits_24px.png'
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000018000000180806000000E0773D
          F800000006624B474400FF00FF00FFA0BDA7930000038149444154480DED544D
          6C1555143EE7DE79F3667C2D581A2D9D5A53A02EA88B2614D20535A492D82654
          A32B5722097F0B09849090B82346176C50533455893190C0C2E0C204AC2CACD1
          A4D5FA53120CD0C46A624B09AF9140796FE6CD9B997B3C77FAFA98D769A97B7D
          B9E7DEEF9CEF9E9F7BEE9D07F0FF6F950EE02A7C8AFEE8677ACC8DC24E10D116
          24EC22802D4074F668B7752AB5990D2B267877CC6B4329AE00C21807FA1685FA
          EEF0566BEAFD1FFDE36B2C3C694A803997C373101ED3B630371DDC8A01E39A21
          6AB4A422F1CDCE26F94C47A3D84D409F2A85BFBF37EEFF4982A87D9D80F6861A
          D7568FCA2F25DD17B1B10892EBE0AF45472AB1A7DB91F0C564A22884B5DB9AE4
          F68E2704483EBB53CF53C571CE85418617596AC6B209BA9E34CF6F6E942602C1
          8EA7B91715173782FAB90215883B830F63C7EC3A1B9A87AF53737F07DE8E0D95
          2995802F31D368473D390E7FDFE748958D7A0923F25D1936FC1128586F1A30E1
          97B4B92AD6E3F20C2BBB58AAA3A691DADAF65469302F7CA9B8FA1F8A05988ABC
          5826FC22CC2ADF00C26B5E44608B05D76D6B6CED168B10D81983C4B4B02B6140
          502F367175B7CB21A748101A12DC27C4CF0B91827A4380E036FD34EF69261642
          AA8B41624A2710D8909302E6C3085AB2195E552CB10F89A93EC7FC459208FF0E
          2268E642B4BD256B80C3C2CFB9A0F5A4A41268525756E69BE402B51A8BC691C2
          B762251017265D1FDAED2C187CDBB7FC10665914C164CC272691C03124A292C7
          2D30D971C60FE25368C222C3EB77AC618D5F70ECDD41200A3738C9B3B92C985C
          917E2D54926F683E29A904A0F0FB690EDC98D12EC01F3280E09903BE9A740C22
          7BE37C09666F3C2803860266F399CFFA36646F26F768AC4FAED7AA8C1019E5BC
          5BB24C90453E09770A6420CEF43BB9FDD54D09B0F7B27B0809060D236A1AEAAB
          CF27A818A64ED08B187E3901477EFB4BC0DDBB463E285ADB570AAE23B4DAF610
          AFF920341EBE57362C8E54024D9495B837314333A3B7AC4D2FB76546B56D2539
          D18B2177F01A0AF1DC727B964D00C47FC540E73EECC5D4B35B1A64EF70A99DFF
          AE1D50EAF4BE4BC52BFB2F7943AC575BBF7093EC75E02BAF27221A40050621BC
          CEBD7F87CD8F1CFB2EBBC72052AFF053F8864F312E2263FCE3017312906FA5E2
          59CD7462848C69CFEBE657B493F9E7F933EE22011F646DFBED7F73924ABCD452
          4DB09479ED6BCA5941B1872BBBF3C9AEBAAB4BF9FF8EFE0FB95D4393E2B53D39
          0000000049454E44AE426082}
        FileName = 
          'C:\Users\jorge\Documents\Desarrollo App\Generar Datos\Icons\Tipo' +
          ' de datos\drinks_24px.png'
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000018000000180806000000E0773D
          F800000006624B474400FF00FF00FFA0BDA793000002AB49444154480DED535D
          485371143FFFFBE1EE2CD84CA2044B337CD0600B0DB1209DB54526F6E683E524
          287B91258544F664104130288BA08615548CA60F454AD208CC8F2C163DB8A287
          3EE80BFC203622DCCCDCEEBFF35FEEB6BBBB56177AF4CF39F7FCCE39BF73CEFF
          830BB0BCFE72032453DE66B315731CE7C15C0DA5F4562C16EB1A1B1BFB82BE6E
          E13255AC90F87E42C0515EC0F30DD61CFB4AA3702F13EF5F62423AA9B2B252B4
          1672252EBB01D69A08CB177D5F0418F2AB993D81853314A00BA39F388EEE38B2
          457A8758239A13ECAF2911EACA44333657C8964292AF384BA0A3CA7012E11D1A
          976B65998C9F0F2C4CA1AF11CD8063E7FAE7ED9BF867A9CCC6CDE248AA9FC494
          42F0E856E30702C0F84C9329C5624EC10AA00F1A37C08FE828F05221C4E75F03
          27D59286FB330A0141757DBF1B8B5D087350810089C9407B9E0E3575323FA9EC
          8E9358B12D83C5A175B9D16FDBF3DECC8C7E2D8B043FCF4595240267FBB09B02
          519A638809EBE52A6D1F869B97EA9421B80996FBAD8EE6B65A20D477C0E994B7
          5555173C1A1F79EFF5F5E5E183763CF4F6DE60CC9DADADF917EC73FEF2D58B15
          CCC7ED9F25BB074E2470DA874BF5ED4D874DD8FC2EC6D68442E1B78228C0F4EC
          EC47F4CD04E0EAAEE6430EC4C0C5724E77FAF32ADC132617A91F207F6A9EE0B2
          4F528918DF8BD88C0A93C1496620F8E2A5940000022570DBB1EF6013FA6D9208
          73A3B3B9D7106715D50908704549F6D4F47411A5540E8743A52C863FDE0CDA55
          00A40F2D6F14E5E3031E8FEA6D30AE11D50000CA1E2A418AC5E3EB9F0402CF29
          855FFF00852B784DA7124980C75ECFF5CB4B38AB511A6662797D3E436ADCEFED
          ED06806ED0B1D24EA0AE8C4623167544BF977580FE76DA0AD580166BA45C5045
          B4057A23AA764E4BE4D5C53D61BD3DB2F255038007CF46F3E260D68AE5E4FFBE
          819F539EBF8CD86CE14A0000000049454E44AE426082}
        FileName = 
          'C:\Users\jorge\Documents\Desarrollo App\Generar Datos\Icons\Tipo' +
          ' de datos\food_service_24px.png'
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000018000000180806000000E0773D
          F800000006624B474400FF00FF00FFA0BDA7930000037C49444154480DDD5469
          68545714FECE7D33E3CC6432A099A4850C28D4D29614E346842C3081464DAB5D
          6C8AA660B16240442ADA5AA4FDD1F9E368A57FBAA0A0825A4AB709A526D56808
          3471A9CB1F6B5544FAC7BAD7189BA4C9CCCBCC7BEFF4DC49E7C9988636CDAFF6
          71BE7BCE3DEB3DE75D2EF05FFFE8EF1AD8D2B43846E057415427BEA512C00CDC
          137E8C419F6F4B76F4887E5CA2F12C6F362F8DF82C6B1FC04BC46780405D0CFE
          4564883C5DE40691C382B629E0D7E3C9A3F7F9CAD2082CF589E862003EA28A83
          0912610CBDBDAC316A18FCBD18A24C14F707D31FC6F7779BB27729BE2AE63787
          FC1B89F09E74726DD61CCFF3CD2FA86FC5E1098110F752455BD998023A706438
          70424E3E53295ABCF5AB8ED3E23D2EBDDBB4B0DA2175785D8B97A2E54A7794F7
          BD251D94ABFC2ECFCD546083249F27275BBEE2CAEDBA0B95952C18CADB1FE65B
          5B3B7F6878C6937828B976EB867C0505E2B1984731BF25FAB6C4D7478E0AFF51
          A0E99C5EFE0A2CF3A9AF355E86D907F45D1C859366C0D9A5FD0B0A8C94066AC4
          1201E380361AC0558C7E5731DE77F9C5D548DFAD42DF25C04A03C132C008F650
          45BB8C19F014C4313F295704E4F029AD2FAEEA9FE69B96859D52D3711E78EE9B
          979E26A0F2F12EFB8CAF3795D9BE7DEA00CC4C0201495A2E9020DB8669D8CE0A
          1173545080159711137E36C277B575D3CCF054B9FF4009A499EB98D13B52D41F
          F2ECBB5341B71A3BED754EAFD9A04254961B8F630181082E5C52C7E634B7FFAA
          E3350A0A28902123423299B497BF3FF72987EC4FB593A07A5562F6EE1DADBF2D
          81D7E31D64ABA438631F321329045EBB0C0AA4805014F7D3611CFCCE382BFE2E
          151470B52238CAF95258A92047C35E6E395FFB18E6D12328EE391ED24A1E6658
          F7E6C35B5B0490C2A12FB2C8641D5BDBF29091022BEB173C0B0749997F306F98
          2497D2AAE9B3EE5347949B8858E6ECEE2629B0BEEEB9C3E7169D6DCB2B8BD6CB
          1BF3B196270BB9286F245A3B72B9DC7FD0FF7BBAC450A30D0DA6E43E4B957030
          202B30D1BDC5762417288B5B2054EAFFC06BAACDA22B0A17F9853DA009EE87B2
          7E67473EDA1D9156AC69A8B93192B5CAFFEDC975A7533C9E9B7BBB4E46753E0D
          B703BD79341CACB795F193C8B91626787288BF693876BDC4BB44AEF4A7D0B2B0
          EE8499C9D4E8ED443BF1FB7C27F7741EAFD5B1798C2920067AA7A9712713AF15
          F91F933CEF3BE5055E2F01FA3110F67FA13F0066563A972F21FC970000000049
          454E44AE426082}
        FileName = 
          'C:\Users\jorge\Documents\Desarrollo App\Generar Datos\Icons\Tipo' +
          ' de datos\market_24px.png'
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000018000000180806000000E0773D
          F800000006624B474400FF00FF00FFA0BDA793000002B949444154480DD5544F
          48145118FFBE99D9195913D9A858FB730A233A45C7A836EDEF61C9BC1411042D
          66755031A3F41078A93429960ED2A61D22A86E118852146D221E02A3831EB694
          104B4C0B0B7767776D77BEBEB78EB333D5BA8B787178DFBCDFFCBEDFF77BEFCD
          7B3300ABFDC2A516D01CEC8E71FE6726107EB078980C788FB2F4FC667D6086F9
          BC4D5A5281B48FF31F387600C15E22B808085D6418632DC107C798CFDB785279
          35C02B6964D56D0EBB3E0924F9DB1A03AF98CFD9EC05394522C1333E4740F705
          B6454C42A8BAD150F3DAC63960C10388AAE660D743003C23B02D6284C6E1F686
          DA411B67C1A5F7C0922D0032E8D60272DC8BD1903A1D8CEDA1E0015AA955E2AB
          CE566BC1A8AEAFADBDDA566A113680369C13F2E9C1C9175B9F86224DC7E74955
          EDC268340A533333A0A9EA7C99D73BA281ABEA7A5360625153D80061ED2E1FCF
          BAE98417EE7D6CD2E369B75B18446331989A9E0645916173D946EE15414F8001
          956D976A46C543DE574461ED8E3017E20D4553505B1E7417C9F13822BCD475FD
          8922B1B9D73217B22D80D42D800859DC720585D52B8078CD9E5FE39A83EDA5C3
          430AA4AABF44CBC73D9ED280E2CACCDC94D1D7B46C540FF6F5CC0A22E70AA85F
          6D61F37621720442D85BF2B9D27FFAF1AC27B5FE1D9BF7597982713EB2BB3BEA
          CF8F2D72FFDD037AAB5D66410787B3210C403C79148F80F8476572ADA1903BA1
          4BBD3C996D69947D1D0D673F6512E6ED9F01A85FBBC0FF1D71AEFFCAE110CC27
          0EE021F865D65A5D7367A747FAAD6EE22F7AD8224DE030A1FEA21AA0CCEFC0C1
          F3802340EA7EAC98FB6ED615DC5946BCA1A778998FB852E6C8368208A4141F1E
          8C7DCB9285A3EC26239EE432A739C024CFDEBF5C73F683EC00EB9227D8AC4790
          664CF207E3C38AE4A8F9BCACCE7A45A29A7A418362ED19E35D20830FF724238C
          57B6D10094D01BD7CE95755DCD6E7F002F08D437F1CA06AF0000000049454E44
          AE426082}
        FileName = 
          'C:\Users\jorge\Documents\Desarrollo App\Generar Datos\Icons\Tipo' +
          ' de datos\hardware_24px.png'
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000018000000180806000000E0773D
          F800000006624B474400FF00FF00FFA0BDA7930000025F49444154480DED534B
          6B135114FE663279B4691A066C92A9D466A14DAA22EAC28D81B68A3BDDE8422B
          887F44E80337FE085DEA4A37BA2B3414EAA6824A11EA038BA19868DB10D3B133
          C9BCAEF7CC74D29489B5185C08BDDCEF9E6FBE73E69E39F7CC050EC71F4E4068
          F7DF7B3E510484717437E6EF5F9BBFEC6F21FAC4B3C238BA1F97DAB76855C08A
          E8FBE0645E9073C950E48F967C4604B36EF7AEBC24EDAD914ABCB38E9C277E5A
          DA7C7D36B2AE127FAC8D5E74204823526DF942A452232D277EBB2A4CE0277189
          1617A1D8AD9C581B23BED45496C9CAA25EC9499E6622B4C013908C5391AAEAEB
          72A8B956B56343FC4B99AF01B19B40E321058BB47860773D0BEDB3D39F279E0E
          E99B64F7430A5A95FCAB5692DED18903ADBDE026608BD11C180AE4DCB2C2659B
          8522C4B3F68F305942C8B464B204A98D6759DD3D05136254B5C35FC9CF5160C5
          E8716E21D1828A791D122F923F949CA1FE8DBAC619104FF60CC0B05C6ED8C9CC
          C696A79BFDC90C768A8B3BD1013F7ECD54122785558A17C0D80D4E1EB8154073
          9EDADBF1BAD1C8605B994DD95A1F6C3D017D702A4D9AD150A01D9D69E9C45B3A
          8FF1E35565366DE869D05EA83BCF7802789FCDD99B954FD31084294EBB9F8CCD
          9C1B3D310D3EBC23E2C49FBD09194FDE0764D73D99B7A0A935CC2D2CBA70C5B6
          E5CA5801843669A707ED0AE78F5EB9BF30677BE7643EB65738C093D7830304FE
          6DC8FF93201275AF4EA0D040374D43C7DC9D9E402009E423DB09C3C7863BC9C1
          269BCD06081DA3F7114BA512B283E94044AB822FE5757E0D02FE8E425D0DFE65
          866180F452F93BBFC4BBAFFDF326EFA63A64BF39815FE1B9DC454493266C0000
          000049454E44AE426082}
        FileName = 
          'C:\Users\jorge\Documents\Desarrollo App\Generar Datos\Icons\Tipo' +
          ' de datos\store_24px.png'
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000018000000180806000000E0773D
          F800000006624B474400FF00FF00FFA0BDA7930000059B49444154480DB55479
          4C1467147FDFCCCEEE020B2CCBB5B0280B2C5705A50A628D5AAD448B5A0F2C56
          6B5BB5A9A65EADDA26B6F51F6D6DDA344663481AA569B4D4239656B431151341
          09511458146AB180C202B2C8B19C8B7B0C335FDFCCCAD6DA6842934EBE77BFEF
          F7E6BDEF9B01F89F1FF25FF07FB97039B6FD61E736879B8FE714EC70809FCFC5
          8D6FE69E2284084FE38DAB405353934AC9C0D7D577EF6D2F2CB9CE8E0A1EBC38
          831E36BFBEA81E44FA9E313EBEE2C922FF28B0AEF4D0629663BFCE9A9C9E507C
          ABF2A4A066769C9CF1C190B4E1D8B122ADD1145A1C13A9CF946C373F0A758DF7
          214A1F06FAE020C9052E9E77D6D4DFDBB926E7B523B203198324AFF5570E2451
          06CEE25BA5D89D0EE58490D00D0AA770580E22B30C765DB96ABE2383A3094A4E
          01B191E1101614289932D90686D517AE9BBFCDFBBE205D7620F3168837C46C89
          D31B940C21507DEF4F880D3740565AC65ACC81A3A77E4E6A68ED481344513265
          EAED1F841F2E96C115F31DA094CA3E0A145C6E37B10D3BBC1D28E408B2A19191
          86E0C040C0F1C0E5BA6A28FBE316B02CDB8C21181C7EB40D3B83208D1F74F7DA
          A0B5CB06E7CA6E4A23818E1E1B34B55B61E9CCA920E5F8AA5560B5F5A54AFB24
          F276D0AC6CFEEE4E5BCB8D8EBE5EC04EA4182F08A39F4A8A4845A331220C56CC
          7B09428375D0D53F24834B31892C9D5D10A40D84684304AC5938071C0E1727F9
          25F216289CB4D7ED081D78D966EFDFAA64B9239432530BE6EE2A929296CDCC28
          5DBF643E300C037815E1C5C418C9EDA5C48906F0C137971CC9C609B06BEDB23E
          49978848EC69A29F2D0D073784030822687C1B5BDFFA2A1D085C1BCBE3791E7E
          2DAFC4D97B3C264338A425993C86C409141B634DD91E55E24834379705E3A34D
          F88A3BF0AC12D035B6DCE82B354FCCCCA80A300567A624C128EF84109D4EEE48
          4A1A181AC2FA049A3B7BA0C1F200562F9893633499E4EE592981EEDDCB805FDB
          2900B2DBA933708E90A8D3BD93B340F00DFC71D4D79F700EFB0B863E4B98B1D5
          0CF9B75B81684301BF0769AB877074874E9F87AAFA26F051293B7397666FF204
          0014B232627E17E51BA37EDA7D2DD99B6B51DF83AF9432109D729621908C934A
          D736D79404579C9FB85FBCCF1DAA606028210E0234BE980A507CCD0C83F64710
          1BA5B74E33EAD3D0E9B9B7A8780A50BA4E54FA589A967FF42146CEE1483A5096
          330C5D8CE30A202C7370203EC32D004DD7555FBABDC3D508B7BBADDD011A5328
          15A943A0B46B466AE24F1F6F5C27DF3AC4F52E4F0142220803359C48DF773364
          1701FA0E9E60198E2C9A01619908EC61B4C387E3330A5DFAB84B314507B2120B
          BFB468F3CBF55EA467288CEC27D031CAA9E7F22C538ED7700A021FC50FBA0EBB
          F097C051868128A21F22798DCED86F9CDCE7AFD14CB7E42447C8FB9FC33C0544
          B188B3F7EBF437CEE7E1ECE761072BF1B3CF6144BA13C11B08852E60995A1C5D
          3BA85CB3184E79906159E2748B9F3F075B0E3132177C8FA26C09B4D4EE570EF5
          9450C26C20C06880215F60C20215C76DC5783F006D00B7AA9EF70F9E8F36B85C
          CE9C9BB30C0992FE2C226301BA7BC914111466ECA0B763F6EA5A7B54F26F9450
          1D88F00A26C5E019F98B94BC1DD85159A3BF515AC13AECAEAA8AAA8394C016C2
          0A59D3AFF63C1CC37A52E2DEBF4DFA49EE34101CE7D0132500B9F670D6AA2486
          8515831352F711D7489D7F7BE3BCE0DF4BE2552303AA96664B654F4FAF825208
          4190905A4550C1714D6A9BAF5A7BFA72617E1B62C80B63B2F432BA3D3B00D4EC
          1E511477E2BF87F3061E2B6E372F58ADD64B3D5DDD057826F2DF968AB0FA1B75
          EAFAE130A38E308CDB39623FA3E0B8BC9233C7ABFE55E0310E6021959BF0AFBA
          797E11659506CAF3FD78F8A5FED47E82E49BF9B1BC3199B970F9CAF0E8981336
          EB03B54E1F09F6813ED1611F9EFFCC02631BC725F19733BBE6EE2A6D983EAFBB
          CDE24780AC1CD7FEF1244FCACD554AF97F010B282D0CC97CF0DC000000004945
          4E44AE426082}
        FileName = 
          'C:\Users\jorge\Documents\Desarrollo App\Generar Datos\Icons\Tipo' +
          ' de datos\sports_24px.png'
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000018000000180806000000E0773D
          F800000006624B474400FF00FF00FFA0BDA793000001C749444154480DED52BF
          4BC34014FED226B14D6AA9F5172A16511047A5B3E8E4A08B4B71F09F70707210
          FF0841179DDD7470105C5C0405C141E8243A488522FEA89A589A3467AFED9D49
          7B265574100CDCBDF7BEF7BDF7E5DE9D04F87F6B8B0B33A1366945C432DE8C41
          8AEB51FD86DAC6B5BABD332D37824DB14C26F5586CAA09AF00965DAAEC801ED3
          87AB8E600B09B01F85FE0502C7F9F74714FC4C0543B04AB5E7C9522C56549541
          DC7E4BC0300DDE803A2C4E08047EFD0EBE75024DD3E98FC3AC9F84C555B061E3
          025B63BB3384601F90140FE7C413C1D10C18E9D3AA6502AA6034AC8A8F8800CB
          4DCD19CB6543A60E25DFEF42FC5DF97C3DBBE41069FEEA20375EB87CF567D7B3
          89B614A29DDDC895B3B87BB9AEA36223D3E612A4292D194101AD09744453E84B
          76A1582C060B305D3912C6F0DC00C20A9F1A4B796CB9E4C07AB53D985FC02FB9
          63348EDE74D28FCB73F9B307EE0739FC77E383B5A7175440F3F154EB5C7E02CB
          B040F284D6072EDBAC8DC8B62C14CD373C3A9FD77D089865589515D8DD458845
          7A1EEE0BCFA7283C73341C924623AA32C2002EC080AFD8A1DE898BEDC3E35977
          4D269351DB9F6EF7DC18C8068EC82608B59E8420A09C56B982F29F87DE01EACC
          86D9776838E60000000049454E44AE426082}
        FileName = 
          'C:\Users\jorge\Documents\Desarrollo App\Generar Datos\Icons\Tipo' +
          ' de datos\furniture_24px.png'
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000018000000180806000000E0773D
          F800000006624B474400FF00FF00FFA0BDA7930000039F49444154480DDD544B
          6C1B55143D6F92D88D1D4FFC8B133BB609A209AA8A20A215AD4485C46713100B
          1691404549DAB47443F80BB1C362C5A2A4A0AC088436EA0A75C18E48205037B0
          A015458D44507F544EDC34CD8C9DB889331F7B1EF7BDD891E589CB1A4673EEEF
          DCFBEECC7D330FF8AF5FACD90B4C0C0D793B0218E18EC3373795F3537373667D
          EEBFF1B5DCD69AD1A803017E3E1A4F0E833168B9C5D1D3A7C63E513CCA20678C
          3B36FFA3A0DDF9389A481DE10E075B5E7C81EA5F25B8EE5657A41AE01C43FB0F
          3D0DDBB25029578E3085FDC0AB9CD2C610EA496060F020DA3C1E5CFCEEDB17AB
          944B356D400F3E77E3EA95E132355014F724154AB8397F052D6D1E8063CEB572
          35A054B54B79B8717C5D5FCD95CBB68BAB05CAB68DA2BEBAE465C6782DD6A89B
          36C85CB8B8B1A7DD5711059716AEE3F2C20D614AD4FBDE769F2D7225B18B683A
          22914B33EF11FAA1780C5DF124F6ED7F4CB8A8ECF143BFBB2C6D120942D3FB81
          0DA8EA0EA1EF89C707114BF7E1EC575F93CB70ECE43856B2B77137FB37F9C809
          D10C4D47B45DC0CF81AE704F2F49E0F0E14384A7A41D8927A4661C67A5D14434
          6D30F9E6F1835699B7699A6E96368AB23C99EC8580704AC522344D33EC8AED39
          FDD6890322B61B5CDF5F2633ECE9C8ABD3448CACADADFF7C3BBBF8BCD7E3C523
          8F0E20148ECA35F2BA865BD7AFC1344DF4A5533F05839DCF8161F67EA8782A93
          B960C9A4AA70ED41A0A07E4EDC28019A9E979B6C5A26FE9C9F17211756F57C8C
          1A30FA17C602BABA410913849DDB3D228EA382B5E8E94A5B46B7B01F04C334BA
          C59BC81C86D7A5AE13EE06C05FC5F522EEDD5B7122E160440D04E8EDEB2AAA26
          8D10AAAA221C0A75AD526E91F6848E97852ABDA35C23722CEB65DB36BE4CD041
          164DF4468DD20696B259641797768A84914A25914AA7E1F5F999B69CD3F279ED
          170B1D6F08AE1E2DF58EB07FBC7C75F395679FF185BABB5F4B0FEC4338D603B3
          741F6B85026CDB1629F0FB7CD8DBBF17FD8307D019E98265187E5AE8D30FA7BE
          F95526D489DD4604CE9D4E0F7D39228F290AD45004BEF676E14AF8FC3E19636C
          BB5C9CA80E10946483D8CE680C7276A958D04523C9D8B4E1345F31A32D0A6C11
          91B34C834C3A481D0722B745E1BFC94083107BD510DA763F9B3831EB57032334
          63E457966FD946CB931F4D4FAF0BF6CC3B6341CE5B7F0FC5E20F8B3DA21FF1DC
          FB5FCC1C135C235863A0E673804DBE7DF2250EA79FA634FBDE99997C8D137AF2
          DDF1303DFC287770ED83A999EF69212A11CCFF0DFF00A7595A211B34B4450000
          000049454E44AE426082}
        FileName = 
          'C:\Users\jorge\Documents\Desarrollo App\Generar Datos\Icons\Tipo' +
          ' de datos\toy_24px.png'
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000018000000180806000000E0773D
          F800000006624B474400FF00FF00FFA0BDA7930000039649444154480DD5555D
          68544714FE666637D9CD6E561335153588711335F18768050595A85D35FE3CB4
          A952F0454D0945880F82A2A8B02FDA08528A827DA83F0F225AD362F1DF901741
          290DB662EA0F4A4AA282B559137D307FBB7BE77866D79B70F7AE6EFBE872BE3B
          E79CEFCC993967E6DE053EF69FC855C0CEAF221394A51A396E0D6312A388D1FA
          6DF3B5088F39E5830BEC5ABF72958068E62C4146A6F4B0E39686DC7BB0F9CA5F
          AC6795F72EB0A76EF5A75AEA5B3C2B8FF121E91392961CF8E9FA9FD982643667
          B4A6C6C3C94F33972B398720405A9C69ACADCD374626B22E3054E25FCB81150C
          9714150A6C5CA630B7DC31B52218D41B5CC1ECF0305C42445B327B97E715A899
          2DB068A6824701D34A81D86BC2B318BD9B2F360138C570887458694308D0E2B4
          0AB081EAB0C0F63A859A39E9E486338B6C5CAE8C6A6361B636B92AD85B17095B
          10A3ED59DFACF5A0745C663D693654E0F0FB0305A864E60E63585C1558CA5335
          CCB26292DF7DD48BF6C7AFD84A4BA69DF60252E9725BB7475705D0BA28D5173B
          82C739D38AF9392299B6CD10C931B66E8FAE0A781FA36CD28CFD83DA0C59E1E6
          C831D74C722F20D167081B3F5CEC05DF2ADB1C1E8DEFE885DE619B95FBA47096
          4787384EC966767D59BB42083AC1F6C4FB9DCFD118E9C767F3B97A1F839D18EC
          416BDB4B1C690DA06ACA04E3B9109BBC60DFB143D1F68E5998C7BB5EA809E3F9
          06FECDBAE19D68FAF96A4B7EC23793BDA78AC74C86C8E3B3EBFE1D787A250DD6
          85AF0263C74D0508873B50F885E50F4461FF344A20308BB91FDD87FC2EA87A5D
          D327126AA23147E5B7234E4F90D7F7C09888072A110A37E0F352DE0389EA05C0
          94F34FCE2F6D88460BF04B14243020081607ABAC0B5C3ADEB19440BF72408881
          EEF80C8812BEE23E9F3121FC6588754F4FE910B4D8B2127FB0111A44A1F99CF3
          9941817727F82577B5E8F2C9CEF19CFC9C99C04889262F6EBFAE47DC1FC690AF
          1CB75F7D0D4D237B4B5022B5119940EA3E0B897E4E6E2AC048542A15F835B0B6
          B23A96E1909EA1305AFEDDEFF0D9465C27602593504A15934617DF1C023F0CEF
          AA00A03586F83F7813EFC3D0C0402F25AD49BE103A95C0353E873B2647960550
          6688FF82A44EE2E1CB0788BD7901AFD77310CA3363DFF2430D3B22DF75F10DBA
          6772B85AB4AEBEDCFCE71A2E27EA1AF76C2369FD26B5FCDE13283CE715E2B426
          EB4C3048F552E205B78BCF3A679AF707F0256913909BB9DF37CE36EDEEE2B6DC
          94526CB6B46E4B50EA8BF0CF5B230B1480F58910BB0000000049454E44AE4260
          82}
        FileName = 
          'C:\Users\jorge\Documents\Desarrollo App\Generar Datos\Icons\Tipo' +
          ' de datos\hairdresser_24px.png'
      end>
  end
  object cxImageList3: TcxImageList
    SourceDPI = 144
    Height = 48
    Width = 48
    FormatVersion = 1
    DesignInfo = 42992376
    ImageInfo = <
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D49484452000000300000003008060000005702F9
          8700000006624B474400FF00FF00FFA0BDA79300000552494441545809ED596B
          4C5C4514FEF641B594576981E5B9BB141050504A2B454CAC555AD390806D8DC6
          586D35F607D1263EA2FDD348FFD9C4C49A18342D89D454EABB68D29214428984
          40B1A2D0CAC37479C863B1D4852E0F0B6C59E7CC32CD5216EEBDBB85DD6A67EF
          CC999973E69E39F39D73F6DE5DE06EB97B021E9D804A6A75C3C079BB948C3B7C
          BB1D07B2A3B30EBBB3D6798DDA79B05C7D3FB5162A15DEAFEF3F5F040F8B570C
          3004E9B042E34746BCE7A9115E3140CB10D00746DC1623BC620079CD4D239831
          CC9DDC46424B37535A4D239D2E97AC0B89E7F3527C2EC41A6E0473A71EEB20A6
          666C64045860174141512B905D125161C40A3791F04A1A4D0935E0D6629BB161
          1609B0147B482E125E4740182290984DB1E44E459051BC1A03B7EE8F8C300445
          A2DB6AC6B4CC98F0190484315AB50664844042CC2F44DD4240649B856E2AC56F
          B374E376159F4340A9619208149FF94EE93D9755FE8E4760490DA007360D0BCA
          A58444D2855C297FD8988EFC8C27B0DA3F18C313D770AEBD0155ADF53745F56B
          A2B03767270C61D1989999C12F3DBFA3B4EE7B8C4FFE833772F7E0A1B81494FF
          5A85534D957C4D4EC27AEC7BEC5998AF0DE1C0B71FF039B98D620452A3D6A170
          CBF37CF33D7FF763CDAA10ECCE2EC003D1495CE73DDA15786BDBCB3086C5E042
          D725745DED0319BC3B3B9FF35BFA3A384D8A304014D1173C312F872A36E0F1E4
          4D50B1CFC7D52770B8E2183EAF2FE77A1E4DCCE434265487E095817CE32473A4
          F2383FF9C4D90D8B4DC687C541A376A84FD41940A5A5B78388A2AAD88574C161
          5CC1E5BF7A386D1BE8C4D73F57C0323EC2C7C3E356F62C63475448381E8C4D46
          736F3B0A4F144194A1510B779548769FD8D0480C8D0E73D949DB143A065D3FE5
          8AB5AEA8E3085C7116980BBA7715ECEC3375639A4B500C9C6EA941BDE9373E26
          432A2EFD0472A537B7EEC5DBDB5E41B22E9EF344235020549222F40C4F15DA06
          4C98BE611322B2A95AB6A402C1AF1ACFA0F85C197A2D66A4C524E1DDEDAFF238
          10B710AE42BE9F106E0095E6BE76228AAB6203ACD7C7F989F9691CDE17B43200
          9B93B3901197CA9587F807C1B0369AB943170E967F842F1B4F43AD526347E656
          CEA7865C65CA368D4476FA493A03A808A3A8AFA42A366090A53A5210C97C9CE8
          7D3A234B993B90159F4E436419D371287F3F0A329EE4B150D3D1C8E729E5F20E
          6BC855DACC269EC912C2E33030720557C7861947F9E5384605EB28E76F34A6E1
          F52D2FA09BA551328096D75D6E2282A63F5BB16BE353A0AC442F296B0356F379
          D39023E8F980352DCC6528C8091D11136C5AF1A5188156166CC5D565A020CED4
          DF8FB1EB13F8A4E6242EF6FDC1955396F9F0EC671899B022373587BB167D171C
          AF2BE77CD1343BA54CCA54625E2955492D78B1E41DB77F99A378B0B1CC323639
          21A5660EDF5C6D99331683CAB29279FB55EC42E2667228A12047CE1319C52EE4
          89B2A5582B8940E1F69D4BA177D17B1EAC3EB628DF99F9DF47C0D95AD197FAE5
          CD53BED02387FE3F1190FAD5C153BE9C931732773C02F3BE18846582BAFA8BC9
          531F775E5FFB632B4C2D66A14E21B5977A1D819CBC1484C78628DC38D883226A
          2D019A7D6E21A0589BC48251EB043E3D720A564625441D6C3BFAA76DB60D35DF
          940E7A1D01DA5160903F9E7B29171AAD86865275D2AEC62EDA3C09FA8401B491
          587D38F20A1EA1EEA295B9CCFEAA2F4A1A8490CF18401BDAB0291954A9EFAAB2
          C7E2A367CB4A8E3AF37CCA00DA58DED339D01B75D49D53D9BF36B5C301EAD7E6
          4CB2014384B53E766D7E668FCE4FABBDC05EBEA3F9D69C82968F9D1A9F4380F6
          46014A81CAFA9354A94F73AC3FEF9215F6F3562DC344E7C5A6BE84B4F557988B
          54B037B11F1652F92FF48CD1BC609C5F580000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D49484452000000300000003008060000005702F9
          8700000006624B474400FF00FF00FFA0BDA793000004B4494441545809ED58DD
          4F9B5518FFB5EFDB0F2CA52D9414906D30618375E01C1AE2671663A6E1C2CD8C
          4D13B768E2E446E3A531DEA877FA0778D370C185904CA39148868A1726BA8598
          CD39646530463BC606F2DDD1EFBE50CF396DE17D5B5ADABE404BD2A6E7E379CE
          79CFF9FD9EE73CCFFB01147E050BC8B28062ABAB6F8CBE1DDE6A4E36E38A70F8
          93630D3D5F6573ADF81AA558D8ADBE8A3721AC507C7963F4FCE790F9CB09817D
          960EA8F932023DFC995C123921C07306545B2E6E0B899C1020A6C77691C81981
          0D12EFC9F2444E09444818C971CA9E44CE09C825911704C424547C2911D3CF4E
          794380A026814D8FD3FBC884445E11A024542CC56E90A0BA54854F35B8536363
          939F6EDBD279E7814C991508646AB1ED9EBFE73D905510DBBE1E6286ECF8A099
          B543FFCCC13EBC80807F15FA12359E7BB10A1595BAF5B1D19145783D02743A15
          5A5A2DA83D686063DF74D999FED5B61A1CA82D61BAF8B599324525DB0363B797
          3078651A3EAF00A34983F9391FFAFB9CF0B843181F5B6663C1E01A2AAB8AE1F6
          8430D07F0F77EFB824906E120348141908B2094CDD5F61DB3DFB42154E9DA943
          FD611342C15538275CC42BF3E0940ABCD15E8F936D07F0F22BFBD85CFBAD79D6
          C6AA99871ECCCD7A636246AD6C025A6DE414DE9F5C61C05F3A518D772E5AD170
          A414CBCB01E80D6A3CA68BCCA9ACD23170AEA5006B63954ACD811EC3989C492B
          9B40D3B17276B61D775DB8D43D86915B0B5013401CAF84DFB70A9EB431402121
          F27AEDF30931156B1B1A4D981877C1BD12647226956C027ABD0A67DE3C046BB3
          19818080AB7F3EC42F979D0847B04AB14475F163D45B2A9EC3F0D082747E1A52
          D60414D1EF193468DDEE209E2799E7AD0B0D30956A31E97C8499690F34E47809
          A1B575187E7FC4F2DA226E5D473B1A0D8F43474C18B12F5231A3921681CB3F39
          40D3DB3DC70ABC24DBD01D684AA4EDCF7D0EFCF0ED1D960EA9AED4ACA56A7849
          16321AD5703D0AC04562812AA7489CD0D668D4D046528E36992108AB125D3A42
          24BAB69859536B00DD7CF0CA03A889B5E8F4837546DAA099C4C0E0D569F4F54E
          10EB6B98F5A977CA2D45B0C28CFF0626D1FBFD384C655ACC4E47328DB5A99C5D
          2BAE4A48B0D7D418E020D94BACDFAA9F168146AB89E4F91009D045F8FC7E345A
          CBF04C6B055B9B06313DD3F6E179381D2E50EB1E6FB1A0C4A06185E314B8F6D7
          0C68AA349AB484B0194FD4476E646C015175F44973C604A22759B44A5C77A7BE
          CCC56D93547CEA70774A8C69C540D2D5F36020253B8A2F171EF8F88B22BA7542
          19E8E94CC0BBE73D502090E0E75D56143CB0CB064FD86ECF7B20212DC553DCE9
          347AE94735AEDF943EDCC563482E87BB72EE81F6D783A8DDBFF1C49A1CAC7484
          3CBEFCB158CC75E49C0047109C3F1B80411F7D5990E2DC5C0AE3812008E7AEDB
          6C2172F9E6737653AB2F062E9C0B92B7B7B44804C24AB4FFFE5DD70CC5981704
          2890FDD56B38F55AE48587CAC90A09DA8F7EEBEE1C8C8DE70D010AA8B545002D
          B4BF5921FEB1FDDAD369138FE515010AEC745B68D3A0A641BB54ACFC90CE1117
          E211B1981FFD1367DFAD50F1FC3528F0384344823624084FC7CE3DD345ABBCF3
          00C54581D240257DFA014912B44427F9677B07912CB213C2C4BF7F4FD5351D9F
          2547A49FBC07F426DBE37FE9C58E9914BFCFEE0000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D49484452000000300000003008060000005702F9
          8700000006624B474400FF00FF00FFA0BDA79300000311494441545809ED985B
          4F134114C7FFDB147A89A4A5B6E5D682527D44828A86F8013424FAA41F03F5D1
          377DD4CFA26F4463828F9A104D0C89D74891B4602DED56512121D8DDF59C215B
          D8922C1966714BB2CDEEEC99993333E777CE99D97481E0177840C903DA41A3AF
          3F7B621DA473B87EEBDEECF4AD47871BBB3B2AB42BFE3F291589D262DAC31B4F
          1F3F80E2CF1780BBE72E21138DC3D2B4FBAA10BE00F446229819BBE809842F00
          9C3536443A1A538A846F0036C49DB149A840F80AC010494A271508DF0154213A
          024005A263006C88DB743AC9EC898E0260885E7AC9ED85E036B73BECD679547D
          332FE73C9BBAE322204B1600C87ACC6BFD20025E7B5476BE2002B21EF35AFFD8
          4740EA45F6E9F3471417BF209DCE606AEA0A4CC3C4DC8BE7D8DEDEC6E4E465F4
          F70FE0CDEB7954D7AAD0340D57AF4DA32BDC259CFE7579091FDEBF13B2ADBBB2
          52C6C2C25BE472794C4C5C107DB28554040AA367100E87A137746C6E6EA0F2FD
          9B303E914808E3F72E6E5916F4BADE6AD2EBF596ECA52005D0DDDD8DE1FC0840
          C695CB25944B25614BA170563CDB0B5DAF8926D3B4D0206851F1B89002E0B54F
          8F16100A69281140E36703F1781C030343DCE5B823F447C536FAD7EF75349B4D
          709B43C9838A34001B3C3898C35FCA7B8E047B9F81DA6D49A54EE2CFC606B6B6
          B62895287D684FA452A97635E5BA3400AF68184D7E889B3D2B84B682373A03EA
          7A5D00241349DA3F5D6D5AEA556900DEBCD56A55A48346EB2FD3E9629A2649CE
          8B2315A52F0EB5DA1A7EAC3790C964298D0CA7920735698062B1488EB53072EA
          34D26414A7C8EAEACA3E534CC340369B45A55211C76D5FB61FA6E93D80D47B60
          C7D832D8F3F9DC307A4EF4A05EAFA1585C443E3F2CCE7E9BC422AD2C19CDA715
          9F5EC9DEA4DDB5EFC969363FFFAAD53E3E7E1EB158AC557713A40096C8504E97
          0C79762745A2229538AD2A95550C0DE51D6B710442A11045A2CF01E750A20A3B
          866F12C56518BB7B4C34B814EC4C976EE0E8BE4EBB2EDBEA9C9DBEE96AA3F41E
          68CDDC214200E077208208041150F44090428A0E541E1E4440D9858A131CFB08
          28F207C3030FFC035C5D00BD6009160F0000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D49484452000000300000003008060000005702F9
          8700000006624B474400FF00FF00FFA0BDA79300000238494441545809636018
          05A3214051083012D23DE1D4CFFF84D49025FF9FA1A2C09CBD932CBD489A9890
          D8746372B101C38D91A1A3FFE4CF06060AC18078C04E81998107E8094646867A
          4A3D31201EE0646564B0A1922706C403A05403F30437853131601EA0962706D4
          03204F70419313B93131E01EA0D41383C203947862D07800E6095B60E9444A72
          1A541E007902543A217B0224860FB3E093A495DCFAABBFA966F4A08B01527D36
          EA0152438CDAEA476380DA214AAA79433E06282E463BD7DC2435D030D49787A8
          6388112B301A0394841EB1A18C4FDD680C909307A8196BA33140CDD0C497D671
          C90DF918008E30E1F21B449CD0C81C397900623282448FC5AD13B2119248ACDD
          CBE660B877C8C700C535317AE82105185D98A331404E1EA066AC8DC600354393
          9C4C33E46360C87B00A362408F46421519BA7A52F917772E667872FD04A9DAA0
          EAFF2F18F018D0758D62109452813A8878EAFF7F86C3EF7898D306DC034C4CCC
          0C46DEC90C1CDCFC24B89EE1E99F3F7FC2CECE9AF57BC03D00723507371F8391
          6F2A03130B0B884B08FFFCCFC4107260F58217208583C2032087084A283268DB
          878298783130D3E6ED593AE7044CD1A0F100C84172BA360C200C6263C3C009EB
          59BB96CD99852C37A83C007298B66318D64C0DCAB4EF799872406A9031304690
          B98383ED109A20C1CAC272868191411AECA2FF0C4F7FFFF963024BF760312831
          E86200E42E9043411915C8FE09C22036480CC8C640CC18228344E0DEE5734F54
          748D5E0193C876604F6C232E670100886D8C76EF6E451B0000000049454E44AE
          426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D49484452000000300000003008060000005702F9
          8700000006624B474400FF00FF00FFA0BDA7930000010E494441545809ED944D
          0AC23014845FFCC5EA21BC851BF54C2EDDE952577A13CFA17B0F535CB40D5828
          2E5AA6194D8409144A3379F07D136AA6250341065CD7E9EB232FBA32BDF60BDB
          EF56D373AFB38D4383C6FBCF5EB349E5CDD9E972CF8F16B8A2006C97435B5410
          CED92114220AC06CEC6C4D828802E06F4D0D310F6C221A000B222A8087C8DED7
          A96F13D1014221920008814806A086D8547F27E43A2505E021FCDFA909E1BFB5
          3DA3B6CD6FEDDD9E2FDAE8E41A40C904801A63E7D500DB283A4F0DA0C6D87935
          C0368ACE5303A831765E0DB08DA2F3D4006A8C9D57036CA3E83C35801A63E7D5
          00DB283A4F0DA0C6D87935C0368ACE5303A831765E0DB08DA2F3FEBE01145879
          19F83050022A032BCCA27F59090000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D49484452000000300000003008060000005702F9
          8700000006624B474400FF00FF00FFA0BDA79300000434494441545809ED597F
          4855571CFF9CE775397F2C990D3771AF653FDC6CD3F77C4C74623D5D54905242
          44EC075B25738E112D56FB01329903196330679415FDA2DA28A2C41F0459BE98
          0D9930D71AD5A643F08FC1C4461B65E4ECBED3B9E779AFC7E7B9F35EF4BD72DC
          CBB9DFFBFD7ECEF77CCFF7C73997C3BD807339197032E064E0416680446AF2EC
          9AEC7404152F09120F25D40310EF95DA1F33667A3E65BA060BDE2B78F44EFCBF
          3E4AE023846651D0A5CCD96CA848D26C33E7B507BB29BB67BED90AE0D98FF252
          626346BD042EE624E54E0F636409738BDB09B918B1A2B26926373EF16418F0D6
          78D3D420F1B13E1F287CCC391FC1BDA7587619C42446A3EB2A9B50D24C035055
          F287A83F13CE969E59178A5C346C8DEF682D6F7A59A6EA92810F215662E693CB
          AC63B6E04E000FBA52A69B38128EB5AC3B63982D6B2AE7BC88714020BA8E004D
          6267FD12B25C81370A5FC7F655DB8C0CEC38F101CE5D3D6FC8C9F173D1B6AD19
          8971891CAB6F6FC0C1CEC388F4653980635DDFA0CC538AC5A98BB84F55256FE3
          FCB50E046990CB95FEB70CE77FFBB31747BE3FCA7191C896840C13C74CC55B5E
          426A50C51767BF34EC653CB100C5CFF9A15D4F3F9E8E0D2FAED758504A51D7F6
          39347D0E44982876ECFFD0DF8D8EEB175132E678A5BF82C901BC535205252664
          AAF5E736FC3470596A56DCB07AE6452C7C90AE138E8BB2E50AE883BE3AF73546
          D5512E663E998955CFAFC4EA17567279786418F5EDBB381F2D623B8081BF0670
          BCEB5BC3BFEAB28FE12221337B027B31746BC8E88B06637A46CBAECE353D7825
          CC4940F3D6D3989734CFF0B177B00F1BF7BCFA9F6BDF9DEB36F4ED32EC3027F5
          35943ABBD698BE4A5546C7DB1CE511C4B862C6812871A19D6773B2AD2BDE45EA
          63A97CD48D5B377825E6A7CCC7E6A237D118D8C771191137ACBE41452C7C8CAE
          138E8BB2ED0A78DC39D890B79EDB18191DC1672D759CD7C8E6A24D70A7B83536
          6AB7AD00B465F269F927C6A63DDA751C815F2FA2B3F7127758EBAF595B0D42A4
          CB95EBCC3451EC18AC58BE05DA52D1C6FC7DE71F1CBA744463D9ABB301858B5F
          E281F99EC94569CE1AB45C6EE57D22912D0919268E998AB75C01ED9DBF852D11
          DDE081CE83B87DF73617FB067F47BB702E7A7FF57624C727F3BE48134B15D0DE
          F31FAED961BC65B477FDC9EE53137C6B0CEC47FEC27C1086BA08C16B05AF60D7
          85DD4C1A6FE286D5332F62E39A214ED70949726A2900EDC0B6E94085DCC218DA
          3FD48F6575C56352F41E969750F45CB23793624F7D7ADAB22521C3ECCC32EB2B
          E00460A7DC91D09D151520947C6716BCF926A6F73208146FD0453DCC80977DD4
          F50034DDCC9015DCEC486C65AC990E31EB90E1993B0B93E262EFE6B0A0B208FF
          0F00F6F59A7FC18E93E98763576A7B6CCD173E5E264FDBA0BFC6AFDC546F6652
          B858303CA02C3611AB1852D873427B280398E0A120C8FE2FFC52DB9326A838AC
          930127034E06FE0719B80F108F122DD3CA970B0000000049454E44AE426082}
      end>
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 1128
    Top = 674
    PixelsPerInch = 144
    object StyleActivo: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 549808689
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -23
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clWhite
    end
  end
end
