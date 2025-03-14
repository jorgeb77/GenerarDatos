unit UFRPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.StrUtils,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Samples.Spin,
  Vcl.Mask, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, System.TypInfo,
  System.UITypes, System.DateUtils, System.Math, System.Generics.Collections,
  XMLDoc, XMLIntf, System.JSON, System.NetEncoding, System.IOUtils,
  Vcl.Menus,
  Data.DB, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, DataGenerator, Vcl.ComCtrls,
  System.ImageList, Vcl.ImgList, Vcl.Buttons, Vcl.Imaging.pngimage,
  cxGraphics, cxLookAndFeels, cxLookAndFeelPainters,
  cxImageList, cxButtons, cxControls, cxContainer, cxEdit,
  cxMaskEdit, cxDropDownEdit, cxCurrencyEdit, cxLabel, cxTextEdit, cxMemo,
  cxGroupBox, cxRadioGroup, cxSpinEdit, cxImageComboBox, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxNavigator, dxDateRanges,
  dxScrollbarAnnotations, cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  dxSkinsCore, dxSkinBlue, dxSkinOffice2010Silver, SkinAzul, dxSkinVS2010,
  cxCheckBox;


type
  TDataCategory = (dcPersonal, dcUbicacion, dcNegocios, dcFechas, dcHoras, dcNumeros, dcMedicamentos, dcPersonalizado, dcPagos, dcProductos);

  TDataTypeInfo = record
    Nombre    : string;
    Categoria : TDataCategory;
    TipoCampo : TFieldType;
    Longitud  : Integer;
    Icon      : Integer;
  end;

type  //DEFINIMOS ESTE TIPO DE DATO PARA ESTABLECER LA LONGITUD DE LOS TEXTOS ALEATORIOS DE TIPO STRING
  TLongitudTexto = record
    NombreCampo : string;
    Categoria : TDataCategory;
    TipoCampo : TFieldType;
    Longitud  : Integer; //Longitud del texto almacenado
  end;

// Con este tipo manejamos el modo de almacenar los tipos númericos
type
  TModoGeneracion = (mgRandom, mgRango, mgSecuencial);

  TNumericConfig = record
    Modo              : TModoGeneracion;
    MaxRandom         : Integer;
    MinRango          : Integer;
    MaxRango          : Integer;
//    FormatoSecuencial : string; // Solo se usará para enteros
  end;

// Con este tipo manejamos el modo de almacenar los tipos de fecha
type
  TModoGeneracionFecha = (mgdRandom, mgdRango);

  TDateConfig = record
    Modo      : TModoGeneracionFecha;
    AnioIni   : Word;
    CantDate  : Word;
    DateIni   : TDate;
    DateFin   : TDate;
  end;

type
  TScreenResolution = (stLowRes,     // < 1366x768
                       stHD,         // 1366x768
                       stFullHD,     // 1920x1080
                       stQHD,        // 2560x1440
                       st4K);        // 3840x2160

  TFRPrincipal = class(TForm)
    pnlFieldConfig: TPanel;
    pnlPreview: TcxGroupBox;
    FDMemTable1: TFDMemTable;
    DataSource1: TDataSource;
    GbMaxRandom: TcxGroupBox;
    GbTipoDato: TcxGroupBox;
    GbCategoria: TcxGroupBox;
    GbNombreCampo: TcxGroupBox;
    GbRango: TcxGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    GbRegion: TcxGroupBox;
    Image2: TImage;
    Image1: TImage;
    GbDelimitador: TcxGroupBox;
    GbRandomFecha: TcxGroupBox;
    GbRangoFecha: TcxGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    DtpDesde: TDateTimePicker;
    DtpHasta: TDateTimePicker;
    pnlBottom: TPanel;
    cxImageList4: TcxImageList;
    btnCrearArchivo: TcxButton;
    BtnLimpiar: TcxButton;
    btnAgregarCampo: TcxButton;
    memPreview: TcxMemo;
    cxLabel1: TcxLabel;
    edtCantidadReg: TcxCurrencyEdit;
    RbLatino: TcxRadioButton;
    RbUS: TcxRadioButton;
    edtNombreCampo: TcxTextEdit;
    RgModo: TcxRadioGroup;
    RgFormatoExp: TcxRadioGroup;
    RgModoFecha: TcxRadioGroup;
    SeRango: TcxSpinEdit;
    EdMin: TcxCurrencyEdit;
    EdMax: TcxCurrencyEdit;
    cxLabel5: TcxLabel;
    cxLabel6: TcxLabel;
    EdAnioInicial: TcxCurrencyEdit;
    EdCantAnios: TcxCurrencyEdit;
    EdDelimitador: TcxTextEdit;
    LbLongitud: TcxLabel;
    EdLongitud: TcxCurrencyEdit;
    cmbCategoria: TcxImageComboBox;
    ImgListCategorias: TcxImageList;
    cmbTipoDato: TcxImageComboBox;
    ImgListTipoDato: TcxImageList;
    cxImageList3: TcxImageList;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxStyleRepository1: TcxStyleRepository;
    StyleActivo: TcxStyle;
    RgTipoTamano: TcxRadioGroup;
    RgGenero: TcxRadioGroup;
    CkbPermitirOrdenar: TcxCheckBox;
    CkbPermitirFiltrar: TcxCheckBox;
    procedure FormShow(Sender: TObject);
    procedure btnAgregarCampoClick(Sender: TObject);
    procedure BtnLimpiarClick(Sender: TObject);
    procedure RgModoClick(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btnCrearArchivoClick(Sender: TObject);
    procedure RgFormatoExpClick(Sender: TObject);
    procedure RbLatinoClick(Sender: TObject);
    procedure RbUSClick(Sender: TObject);
    procedure RgModoFechaClick(Sender: TObject);
    procedure DtpDesdeChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SeRangoPropertiesChange(Sender: TObject);
    procedure cmbTipoDatoPropertiesChange(Sender: TObject);
    procedure cmbCategoriaPropertiesChange(Sender: TObject);
    procedure RgTipoTamanoClick(Sender: TObject);
    procedure CkbPermitirOrdenarClick(Sender: TObject);
    procedure CkbPermitirFiltrarClick(Sender: TObject);
  private
    FSecuencial : Integer;  //Para la secuencia de los números
    FNumericConfigs : TDictionary<string, TNumericConfig>; // Para guardar el modo de almacenar los números
    FDateConfigs : TDictionary<string, TDateConfig>; // Para guardar el modo de almacenar las fechas
    DataTypes : array of TDataTypeInfo;
    LongitudTexto : TList<TLongitudTexto>; //Almacenaremos la longitud del texto random personalizado
    TipoSize : TypeOfSize;
    Genero : TGender;
    procedure InitializeDataTypes;
    procedure CargarTiposDatos(Categoria : TDataCategory);
    procedure MostrarVistaPrevia;
    procedure AgregarCampo;
    function GetLocale : TDataLocale;
    function GetNumericConfig(const FieldName : string) : TNumericConfig;
    function GetDateConfig(const FieldName : string) : TDateConfig;
    procedure AddGridColumn(AView : TcxGridDBTableView; AFieldName, ACaption : string; Size : Integer);
    function GetScreenResolution : TScreenResolution;
  public
    procedure SaveAsCSV(myFileName : string; DataSet : TDataSet);
    procedure SaveAsJSON(const FileName : string; DataSet : TDataSet);
    procedure SaveAsXML(const FileName : string; DataSet : TDataSet);
    procedure SaveAsYAML(const FileName : string; DataSet : TDataSet);
//    procedure SaveDataSetToTXT(DataSet : TDataSet; const FileName : string; const Delimiter : Char);
    procedure SaveDataSetToTXT(DataSet : TDataSet; const NombreArchivo: string; Delimitador: Char = ';');

    constructor Create(AOwner : TComponent); override;
    destructor Destroy; override;
  end;

var
  FRPrincipal: TFRPrincipal;

implementation

{$R *.dfm}

uses
  cxGridStrs, dxCore,
  cxGridExportLink; //Necesario para la exportacion de los datos del cxGrid


// Agregar el constructor y destructor
constructor TFRPrincipal.Create(AOwner : TComponent);
begin
  inherited;
  FNumericConfigs := TDictionary<string, TNumericConfig>.Create;
  FDateConfigs    := TDictionary<string, TDateConfig>.Create;
end;

destructor TFRPrincipal.Destroy;
begin
  FNumericConfigs.Free;
  FDateConfigs.Free;
  inherited;
end;

procedure TFRPrincipal.DtpDesdeChange(Sender: TObject);
begin  //DESPLAZAR AUTOMATICAMENTE EN EL TDateTimePicker
  TWinControl(Sender).Perform(WM_KEYDOWN, VK_RIGHT, 0);
end;

procedure TFRPrincipal.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
var
 I : Integer;
begin
  { Define the font and background color of the header
   (propiedad DrawingStyle debe ser gdsClassic) }
  for I:= 0 to (Sender as TDBGrid).Columns.Count -1 do
  begin
//    (Sender as TDBGrid). Columns[I].Title.Font.Name  := 'Tahoma'; //font
//    (Sender as TDBGrid). Columns[I].Title.Font.Size  := 10; //font size
    (Sender as TDBGrid).Columns[I].Title.Font.Style := [TFontStyle.fsBold]; //Font en negrita
//    (Sender as TDBGrid).Columns[I].Title.Font.Color := clBlack; //Font Color
//    (Sender as TDBGrid).Columns[I].Title.Color      := clAqua; //Background color
  end;

  // Coloreamos el borde de las celdas ó lineas del DBGrid
//  with (Sender as TDBGrid).Canvas do
//    begin
//      // Color en las lineas horizontales
//      Pen.Color := clBlue;
//      MoveTo(Rect.Left, Rect. Bottom);
//      LineTo(Rect.Right, Rect. Bottom);
//
//      // Color en las lineas verticales
//      Pen.Color := clGreen;
//      MoveTo(Rect.Right, Rect. Top);
//      LineTo(Rect.Right, Rect. Bottom);
//    end;


  //COLOREAMOS LOS ROWS ESTILO CEBRA, CADA DOS LINEAS
  if (Sender as TDBGrid).Datasource.Dataset.RecNo mod 2 = 0 then
    (Sender as TDBGrid).Canvas.Brush.Color := $00FEF6FC
  else
    (Sender as TDBGrid).Canvas.Brush.Color := clWhite;

  //AQUI MANEJAMOS EL COLOR DE LAS CELDAS CUANDO ESTAN SELECCIONADAS CON EL MOUSE
{  if (gdSelected in State) then
    begin
      DBGrid1.Canvas.Font.Color  := clBlack;
      DBGrid1.Canvas.Brush.Color := clYellow;
    end
  else
    DBGrid1.Canvas.Font.Color := clBlack; }

  //CAMBIAR EL COLOR DE UNA COLUMNA
//  if DataCol = 4 then
//    begin
//      if (gdSelected in State) then //SI LA SELECCIONAMOS CON EL MOUSE
//        begin
//           DBGrid1.Canvas.Font.Color  := clLime;
//           DBGrid1.Canvas.Brush.Color := $00C56A31;
//        end
//      else     //DE LO CONTRARIO TENDRA ESTE COLOR
//        begin
//          DBGrid1.Canvas.Font.Color  := clBlack;
//          DBGrid1.Canvas.Brush.Color := clYellow;
//        end;
//    end;

  //AL PARECER ESTA LINEA HAY QUE PONERLA SIEMPRE AL FINAL
//  DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TFRPrincipal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  LongitudTexto.Free;
end;

procedure TFRPrincipal.FormCreate(Sender: TObject);
begin //Manejamos el tamaño del formulario de acuerdo a la resolución de pantalla
  if GetScreenResolution = st4K then
    begin
      FRPrincipal.Constraints.MinHeight := 1215;
      FRPrincipal.Constraints.MaxHeight := 1215;
      FRPrincipal.Height                := 1215;
    end
  else if GetScreenResolution = stQHD then
    begin
      FRPrincipal.Constraints.MinHeight := 1429;
      FRPrincipal.Constraints.MaxHeight := 1429;
      FRPrincipal.Height                := 1429;
    end;

  // Eliminamos <No data to display> en el cxGrid (uses cxClasses, cxGridStrs, dxCore)
  cxSetResourceString(@scxGridNoDataInfoText, '');
end;

procedure TFRPrincipal.FormKeyPress(Sender: TObject; var Key: Char);
begin
  // on enter next control select function
  if (Key = Char(VK_RETURN)) then
    begin
      if HiWord(GetKeyState(VK_SHIFT)) <> 0 then
        SelectNext(ActiveControl, True, True)
      else
        SelectNext(ActiveControl, True, True);
      Key := Char(0);
    end;
end;

procedure TFRPrincipal.FormShow(Sender: TObject);
begin
  InitializeDataTypes;
  cmbCategoria.ItemIndex := 0;
  RbLatino.Checked       := True;
//  cmbCategoriaChange(nil);

  // Crear una nueva lista para almacenar las longitudes del texto personalizado
  LongitudTexto := TList<TLongitudTexto>.Create;
end;

procedure TFRPrincipal.InitializeDataTypes;
begin
  SetLength(DataTypes, 51);

// (dcPersonal, dcUbicacion, dcNegocios, dcFechas, dcHoras, dcNumeros, dcMedicamentos, dcPersonalizado, dcPagos, dcProductos);


  // Personal
  DataTypes[0].Nombre    := 'Nombre';
  DataTypes[0].Categoria := dcPersonal;
  DataTypes[0].TipoCampo := ftString;
  DataTypes[0].Longitud  := 50;
  DataTypes[0].Icon      := 0;

  DataTypes[1].Nombre    := 'Apellido';
  DataTypes[1].Categoria := dcPersonal;
  DataTypes[1].TipoCampo := ftString;
  DataTypes[1].Longitud  := 50;
  DataTypes[1].Icon      := 0;

  DataTypes[2].Nombre    := 'Nombre y Apellido';
  DataTypes[2].Categoria := dcPersonal;
  DataTypes[2].TipoCampo := ftString;
  DataTypes[2].Longitud  := 100;
  DataTypes[2].Icon      := 0;

  DataTypes[3].Nombre    := 'Genero';
  DataTypes[3].Categoria := dcPersonal;
  DataTypes[3].TipoCampo := ftString;
  DataTypes[3].Longitud  := 100;
  DataTypes[3].Icon      := 1;

  DataTypes[4].Nombre    := 'Email';
  DataTypes[4].Categoria := dcPersonal;
  DataTypes[4].TipoCampo := ftString;
  DataTypes[4].Longitud  := 100;
  DataTypes[4].Icon      := 2;

  DataTypes[5].Nombre    := 'Teléfono';
  DataTypes[5].Categoria := dcPersonal;
  DataTypes[5].TipoCampo := ftString;
  DataTypes[5].Longitud  := 20;
  DataTypes[5].Icon      := 3;

  DataTypes[6].Nombre    := 'Tipo Teléfono';
  DataTypes[6].Categoria := dcPersonal;
  DataTypes[6].TipoCampo := ftString;
  DataTypes[6].Longitud  := 10;
  DataTypes[6].Icon      := 4;

  DataTypes[7].Nombre    := 'Estado Civil';
  DataTypes[7].Categoria := dcPersonal;
  DataTypes[7].TipoCampo := ftString;
  DataTypes[7].Longitud  := 20;
  DataTypes[7].Icon      := 5;

  DataTypes[8].Nombre    := 'Fecha nacimiento';
  DataTypes[8].Categoria := dcPersonal;
  DataTypes[8].TipoCampo := ftDate;
  DataTypes[8].Longitud  := 0;
  DataTypes[8].Icon      := 6;

  DataTypes[9].Nombre    := 'Edad';
  DataTypes[9].Categoria := dcPersonal;
  DataTypes[9].TipoCampo := ftInteger;
  DataTypes[9].Longitud  := 0;
  DataTypes[9].Icon      := 7;

  DataTypes[10].Nombre    := 'Pasatiempos';
  DataTypes[10].Categoria := dcPersonal;
  DataTypes[10].TipoCampo := ftString;
  DataTypes[10].Longitud  := 30;
  DataTypes[10].Icon      := 8;


  // Ubicación
  DataTypes[11].Nombre    := 'País';
  DataTypes[11].Categoria := dcUbicacion;
  DataTypes[11].TipoCampo := ftString;
  DataTypes[11].Longitud  := 50;
  DataTypes[11].Icon      := 8;

  DataTypes[12].Nombre    := 'Ciudad';
  DataTypes[12].Categoria := dcUbicacion;
  DataTypes[12].TipoCampo := ftString;
  DataTypes[12].Longitud  := 50;
  DataTypes[12].Icon      := 9;

  DataTypes[13].Nombre    := 'Dirección';
  DataTypes[13].Categoria := dcUbicacion;
  DataTypes[13].TipoCampo := ftString;
  DataTypes[13].Longitud  := 100;
  DataTypes[13].Icon      := 10;

  // Negocios
  DataTypes[14].Nombre    := 'Empresa';
  DataTypes[14].Categoria := dcNegocios;
  DataTypes[14].TipoCampo := ftString;
  DataTypes[14].Longitud  := 100;
  DataTypes[14].Icon      := 11;

  DataTypes[15].Nombre    := 'Cargo';
  DataTypes[15].Categoria := dcNegocios;
  DataTypes[15].TipoCampo := ftString;
  DataTypes[15].Longitud  := 50;
  DataTypes[15].Icon      := 12;

  DataTypes[16].Nombre    := 'Departamento';
  DataTypes[16].Categoria := dcNegocios;
  DataTypes[16].TipoCampo := ftString;
  DataTypes[16].Longitud  := 50;
  DataTypes[16].Icon      := 13;

  // Fechas [ fecha ]
  DataTypes[17].Nombre    := 'Fecha';
  DataTypes[17].Categoria := dcFechas;
  DataTypes[17].TipoCampo := ftDate;
  DataTypes[17].Longitud  := 0;
  DataTypes[17].Icon      := 14;

  // Fechas  [ Fecha Y hora ]
  DataTypes[18].Nombre    := 'Fecha y Hora';
  DataTypes[18].Categoria := dcFechas;
  DataTypes[18].TipoCampo := ftDateTime;
  DataTypes[18].Longitud  := 0;
  DataTypes[18].Icon      := 15;

  // Horas
  DataTypes[19].Nombre    := 'Hora';
  DataTypes[19].Categoria := dcHoras;
  DataTypes[19].TipoCampo := ftTime;
  DataTypes[19].Longitud  := 0;
  DataTypes[19].Icon      := 16;

  // Números
  DataTypes[20].Nombre    := 'Entero';
  DataTypes[20].Categoria := dcNumeros;
  DataTypes[20].TipoCampo := ftInteger;
  DataTypes[20].Longitud  := 0;
  DataTypes[20].Icon      := 17;

  DataTypes[21].Nombre    := 'Decimal';
  DataTypes[21].Categoria := dcNumeros;
  DataTypes[21].TipoCampo := ftFloat;
  DataTypes[21].Longitud  := 0;
  DataTypes[21].Icon      := 18;

  // Medicamentos

  DataTypes[22].Nombre    := 'Medicamento';
  DataTypes[22].Categoria := dcMedicamentos;
  DataTypes[22].TipoCampo := ftString;
  DataTypes[22].Longitud  := 100;
  DataTypes[22].Icon      := 19;

  // Personalizado
  DataTypes[23].Nombre    := 'Texto Aleatorio';
  DataTypes[23].Categoria := dcPersonalizado;
  DataTypes[23].TipoCampo := ftString;
  DataTypes[23].Longitud  := 50;
  DataTypes[23].Icon      := 20;

  DataTypes[24].Nombre    := 'Número Aleatorio';
  DataTypes[24].Categoria := dcPersonalizado;
  DataTypes[24].TipoCampo := ftInteger;
  DataTypes[24].Longitud  := 0;
  DataTypes[24].Icon      := 21;

  // Pagos
  DataTypes[25].Nombre    := 'Metodo de Pago';
  DataTypes[25].Categoria := dcPagos;
  DataTypes[25].TipoCampo := ftString;
  DataTypes[25].Longitud  := 20;
  DataTypes[25].Icon      := 22;

  DataTypes[26].Nombre    := 'Número tarjeta crédito';
  DataTypes[26].Categoria := dcPagos;
  DataTypes[26].TipoCampo := ftString;
  DataTypes[26].Longitud  := 20;
  DataTypes[26].Icon      := 23;

  DataTypes[27].Nombre    := 'Tipo tarjeta crédito';
  DataTypes[27].Categoria := dcPagos;
  DataTypes[27].TipoCampo := ftString;
  DataTypes[27].Longitud  := 20;
  DataTypes[27].Icon      := 24;

  DataTypes[28].Nombre    := 'Tipo moneda';
  DataTypes[28].Categoria := dcPagos;
  DataTypes[28].TipoCampo := ftString;
  DataTypes[28].Longitud  := 100;
  DataTypes[28].Icon      := 25;

  // Productos
  DataTypes[29].Nombre    := 'Nombre producto';
  DataTypes[29].Categoria := dcProductos;
  DataTypes[29].TipoCampo := ftString;
  DataTypes[29].Longitud  := 100;
  DataTypes[29].Icon      := 26;

  DataTypes[30].Nombre    := 'Categoria producto';
  DataTypes[30].Categoria := dcProductos;
  DataTypes[30].TipoCampo := ftString;
  DataTypes[30].Longitud  := 100;
  DataTypes[30].Icon      := 27;

  DataTypes[31].Nombre    := 'Unidades de longitud';
  DataTypes[31].Categoria := dcProductos;
  DataTypes[31].TipoCampo := ftString;
  DataTypes[31].Longitud  := 5;
  DataTypes[31].Icon      := 28;

  DataTypes[32].Nombre    := 'Unidades de peso';
  DataTypes[32].Categoria := dcProductos;
  DataTypes[32].TipoCampo := ftString;
  DataTypes[32].Longitud  := 5;
  DataTypes[32].Icon      := 29;

  DataTypes[33].Nombre    := 'Unidades de volumen';
  DataTypes[33].Categoria := dcProductos;
  DataTypes[33].TipoCampo := ftString;
  DataTypes[33].Longitud  := 5;
  DataTypes[33].Icon      := 30;

  DataTypes[34].Nombre    := 'Colores';
  DataTypes[34].Categoria := dcProductos;
  DataTypes[34].TipoCampo := ftString;
  DataTypes[34].Longitud  := 20;
  DataTypes[34].Icon      := 31;

  DataTypes[35].Nombre    := 'Talla de ropa';
  DataTypes[35].Categoria := dcProductos;
  DataTypes[35].TipoCampo := ftString;
  DataTypes[35].Longitud  := 5;
  DataTypes[35].Icon      := 32;

  DataTypes[36].Nombre    := 'Número ISBN';
  DataTypes[36].Categoria := dcProductos;
  DataTypes[36].TipoCampo := ftString;
  DataTypes[36].Longitud  := 15;
  DataTypes[36].Icon      := 33;

  DataTypes[37].Nombre    := 'Barcode';
  DataTypes[37].Categoria := dcProductos;
  DataTypes[37].TipoCampo := ftString;
  DataTypes[37].Longitud  := 15;
  DataTypes[37].Icon      := 34;

  DataTypes[38].Nombre    := 'Número tracking';
  DataTypes[38].Categoria := dcProductos;
  DataTypes[38].TipoCampo := ftString;
  DataTypes[38].Longitud  := 15;
  DataTypes[38].Icon      := 35;

  DataTypes[39].Nombre    := 'Método envio';
  DataTypes[39].Categoria := dcProductos;
  DataTypes[39].TipoCampo := ftString;
  DataTypes[39].Longitud  := 15;
  DataTypes[39].Icon      := 36;

  DataTypes[40].Nombre    := 'Tipos de empaques';
  DataTypes[40].Categoria := dcProductos;
  DataTypes[40].TipoCampo := ftString;
  DataTypes[40].Longitud  := 15;
  DataTypes[40].Icon      := 37;

  DataTypes[41].Nombre    := 'Frutas';
  DataTypes[41].Categoria := dcProductos;
  DataTypes[41].TipoCampo := ftString;
  DataTypes[41].Longitud  := 20;
  DataTypes[41].Icon      := 38;

  DataTypes[42].Nombre    := 'Bebidas';
  DataTypes[42].Categoria := dcProductos;
  DataTypes[42].TipoCampo := ftString;
  DataTypes[42].Longitud  := 30;
  DataTypes[42].Icon      := 39;

  DataTypes[43].Nombre    := 'Platos';
  DataTypes[43].Categoria := dcProductos;
  DataTypes[43].TipoCampo := ftString;
  DataTypes[43].Longitud  := 50;
  DataTypes[43].Icon      := 40;

  DataTypes[44].Nombre    := 'Super Mercado';
  DataTypes[44].Categoria := dcProductos;
  DataTypes[44].TipoCampo := ftString;
  DataTypes[44].Longitud  := 100;
  DataTypes[44].Icon      := 41;

  DataTypes[45].Nombre    := 'Ferreteria';
  DataTypes[45].Categoria := dcProductos;
  DataTypes[45].TipoCampo := ftString;
  DataTypes[45].Longitud  := 150;
  DataTypes[45].Icon      := 42;

  DataTypes[46].Nombre    := 'Tienda';
  DataTypes[46].Categoria := dcProductos;
  DataTypes[46].TipoCampo := ftString;
  DataTypes[46].Longitud  := 150;
  DataTypes[46].Icon      := 43;

  DataTypes[47].Nombre    := 'Deporte';
  DataTypes[47].Categoria := dcProductos;
  DataTypes[47].TipoCampo := ftString;
  DataTypes[47].Longitud  := 150;
  DataTypes[47].Icon      := 44;

  DataTypes[48].Nombre    := 'Muebles';
  DataTypes[48].Categoria := dcProductos;
  DataTypes[48].TipoCampo := ftString;
  DataTypes[48].Longitud  := 150;
  DataTypes[48].Icon      := 45;

  DataTypes[49].Nombre    := 'Jueguetes';
  DataTypes[49].Categoria := dcProductos;
  DataTypes[49].TipoCampo := ftString;
  DataTypes[49].Longitud  := 150;
  DataTypes[49].Icon      := 46;

  DataTypes[50].Nombre    := 'Salon de belleza';
  DataTypes[50].Categoria := dcProductos;
  DataTypes[50].TipoCampo := ftString;
  DataTypes[50].Longitud  := 150;
  DataTypes[50].Icon      := 47;



end;

procedure TFRPrincipal.cmbCategoriaPropertiesChange(Sender: TObject);
begin
  if cmbCategoria.ItemIndex >= 0 then
    begin
      CargarTiposDatos(TDataCategory(cmbCategoria.ItemIndex));
      MostrarVistaPrevia;
      edtNombreCampo.SetFocus;
    end;
end;

procedure TFRPrincipal.CargarTiposDatos(Categoria : TDataCategory);
var         //CARGAMOS LOS TIPOS DE CADA CATEGORIA
  I : Integer;
  imageItem : TcxImageComboBoxItem;  // Para agregar el item en runtime al TcxImageComboBox
begin
  cmbTipoDato.Properties.Items.Clear;

  for I := 0 to Length(DataTypes) - 1 do
    if DataTypes[I].Categoria = Categoria then
//      cmbTipoDato.ItemsEx.AddItem(DataTypes[I].Nombre, DataTypes[I].Icon, -1, -1, -1, nil);
      begin
        imageItem := TcxImageComboBoxProperties(cmbTipoDato.Properties).Items.Add as TcxImageComboBoxItem;
        imageItem.Description := DataTypes[I].Nombre;
        imageItem.Value       := DataTypes[I].Nombre;
        imageItem.ImageIndex  := DataTypes[I].Icon;
      end;

  if cmbTipoDato.Properties.Items.Count > 0 then
    begin
      cmbTipoDato.ItemIndex := 0;
//      cmbTipoDatoChange(nil);
      cmbTipoDatoPropertiesChange(cmbTipoDato);
    end;

end;

procedure TFRPrincipal.cmbTipoDatoPropertiesChange(Sender: TObject);
begin
  MostrarVistaPrevia;
  edtNombreCampo.SetFocus;
end;

procedure TFRPrincipal.CkbPermitirFiltrarClick(Sender: TObject);
var
  I : Integer;
  Marcar : Boolean;
begin
  Marcar := CkbPermitirFiltrar.Checked;
  cxGrid1DBTableView1.OptionsCustomize.ColumnFiltering := Marcar;

  for I:= 0 to cxGrid1DBTableView1.ColumnCount - 1 do
    begin
      cxGrid1DBTableView1.Columns[I].Options.Filtering := Marcar;
    end;

end;

procedure TFRPrincipal.CkbPermitirOrdenarClick(Sender: TObject);
var
  I : Integer;
  Marcar : Boolean;
begin
  Marcar := CkbPermitirOrdenar.Checked;
  cxGrid1DBTableView1.OptionsCustomize.ColumnSorting := Marcar;

  for I:= 0 to cxGrid1DBTableView1.ColumnCount - 1 do
    begin
      cxGrid1DBTableView1.Columns[I].Options.Sorting := Marcar;
    end;
end;

procedure TFRPrincipal.MostrarVistaPrevia;

  procedure ScrollToTop(cxMemo : TcxMemo);
  begin
    cxMemo.SelStart  := 0;  // Mueve el cursor al inicio del texto
    cxMemo.SelLength := 0;  // No selecciona ningún texto
    cxMemo.SetFocus;        // Enfoca el control para que se actualice la vista
  end;

const
  Generos : array[1..2] of string = ('Masculino','Femenino');
  Campos : array[1..44] of string = ('Nombre', 'Apellido', 'Nombre y Apellido',
                                     'Genero', 'Email', 'Teléfono', 'Tipo Teléfono',
                                     'Estado Civil', 'Pasatiempos', 'Empresa',
                                     'Cargo', 'Departamento', 'País', 'Ciudad',
                                     'Dirección', 'Medicamento',
                                     'Texto Aleatorio','Fecha', 'Metodo de Pago',
                                     'Número tarjeta crédito', 'Tipo tarjeta crédito',
                                     'Tipo moneda', 'Nombre producto',
                                     'Categoria producto', 'Unidades de longitud',
                                     'Unidades de peso', 'Unidades de volumen',
                                     'Colores', 'Talla de ropa', 'Número ISBN',
                                     'Barcode', 'Número tracking', 'Método envio',
                                     'Tipos de empaques', 'Frutas', 'Bebidas',
                                     'Platos', 'Super Mercado', 'Ferreteria',
                                     'Tienda', 'Deporte', 'Muebles', 'Jueguetes',
                                     'Salon de belleza');


var
  I, J    : Integer;
  Locale  : TDataLocale;
  Muestra, Mascara, sValor : string;
  MaritalStatus_US, MaritalStatus_ES : TArray<string>;
  TipoTelefono_US, TipoTelefono_ES : TArray<string>;
  PaymentMethods_US, PaymentMethods_ES, CardTypes : TArray<string>;
  SizeUnits, WeightUnits, VolumeUnits : TArray<string>;
  TipoLetras, TipoNumeros : TArray<string>;
  TarjetaCredito : TCreditCard; // Variable temporal para almacenar la tarjeta generada
  Persona : TPerson;
  AnioActual, AnioNacimientoMin, AnioNacimientoMax : Word;
begin
  LbLongitud.Visible    := False;
  EdLongitud.Visible    := False;
  RgModo.Visible        := False;
  GbMaxRandom.Visible   := False;
  GbRango.Visible       := False;
  RgModoFecha.Visible   := False;
  GbRandomFecha.Visible := False;
  GbRangoFecha.Visible  := False;
  RgTipoTamano.Visible  := False;
  RgGenero.Visible      := False;

  Genero := genderAny;

  case RgGenero.ItemIndex of
    0 : Genero := genderAny;
    1 : Genero := genderMale;
    2 : Genero := genderFemale;
  end;

  memPreview.Clear;

  if (cmbTipoDato.ItemIndex < 0) then
    Exit;

  Locale  := GetLocale;
  Muestra := 'Ejemplos : ';

  { CALCULO DEL RANGO DE LAS EDADES GENERADAS  }

  AnioActual := YearOf(Date); // Obtén el año actual

  // Calcula el rango de años de nacimiento para edades entre 25 y 65 años
  AnioNacimientoMin := AnioActual - 65;  // 1958 si el año actual es 2023
  AnioNacimientoMax := AnioActual - 25;  // 1998 si el año actual es 2023

  Randomize;

  for I := 1 to 10 do
  begin
    Persona := TDataGenerator.GetRandomPerson(Locale, Genero, AnioNacimientoMin, AnioNacimientoMax);

    if cmbTipoDato.Text = 'Nombre' then
      begin
        Muestra := Muestra + Persona.FirstName + ', ';
      end
    else
      if cmbTipoDato.Text = 'Apellido' then
        begin
          Muestra := Muestra + Persona.LastName + ', ';
        end
    else
      if cmbTipoDato.Text = 'Nombre y Apellido' then
        begin
          Muestra := Muestra + Persona.FullName + ', ';
        end
    else
      if cmbTipoDato.Text = 'Email' then
        begin
          Muestra := Muestra + Persona.Email + ', ';
        end
    else
      if cmbTipoDato.Text = 'Fecha nacimiento' then
        begin
          Muestra := Muestra + DateToStr(Persona.FechaNacimiento) + ', ';
        end
    else
      if cmbTipoDato.Text = 'Edad' then
        begin
          Muestra := Muestra + IntToStr(Persona.Edad) + ', ';
        end
    else
      if cmbTipoDato.Text = 'Pasatiempos' then
        begin
          Muestra := Muestra + TDataGenerator.GenerateRandomHobbies(Locale) + ', ';
        end
    else
      if cmbTipoDato.Text = 'Teléfono' then
        begin
          Muestra := Muestra + TDataGenerator.GenerateRandomPhoneNumber(Locale) + ', ';
        end
    else
      if cmbTipoDato.Text = 'Empresa' then
        begin
          Muestra := Muestra + TDataGenerator.GenerateRandomCompany(Locale) + ', ';
        end
    else
      if cmbTipoDato.Text = 'Cargo' then
        begin
          Muestra := Muestra + TDataGenerator.GenerateRandomJobTitle(Locale) + ', ';
        end
    else
      if cmbTipoDato.Text = 'Departamento' then
        begin
          Muestra := Muestra + TDataGenerator.GenerateRandomDepartment(Locale) + ', ';
        end
    else
      if cmbTipoDato.Text = 'País' then
        begin
          Muestra := Muestra + TDataGenerator.GetCountryAndCapital(Locale, Random(35)).Country + ', ';
        end
    else
      if cmbTipoDato.Text = 'Ciudad' then
        begin
          Muestra := Muestra + TDataGenerator.GetCountryAndCapital(Locale, Random(35)).Capital + ', ';
        end
    else
      if cmbTipoDato.Text = 'Dirección' then
        begin
          Muestra := Muestra + TDataGenerator.GetRandomAddress(Locale, Random(30)) + ', ';
        end
    else
      if cmbTipoDato.Text = 'Fecha' then
        begin
          case Locale of
            dlLatino : Mascara := 'dd/MM/yyyy';
            dlUS     : Mascara := 'MM/dd/yyyy';
          end;

          Muestra := Muestra + FormatDateTime(Mascara, TDataGenerator.GenerateRandomDate(StartOfTheMonth(Date), EndOfTheMonth(Date))) + ', ';
        end
    else
      if cmbTipoDato.Text = 'Fecha y Hora' then
        begin
          case Locale of
            dlLatino : Mascara := 'dd/MM/yyyy hh:nn:ss am/pm';
            dlUS     : Mascara := 'MM/dd/yyyy hh:nn:ss';
          end;

          Muestra := Muestra + FormatDateTime(Mascara, TDataGenerator.GenerateRandomDateTime(StartOfTheMonth(Now), EndOfTheMonth(Now))) + ', ';
        end
    else
      if cmbTipoDato.Text = 'Hora' then
        begin
          if RbLatino.Checked then
            Mascara := 'hh:nn:ss am/pm';

          if RbUS.Checked then
            Mascara := 'hh:nn:ss';

          Muestra := Muestra + FormatDateTime(Mascara, TDataGenerator.GenerateRandomTime(EncodeTime(8, 0, 0, 0), EncodeTime(22, 0, 0, 0))) + ', ';
        end
    else
      if cmbTipoDato.Text = 'Entero' then
        begin
          Muestra := Muestra + IntToStr(Random(999) + 1) + ', '
        end
    else
      if cmbTipoDato.Text = 'Decimal' then
        begin
           //  SeRango.Value := 1000;
          //  Muestra := Muestra + FormatFloat(',0.00', Random(SeRango.Value) + 1) + ', ';

          Muestra := Muestra + FormatFloat(',0.00', Random(1000) + 1) + ', ';
        end
    else
      if cmbTipoDato.Text = 'Medicamento' then
        begin
          Muestra := Muestra + TDataGenerator.GenerateRandomDrugName(Locale) + ', ';
        end
    else
      if cmbTipoDato.Text = 'Texto Aleatorio' then
        begin
           //  SeRango.Value := 10;
          // Muestra := Muestra + TDataGenerator.GenerateRandomString(Locale, SeRango.Value) + ', ';

          Muestra := Muestra + TDataGenerator.GenerateRandomString(Locale, 10) + ', ';
        end
    else
      if cmbTipoDato.Text = 'Número Aleatorio' then
        begin
          Muestra := Muestra + IntToStr(Random(999) + 1) + ', ';
        end
    else
      if cmbTipoDato.Text = 'Número tarjeta crédito' then
        begin
          TarjetaCredito := TDataGenerator.GenerateCreditCard(True); // Genera una sola tarjeta por iteración
          Muestra := Muestra + TarjetaCredito.Number + ', ';
        end
    else
      if cmbTipoDato.Text = 'Tipo moneda' then
        begin
          Muestra := Muestra + TDataGenerator.GenerateRandomCurrency(Locale) + ', ';
        end
    else
      if cmbTipoDato.Text = 'Nombre producto' then
        begin
          Muestra := Muestra + TDataGenerator.GenerateRandomProductName + ', ';
        end
    else
      if cmbTipoDato.Text = 'Categoria producto' then
        begin
          Muestra := Muestra + TDataGenerator.GenerateRandomProductCategory(Locale) + ', ';
        end
    else
      if cmbTipoDato.Text = 'Colores' then
        begin
          Muestra := Muestra + TDataGenerator.GenerateRandomColorName(Locale) + ', ';
        end
    else
      if cmbTipoDato.Text = 'Número ISBN' then
        begin
          Muestra := Muestra + TDataGenerator.GenerateRandomISBN + ', ';
        end
    else
      if cmbTipoDato.Text = 'Barcode' then
        begin
          Muestra := Muestra + TDataGenerator.GenerateRandomEAN13 + ', ';
        end
    else
      if cmbTipoDato.Text = 'Número tracking' then
        begin
          Muestra := Muestra + TDataGenerator.GenerateRandomTrackingNumber + ', ';
        end
    else
      if cmbTipoDato.Text = 'Método envio' then
        begin
          Muestra := Muestra + TDataGenerator.GenerateRandomShippingMethod + ', ';
        end
    else
      if cmbTipoDato.Text = 'Tipos de empaques' then
        begin
          Muestra := Muestra + TDataGenerator.GenerateRandomPackageType(Locale) + ', ';
        end
    else
      if cmbTipoDato.Text = 'Frutas' then
        begin
          Muestra := Muestra + TDataGenerator.GenerateRandomFruit(Locale) + ', ';
        end
    else
      if cmbTipoDato.Text = 'Bebidas' then
        begin
          Muestra := Muestra + TDataGenerator.GenerateRandomDrink(Locale) + ', ';
        end
    else
      if cmbTipoDato.Text = 'Platos' then
        begin
          Muestra := Muestra + TDataGenerator.GenerateRandomDish(Locale) + ', ';
        end
    else
      if cmbTipoDato.Text = 'Super Mercado' then
        begin
          Muestra := Muestra + TDataGenerator.GenerateRandomSupermarket(Locale) + ', ';
        end
    else
      if cmbTipoDato.Text = 'Ferreteria' then
        begin
          Muestra := Muestra + TDataGenerator.GenerateRandomHardware(Locale) + ', ';
        end
    else
      if cmbTipoDato.Text = 'Tienda' then
        begin
          Muestra := Muestra + TDataGenerator.GenerateRandomStoreItems(Locale) + ', ';
        end
    else
      if cmbTipoDato.Text = 'Deporte' then
        begin
          Muestra := Muestra + TDataGenerator.GenerateRandomSportItems(Locale) + ', ';
        end
    else
      if cmbTipoDato.Text = 'Muebles' then
        begin
          Muestra := Muestra + TDataGenerator.GenerateRandomFurnitureItems(Locale) + ', ';
        end
    else
      if cmbTipoDato.Text = 'Jueguetes' then
        begin
          Muestra := Muestra + TDataGenerator.GenerateRandomToy(Locale) + ', ';
        end
    else
      if cmbTipoDato.Text = 'Salon de belleza' then
        begin
          Muestra := Muestra + TDataGenerator.GenerateRandomBeautySalonServices(Locale) + ', ';
        end





  end;

  if cmbTipoDato.Text = 'Genero' then
    begin
      RgGenero.Visible := True;

      if GetScreenResolution = st4K then
        begin
           RgGenero.Top  := 24;
           //RgGenero.Left := 1049;
        end
      else if GetScreenResolution = stQHD then
        begin
          RgGenero.Top  := 28;
          //RgGenero.Left := 1224;
        end;

      for J:= 1 to 2 do
        Muestra := Muestra + Generos[J] + ', ';
    end;

  if cmbTipoDato.Text = 'Unidades de longitud' then
    begin
      SizeUnits := ['mm', 'cm', 'm', 'in', 'ft', 'yd', 'mi', 'nm', 'µm', 'dm',
                    'hm','dam', 'pc', 'AU', 'ly'];

      for sValor in SizeUnits do
        Muestra := Muestra + sValor + ', ';
    end;

  if cmbTipoDato.Text = 'Unidades de peso' then
    begin
      WeightUnits := ['g', 'kg', 'lb', 'mg', 'oz','t', 'st', 'ct'];

      for sValor in WeightUnits do
        Muestra := Muestra + sValor + ', ';
    end;

  if cmbTipoDato.Text = 'Unidades de volumen' then
    begin
      VolumeUnits := ['ml', 'cl', 'l', 'dl', 'hl', 'cc','gal', 'qt',
                      'pt', 'fl oz'];

      for sValor in VolumeUnits do
        Muestra := Muestra + sValor + ', ';
    end;

  if cmbTipoDato.Text = 'Talla de ropa' then
    begin
      RgTipoTamano.Visible := True;
      RgTipoTamano.Top     := 24;

      case RgTipoTamano.ItemIndex of
        0 : begin
              TipoLetras  := ['S', 'XS', 'M', 'L', 'XL', 'XXL'];
              for sValor in TipoLetras do
                Muestra := Muestra + sValor + ', ';

              TipoSize := Letters;
            end;

        1 : begin
              TipoNumeros := ['30', '32', '34', '36', '38', '40','42',
                              '44', '46', '48', '50'];

              for sValor in TipoNumeros do
                Muestra := Muestra + sValor + ', ';

              TipoSize := Numbers;
            end;
      end;
    end;





  if cmbTipoDato.Text = 'Tipo tarjeta crédito' then
    begin
      CardTypes := ['Mastercard','VISA','American Express','Diners Club', 'Discover'];

      for sValor in CardTypes do
        Muestra := Muestra + sValor + ', ';
    end;

  if cmbTipoDato.Text = 'Tipo Teléfono' then
    begin
      if RbLatino.Checked then
        begin
          TipoTelefono_ES := ['Celular', 'Fax', 'Casa', 'Móvil', 'Trabajo'];

          for sValor in TipoTelefono_ES do
            Muestra := Muestra + sValor + ', ';
        end;

      if RbUS.Checked then
        begin
          TipoTelefono_US := ['Cell', 'Fax', 'Home', 'Mobile', 'Work'];

          for sValor in TipoTelefono_US do
            Muestra := Muestra + sValor + ', ';
        end;
    end;

  if cmbTipoDato.Text = 'Estado Civil' then
    begin
      if RbLatino.Checked then
        begin
          MaritalStatus_ES := ['Casado', 'Soltero', 'Divorciado', 'Viudo'];

          for sValor in MaritalStatus_ES do
            Muestra := Muestra + sValor + ', ';
        end;

      if RbUS.Checked then
        begin
          MaritalStatus_US := ['Married', 'Single', 'Divorced', 'Widow'];

          for sValor in MaritalStatus_US do
            Muestra := Muestra + sValor + ', ';
        end;
    end;

  if cmbTipoDato.Text = 'Metodo de Pago' then
    begin
      if RbLatino.Checked then
        begin
          PaymentMethods_ES := ['Efectivo', 'Tarjeta crédito', 'Tarjeta débito', 'PayPal', 'Cheque', 'Giro postal', 'Transferencia bancaria'];

          for sValor in PaymentMethods_ES do
            Muestra := Muestra + sValor + ', ';
        end;

      if RbUS.Checked then
        begin
          PaymentMethods_US := ['Cash', 'Credit Card', 'Debit Card', 'PayPal', 'Check', 'Money order', 'Bank Transfer'];

          for sValor in PaymentMethods_US do
            Muestra := Muestra + sValor + ', ';
        end;
    end;



  if AnsiMatchStr(cmbTipoDato.Text, Campos) then  //Si lo que seleccione esta en el array
    begin
      LbLongitud.Visible := True;
      EdLongitud.Visible := True;
      EdLongitud.SetFocus;
    end;

  if AnsiMatchStr(cmbTipoDato.Text, ['Entero','Decimal']) then
    begin
      RgModo.Visible      := True;

      if GetScreenResolution = st4K then
        begin
          RgModo.Top  := 24;
          RgModo.Left := 657;
        end
      else if GetScreenResolution = stQHD then
        begin
          RgModo.Top  := 30;
          RgModo.Left := 768;
        end;

      RgModoClick(nil);
    end;

  if AnsiMatchStr(cmbTipoDato.Text, ['Texto Aleatorio']) then
    begin
      GbMaxRandom.Visible := True;

      if GetScreenResolution = st4K then
        begin
          GbMaxRandom.Top  := 24;
          GbMaxRandom.Left := 657;
        end
      else if GetScreenResolution = stQHD then
        begin
          GbMaxRandom.Top    := 30;
          GbMaxRandom.Left   := 768;
        end;

    end;

  if AnsiMatchStr(cmbTipoDato.Text, ['Fecha']) then
    begin
      RgModoFecha.Visible := True;

      if GetScreenResolution = st4K then
        begin
          RgModoFecha.Top  := 24;
          RgModoFecha.Left := 657;

          GbRandomFecha.Top  := 24;
          GbRandomFecha.Left := 910;
        end
      else if GetScreenResolution = stQHD then
        begin
          RgModoFecha.Top    := 30;
          RgModoFecha.Left   := 768;

          GbRandomFecha.Top  := 30;
          GbRandomFecha.Left := 1060;
        end;

      LbLongitud.Visible  := False;
      EdLongitud.Visible  := False;
      DtpDesde.Date       := StartOfTheMonth(Date);
      DtpHasta.Date       := EndOfTheMonth(Date);
      RgModoFechaClick(nil);
    end;

  if (cmbTipoDato.Text = 'País') and (RbUS.Checked) then
    begin  // Cuando es EEUU solo mostramos un solo pais y evitamos la duplicidad en la vista previa
      Delete(Muestra, Pos(',',Muestra)+2, MaxInt);
    end;

  Delete(Muestra, Length(Muestra)-1, 2); //Se elimina la ultima coma y el espacio
  memPreview.Lines.Add(Muestra);
//  memPreview.Perform(EM_SCROLL, SB_TOP, 0); //Mantenemos el memo al principio
//  memPreview.Perform(EM_LINESCROLL, 0, memPreview.Lines.Count); //Mantenemos el memo al final
  ScrollToTop(memPreview); //Mantenemos el cxmemo al principio
end;

procedure TFRPrincipal.RbLatinoClick(Sender: TObject);
begin
  if RbLatino.Checked then
    MostrarVistaPrevia;
end;

procedure TFRPrincipal.RbUSClick(Sender: TObject);
begin
  if RbUS.Checked then
    MostrarVistaPrevia;
end;

procedure TFRPrincipal.RgFormatoExpClick(Sender: TObject);
begin
  GbDelimitador.Visible := False;

  case RgFormatoExp.ItemIndex of
    0 : btnCrearArchivo.OptionsImage.ImageIndex := 0;
    1 : btnCrearArchivo.OptionsImage.ImageIndex := 1;
    2 : btnCrearArchivo.OptionsImage.ImageIndex := 2;
    3 : btnCrearArchivo.OptionsImage.ImageIndex := 3;
    4 : begin
          btnCrearArchivo.OptionsImage.ImageIndex := 4;
          GbDelimitador.Visible := True;
          EdDelimitador.SetFocus;
        end;
    5 : btnCrearArchivo.OptionsImage.ImageIndex := 5;
  end;

end;

procedure TFRPrincipal.RgModoClick(Sender: TObject);
begin
  case RgModo.ItemIndex of
    0: begin  // Random
         GbMaxRandom.Visible := True;
         GbMaxRandom.Caption := 'Maximo Random';

         if GetScreenResolution = st4K then
           begin
             GbMaxRandom.Top  := 24;
             GbMaxRandom.Left := 1049;
           end
         else if GetScreenResolution = stQHD then
           begin
             GbMaxRandom.Top  := 30;
             GbMaxRandom.Left := 1224;
           end;

         SeRango.Value               := 0;
         GbRango.Visible             := False;
       end;

    1: begin  // Rango
         GbRango.Visible             := True;
         GbRango.Caption             := 'Rango de ' + cmbTipoDato.Text;

         if GetScreenResolution = st4K then
           begin
             GbRango.Top     := 24;
             GbRango.Left    := 1049;
           end
         else if GetScreenResolution = stQHD then
           begin
             GbRango.Top     := 30;
             GbRango.Left    := 1224;
           end;

         EdMin.SetFocus;
         GbMaxRandom.Visible         := False;
       end;

    2: begin  // Secuencial
         GbMaxRandom.Visible         := True;
         GbMaxRandom.Caption         := 'Inicio de Secuencia';
         SeRango.Value               := 1;
         GbRango.Visible             := False;
       end;
  end;

end;

procedure TFRPrincipal.RgModoFechaClick(Sender: TObject);
begin
  case RgModoFecha.ItemIndex of
    0 : begin
          GbRandomFecha.Visible := True;
          EdAnioInicial.SetFocus;
          GbRangoFecha.Visible := False;
        end;

    1 : begin
          GbRangoFecha.Visible := True;

          if GetScreenResolution = st4K then
            begin
              GbRangoFecha.Top     := 24;
              GbRangoFecha.Left    := 910;
            end
          else if GetScreenResolution = stQHD then
            begin
              GbRangoFecha.Top     := 30;
              GbRangoFecha.Left    := 1060;
            end;

          GbRandomFecha.Visible := False;
        end;
  end;
end;

procedure TFRPrincipal.RgTipoTamanoClick(Sender: TObject);
begin
  MostrarVistaPrevia;
end;

function TFRPrincipal.GetLocale : TDataLocale;
begin
  if RbUS.Checked then
    begin
      FormatSettings.ShortDateFormat := 'MM/dd/yyyy';
      Result := dlUS
    end
  else
    begin
      FormatSettings.ShortDateFormat := 'dd/MM/yyyy';
      Result := dlLatino
    end;
end;

procedure TFRPrincipal.btnAgregarCampoClick(Sender: TObject);
const
  Campos : array[1..41] of string = ('Nombre', 'Apellido', 'Nombre y Apellido',
                                     'Email', 'Teléfono', 'Tipo Teléfono',
                                     'Estado Civil', 'Pasatiempos', 'Empresa',
                                     'Cargo', 'Departamento', 'País', 'Ciudad',
                                     'Dirección', 'Medicamento',
                                     'Texto Aleatorio','Número tarjeta crédito',
                                     'Tipo tarjeta crédito', 'Tipo moneda',
                                     'Nombre producto', 'Categoria producto',
                                     'Unidades de longitud', 'Unidades de peso',
                                     'Unidades de volumen', 'Colores',
                                     'Talla de ropa', 'Número ISBN', 'Barcode',
                                     'Número tracking', 'Método envio',
                                     'Tipos de empaques', 'Frutas', 'Bebidas',
                                     'Platos', 'Super Mercado', 'Ferreteria',
                                     'Tienda', 'Deporte', 'Muebles', 'Jueguetes',
                                     'Salon de belleza');

var
  FieldExists : Boolean;
  I : Integer;
begin
//  if FDMemTable1.RecordCount > 0 then
//    begin
//      MessageDlg('Antes de agregar un campo, debe limpiar la tabla primero.' +#13+
//                 'Por favor verifique.', mtWarning, [mbOK], 0);
//      BtnLimpiar.SetFocus;
//      Exit;
//    end;

  if RgModo.ItemIndex = 1 then
    begin
      if StrToInt(EdMin.Text) > StrToInt(EdMax.Text) then
        begin
          MessageDlg('El valor minimo no puede ser mayor al maximo',
                     mtWarning, [mbOK], 0);
          Exit;
        end;
    end;

  if edtNombreCampo.Text = '' then
    begin
      MessageDlg('Debe especificar un nombre para el campo', mtWarning, [mbOK], 0);
      edtNombreCampo.SetFocus;
      Exit;
    end;

  if AnsiMatchStr(cmbTipoDato.Text, Campos) then   //Si lo que seleccione esta en el array
    begin
      if EdLongitud.Text = EmptyStr then
        begin
          MessageDlg('Debe digitar la longitud del campo.',
                     TMsgDlgType.mtWarning, [mbOK], 0);
          EdLongitud.SetFocus;
          Exit;
        end;
    end;

  FieldExists := False;

  // Verificar si el campo ya existe
  for I:= 0 to FDMemTable1.FieldCount - 1 do
  begin
    if SameText(FDMemTable1.Fields[I].FieldName, Trim(edtNombreCampo.Text)) then
      begin
        FieldExists := True;
        Break;
      end;
  end;

  if FieldExists then
    begin
      MessageDlg('El campo ' + Trim(edtNombreCampo.Text) + ' ya existe.',
                 mtWarning, [mbOK], 0);
      Exit;
    end;

  AgregarCampo;
  edtNombreCampo.Clear;
  edtNombreCampo.SetFocus;
  EdLongitud.Clear;
end;

procedure TFRPrincipal.AgregarCampo;
var
  Campo    : TField;
  I        : Integer;
  TipoInfo : TDataTypeInfo;
  NumConfig : TNumericConfig;
  DateConfig : TDateConfig;
  Longitud : TLongitudTexto;
begin
  if FDMemTable1.Active then
    FDMemTable1.Close;

  // Buscar la información del tipo seleccionado
  for I := 0 to Length(DataTypes) - 1 do
    if (DataTypes[I].Categoria = TDataCategory(cmbCategoria.ItemIndex))
    and (DataTypes[I].Nombre = cmbTipoDato.Text) then
    begin
      TipoInfo := DataTypes[I];
      Break;
    end;

  // Crear el campo según el tipo
  case TipoInfo.TipoCampo of
    ftString :
      begin
        Campo := TStringField.Create(FDMemTable1);
//        TStringField(Campo).Size := TipoInfo.Longitud;
//        TStringField(Campo).Size := StrToInt(EdLongitud.Text);

        if Pos('Texto Aleatorio', cmbTipoDato.Text) > 0 then  //En el texto aleatorio almacenamos la longitud del texto establecida por el usuario
          begin
            TStringField(Campo).Size := StrToInt(EdLongitud.Text); //Tamaño del campo
            // Añadir la longitud del texto aleatorio a la lista
            Longitud.NombreCampo := edtNombreCampo.Text;
            Longitud.Categoria := dcPersonalizado;
            Longitud.TipoCampo := ftString;
            Longitud.Longitud  := SeRango.Value; //Longitud del texto
            LongitudTexto.Add(Longitud);
          end
        else
          TStringField(Campo).Size := StrToInt(EdLongitud.Text);
      end;

//    ftInteger : Campo  := TIntegerField.Create(FDMemTable1);
//    ftFloat : Campo    := TFloatField.Create(FDMemTable1);

    ftInteger, ftFloat :
      begin
        if TipoInfo.TipoCampo = ftInteger then
          Campo := TIntegerField.Create(FDMemTable1)
        else
          Campo := TFloatField.Create(FDMemTable1);

        // Guardar la configuración numérica
        NumConfig.Modo := TModoGeneracion(RgModo.ItemIndex);

        case NumConfig.Modo of
          mgRandom:
            NumConfig.MaxRandom := SeRango.Value;

          mgRango:
            begin
              NumConfig.MinRango := StrToInt(EdMin.Text);
              NumConfig.MaxRango := StrToInt(EdMax.Text);
            end;

          mgSecuencial :
            begin     // Aqui manejaremos el inicio de la secuencia
              if TipoInfo.TipoCampo = ftInteger then
                NumConfig.MinRango := SeRango.Value;


//              // Solo guardar formato para enteros
//              if TipoInfo.TipoCampo = ftInteger then
//                NumConfig.FormatoSecuencial := EdFormatoSecuencial.Text
//              else
//                NumConfig.FormatoSecuencial := '';  // Para float no usamos formato
            end;
        end;

        FNumericConfigs.AddOrSetValue(edtNombreCampo.Text, NumConfig);
      end;


//    ftDate : Campo     := TDateField.Create(FDMemTable1);

    ftDate :
      begin
        Campo  := TDateField.Create(FDMemTable1);

        // Guardar la configuración de fecha
        DateConfig.Modo := TModoGeneracionFecha(RgModoFecha.ItemIndex);

        case DateConfig.Modo of
          mgdRandom : begin
                        DateConfig.AnioIni  := StrToIntDef(EdAnioInicial.Text, 0);
                        DateConfig.CantDate := StrToIntDef(EdCantAnios.Text, 0);
                      end;

          mgdRango :  begin
                        DateConfig.DateIni := DtpDesde.Date;
                        DateConfig.DateFin := DtpHasta.Date;
                      end;
        end;

        FDateConfigs.AddOrSetValue(edtNombreCampo.Text, DateConfig);
      end;


    ftDateTime : Campo := TDateTimeField.Create(FDMemTable1);
  else
    raise Exception.Create('Tipo de campo no soportado');
  end;

  Campo.FieldName    := edtNombreCampo.Text;
  Campo.DisplayLabel := edtNombreCampo.Text + ' (' + cmbTipoDato.Text + ')';
  Campo.DataSet      := FDMemTable1;


  // Uso del procedimiento para agregar una columna a un grid

  AddGridColumn(cxGrid1DBTableView1, Campo.FieldName, Campo.DisplayLabel, Campo.Size);
  FDMemTable1.Open;
end;

procedure TFRPrincipal.btnCrearArchivoClick(Sender: TObject);
var
  I, J, Cantidad : Integer;
  Field          : TField;
  Locale         : TDataLocale;
  RandomDate     : TDate;
  RandomDateTime : TDateTime;
  RandomTime     : TTime;
  FilePath       : string;
  NumConfig      : TNumericConfig;
  DateConfig     : TDateConfig;
  RandomValue : Integer;
  RandomFloat : Double;
  ExisteCampoEmail : Boolean;
  TarjetaCredito : TCreditCard; // Variable temporal para almacenar la tarjeta generada
  Persona : TPerson;
  AnioActual, AnioNacimientoMin, AnioNacimientoMax : Word;
begin
  // Validación básica
  if edtCantidadReg.Text = EmptyStr then
    begin
      MessageDlg('Debe especificar la cantidad de registros a generar.',
                 TMsgDlgType.mtWarning, [mbOK], 0);
      edtCantidadReg.SetFocus;
      Exit;
    end;

  if not FDMemTable1.Active then
    begin
      MessageDlg('Debe agregar al menos un campo.',
                 TMsgDlgType.mtWarning, [mbOK], 0);
      Exit;
    end;

  if (RgFormatoExp.ItemIndex = 4) and (Trim(EdDelimitador.Text) = EmptyStr) then
    begin
      MessageDlg('Debe especificar el delimitador del archivo.',
                 TMsgDlgType.mtWarning, [mbOK], 0);
      EdDelimitador.SetFocus;
      Exit;
    end;

  Cantidad := StrToInt(edtCantidadReg.Text);
  Locale   := GetLocale;

  Genero := genderAny;
  case RgGenero.ItemIndex of
    0 : Genero := genderAny;
    1 : Genero := genderMale;
    2 : Genero := genderFemale;
  end;

  FSecuencial := 0;
  RandomFloat := 0;

  { CALCULO DEL RANGO DE LAS EDADES GENERADAS  }

  AnioActual := YearOf(Date); // Obtén el año actual

  // Calcula el rango de años de nacimiento para edades entre 25 y 65 años
  AnioNacimientoMin := AnioActual - 65;  // 1958 si el año actual es 2023
  AnioNacimientoMax := AnioActual - 25;  // 1998 si el año actual es 2023

  // Limpiar datos existentes
  FDMemTable1.EmptyDataSet;

  Randomize;

  Screen.Cursor := crHourGlass;
  try
    // Generar registros
    FDMemTable1.DisableControls;
    try
      for I := 1 to Cantidad do
      begin
        FDMemTable1.Append;

        // --- Generar la tarjeta aquí, una vez por registro ---
        TarjetaCredito := TDataGenerator.GenerateCreditCard(True);

        Persona := TDataGenerator.GetRandomPerson(Locale, Genero, AnioNacimientoMin, AnioNacimientoMax);

        // Generar datos para cada campo
        for Field in FDMemTable1.Fields do
        begin
          case Field.DataType of
            ftString :
              begin
                // Verificar el tipo de dato por el DisplayLabel
                if Pos('Nombre y Apellido', Field.DisplayLabel) > 0 then
                  Field.AsString := Persona.FullName
                else if Pos('Nombre producto', Field.DisplayLabel) > 0 then
                  Field.AsString := TDataGenerator.GenerateRandomProductName
                else if Pos('Nombre', Field.DisplayLabel) > 0 then
                  Field.AsString := Persona.FirstName
                else if Pos('Apellido', Field.DisplayLabel) > 0 then
                  Field.AsString := Persona.LastName
                else if Pos('Genero', Field.DisplayLabel) > 0 then
                  Field.AsString := Persona.Sexo
                else if Pos('Email', Field.DisplayLabel) > 0 then
                  Field.AsString := Persona.Email
                else if Pos('Tipo Teléfono', Field.DisplayLabel) > 0 then
                  Field.AsString := TDataGenerator.GenerateRandomPhoneNumberType(Locale)
                else if Pos('Teléfono', Field.DisplayLabel) > 0 then
                  Field.AsString := TDataGenerator.GenerateRandomPhoneNumber(Locale)
                else if Pos('Estado Civil', Field.DisplayLabel) > 0 then
                  Field.AsString := TDataGenerator.GenerateRandomMaritalStatus(Locale)
                else if Pos('Pasatiempos', Field.DisplayLabel) > 0 then
                  Field.AsString := TDataGenerator.GenerateRandomHobbies(Locale)
                else if Pos('Empresa', Field.DisplayLabel) > 0 then
                  Field.AsString := TDataGenerator.GenerateRandomCompany(Locale)
                else if Pos('Cargo', Field.DisplayLabel) > 0 then
                  Field.AsString := TDataGenerator.GenerateRandomJobTitle(Locale)
                else if Pos('Departamento', Field.DisplayLabel) > 0 then
                  Field.AsString := TDataGenerator.GenerateRandomDepartment(Locale)
                else if Pos('País', Field.DisplayLabel) > 0 then
                  Field.AsString := TDataGenerator.GetCountryAndCapital(Locale, Random(35)).Country
                else if Pos('Ciudad', Field.DisplayLabel) > 0 then
                  Field.AsString := TDataGenerator.GetCountryAndCapital(Locale, Random(35)).Capital
                else if Pos('Dirección', Field.DisplayLabel) > 0 then
                  Field.AsString := TDataGenerator.GetRandomAddress(Locale, Random(30))
                else if Pos('Medicamento', Field.DisplayLabel) > 0 then
                  Field.AsString := TDataGenerator.GenerateRandomDrugName(Locale)
                else if Pos('Metodo de Pago', Field.DisplayLabel) > 0 then
                  Field.AsString := TDataGenerator.GenerateRandomPaymentMethod(Locale)
                else if Pos('Número tarjeta crédito', Field.DisplayLabel) > 0 then
                  Field.AsString := TarjetaCredito.Number
                else if Pos('Tipo tarjeta crédito', Field.DisplayLabel) > 0 then
                  Field.AsString := TarjetaCredito.CardType
                else if Pos('Tipo moneda', Field.DisplayLabel) > 0 then
                  Field.AsString := TDataGenerator.GenerateRandomCurrency(Locale)
                else if Pos('Categoria producto', Field.DisplayLabel) > 0 then
                  Field.AsString := TDataGenerator.GenerateRandomProductCategory(Locale)
                else if Pos('Unidades de longitud', Field.DisplayLabel) > 0 then
                  Field.AsString := TDataGenerator.GenerateRandomSizeUnit
                else if Pos('Unidades de peso', Field.DisplayLabel) > 0 then
                  Field.AsString := TDataGenerator.GenerateRandomWeightUnit
                else if Pos('Unidades de volumen', Field.DisplayLabel) > 0 then
                  Field.AsString := TDataGenerator.GenerateRandomVolumeUnit
                else if Pos('Colores', Field.DisplayLabel) > 0 then
                  Field.AsString := TDataGenerator.GenerateRandomColorName(Locale)
                else if Pos('Talla de ropa', Field.DisplayLabel) > 0 then
                  Field.AsString := TDataGenerator.GenerateRandomClothingSize(TipoSize)
                else if Pos('Número ISBN', Field.DisplayLabel) > 0 then
                  Field.AsString := TDataGenerator.GenerateRandomISBN
                else if Pos('Barcode', Field.DisplayLabel) > 0 then
                  Field.AsString := TDataGenerator.GenerateRandomEAN13
                else if Pos('Número tracking', Field.DisplayLabel) > 0 then
                  Field.AsString := TDataGenerator.GenerateRandomTrackingNumber
                else if Pos('Método envio', Field.DisplayLabel) > 0 then
                  Field.AsString := TDataGenerator.GenerateRandomShippingMethod
                else if Pos('Tipos de empaques', Field.DisplayLabel) > 0 then
                  Field.AsString := TDataGenerator.GenerateRandomPackageType(Locale)
                else if Pos('Frutas', Field.DisplayLabel) > 0 then
                  Field.AsString := TDataGenerator.GenerateRandomFruit(Locale)
                else if Pos('Bebidas', Field.DisplayLabel) > 0 then
                  Field.AsString := TDataGenerator.GenerateRandomDrink(Locale)
                else if Pos('Platos', Field.DisplayLabel) > 0 then
                  Field.AsString := TDataGenerator.GenerateRandomDish(Locale)
                else if Pos('Super Mercado', Field.DisplayLabel) > 0 then
                  Field.AsString := TDataGenerator.GenerateRandomSupermarket(Locale)
                else if Pos('Ferreteria', Field.DisplayLabel) > 0 then
                  Field.AsString := TDataGenerator.GenerateRandomHardware(Locale)
                else if Pos('Tienda', Field.DisplayLabel) > 0 then
                  Field.AsString := TDataGenerator.GenerateRandomStoreItems(Locale)
                else if Pos('Deporte', Field.DisplayLabel) > 0 then
                  Field.AsString := TDataGenerator.GenerateRandomSportItems(Locale)
                else if Pos('Muebles', Field.DisplayLabel) > 0 then
                  Field.AsString := TDataGenerator.GenerateRandomFurnitureItems(Locale)
                else if Pos('Jueguetes', Field.DisplayLabel) > 0 then
                  Field.AsString := TDataGenerator.GenerateRandomToy(Locale)
                else if Pos('Salon de belleza', Field.DisplayLabel) > 0 then
                  Field.AsString := TDataGenerator.GenerateRandomBeautySalonServices(Locale)




                else if Pos('Texto Aleatorio', Field.DisplayLabel) > 0 then
//                  Field.AsString := TDataGenerator.GenerateRandomString(Locale, 10);
                  begin
                    // Recorrer la lista de longitud almacenada
                    for J:= 0 to LongitudTexto.Count - 1 do
                      begin
                        if (LongitudTexto[J].Categoria = dcPersonalizado)
                        and (LongitudTexto[J].TipoCampo = ftString)  //Obtenemos el nombre del campo del displaylabel para compararlo
                        and (LongitudTexto[J].NombreCampo = Copy(Field.DisplayLabel,1, Pos(' (', Field.DisplayLabel)-1)) then
                          begin
                            Field.AsString := TDataGenerator.GenerateRandomString(Locale, LongitudTexto[J].Longitud);
                            Break;
                          end;
                      end;
                  end;
              end;

{            ftInteger :
              Field.AsInteger := Random(10000);

            ftFloat :
              begin
                Field.AsFloat := TDataGenerator.RandomRangeDecimal(1, 10000);
                (Field as TFloatField).DisplayFormat := ',0.00';
              end;
}

{            ftInteger :
              begin
                NumConfig := GetNumericConfig(Field.FieldName);

                case NumConfig.Modo of
                  mgRandom:
                    begin
                      if NumConfig.MaxRandom > 0 then
                        RandomValue := Random(NumConfig.MaxRandom + 1)
                      else
                        RandomValue := Random(10000);
                      Field.AsInteger := RandomValue;
                    end;

                  mgRango:
                    Field.AsInteger := Random(NumConfig.MaxRango - NumConfig.MinRango + 1)
                                     + NumConfig.MinRango;

                  mgSecuencial:
                    begin
                      Inc(FSecuencial);
                      if NumConfig.FormatoSecuencial <> '' then
                        Field.AsString := FormatFloat(NumConfig.FormatoSecuencial, FSecuencial)
                      else
                        Field.AsInteger := FSecuencial;
                    end;
                end;
              end;

            ftFloat:
              begin
                NumConfig := GetNumericConfig(Field.FieldName);

                case NumConfig.Modo of
                  mgRandom:
                    begin
                      if NumConfig.MaxRandom > 0 then
                        RandomFloat := Random * NumConfig.MaxRandom
                      else
                        RandomFloat := Random * 10000;
                      Field.AsFloat := RandomFloat;
                    end;

                  mgRango:
                    begin
                      RandomFloat := Random;
                      Field.AsFloat := NumConfig.MinRango +
                        (RandomFloat * (NumConfig.MaxRango - NumConfig.MinRango));
                    end;

                  mgSecuencial:
                    begin
                      Inc(FSecuencial);
                      if NumConfig.FormatoSecuencial <> '' then
                        Field.AsString := FormatFloat(NumConfig.FormatoSecuencial, FSecuencial)
                      else
                        Field.AsFloat := FSecuencial;
                    end;
                end;

                (Field as TFloatField).DisplayFormat := ',0.00';
              end;
}

            ftInteger :
              begin
                if Pos('Edad', Field.DisplayLabel) > 0 then
                  begin
                    Field.AsInteger := Persona.Edad;
                    Continue;
                  end;

                NumConfig := GetNumericConfig(Field.FieldName);

                case NumConfig.Modo of
                  mgRandom:
                    begin
                      if NumConfig.MaxRandom > 0 then
                        RandomValue := Random(NumConfig.MaxRandom) + 1
                      else
                        RandomValue := Random(10000) + 1;
                      Field.AsInteger := RandomValue;
                    end;

                  mgRango:
                    Field.AsInteger := Random(NumConfig.MaxRango - NumConfig.MinRango + 1)
                                     + NumConfig.MinRango;

                  mgSecuencial:
                    begin
//                      Inc(FSecuencial);

                     { if NumConfig.FormatoSecuencial <> '' then
                        Field.AsString := FormatFloat(NumConfig.FormatoSecuencial, FSecuencial)
                      else
                        Field.AsInteger := FSecuencial; }

//                      Field.AsInteger := FSecuencial;



                       // Aqui manejaremos el inicio de la secuencia

                      if NumConfig.MinRango = 1 then  // iniciamos la secuencia desde 1
                         begin
                           Inc(FSecuencial);
                           Field.AsInteger := FSecuencial;
                         end
                      else
                        begin  // iniciamos la secuencia desde un número especifico
                          Inc(FSecuencial);
                          Field.AsInteger := (FSecuencial - 1) + NumConfig.MinRango;
                        end;

                    end;
                end;
              end;

            ftFloat :
              begin
                NumConfig := GetNumericConfig(Field.FieldName);

                case NumConfig.Modo of
                  mgRandom:
                    begin
                      if NumConfig.MaxRandom > 0 then
                        RandomFloat := Random * NumConfig.MaxRandom
                      else
                        RandomFloat := Random * 10000;
                    end;

                  mgRango:
                    begin
                      RandomFloat := Random;
                      RandomFloat := NumConfig.MinRango +
                        (RandomFloat * (NumConfig.MaxRango - NumConfig.MinRango));
                    end;

                  mgSecuencial:
                    begin
                      Inc(FSecuencial);
                      RandomFloat := FSecuencial;
                    end;
                end;

                Field.AsFloat := RandomFloat;
                (Field as TFloatField).DisplayFormat := ',0.00';
              end;

//            ftDate :
//              begin
//                RandomDate := TDataGenerator.GenerateRandomDate(
//                  IncMonth(Date, -12),  // Último año
//                  Date                  // Hasta hoy
//                );
//                Field.AsDateTime := RandomDate;
//
//                if RbLatino.Checked then
//                  (Field as TDateField).DisplayFormat := 'dd/MM/yyyy';
//
//                if RbUS.Checked then
//                  (Field as TDateField).DisplayFormat := 'MM/dd/yyyy';
//              end;

            ftDate :
              begin
                case Locale of
                  dlLatino : (Field as TDateField).DisplayFormat := 'dd/MM/yyyy';
                  dlUS     : (Field as TDateField).DisplayFormat := 'MM/dd/yyyy';
                end;

                if Pos('Fecha nacimiento', Field.DisplayLabel) > 0 then
                  begin
                    Field.AsDateTime := Persona.FechaNacimiento;
                    Continue;
                  end;

                DateConfig := GetDateConfig(Field.FieldName);

                case DateConfig.Modo of
                  mgdRandom :
                    begin
                      Field.AsDateTime := TDataGenerator.GenerateRandomDate(DateConfig.AnioIni, DateConfig.CantDate);
                    end;

                  mgdRango:
                    begin
                      Field.AsDateTime := TDataGenerator.GenerateRandomDate(DateConfig.DateIni, DateConfig.DateFin);
                    end;
                end;

              end;

            ftDateTime :
              begin
                case Locale of
                  dlLatino : (Field as TDateTimeField).DisplayFormat := 'dd/MM/yyyy hh:mm:ss am/pm';
                  dlUS     : (Field as TDateTimeField).DisplayFormat := 'MM/dd/yyyy hh:mm:ss';
                end;

                RandomDateTime := TDataGenerator.GenerateRandomDateTime(
                  IncMonth(Now, -12),  // Último año
                  Now                  // Hasta ahora
                );
                Field.AsDateTime := RandomDateTime;
              end;

            ftTime :
              begin
                RandomTime := TDataGenerator.GenerateRandomTime(
                  EncodeTime(8, 0, 0, 0),    // 8:00 AM
                  EncodeTime(18, 0, 0, 0)    // 6:00 PM
                );
                Field.AsDateTime := RandomTime;
              end;
          end;
        end;

        FDMemTable1.Post;
      end;

      case RgFormatoExp.ItemIndex of
        0 : begin
              // Guardar como CSV
              FilePath := ExtractFilePath(Application.ExeName) + 'GeneratedData.csv';

              if FileExists(FilePath) then
                DeleteFile(FilePath);

              SaveAsCSV(FilePath, FDMemTable1);
            end;

        1 : begin
              // Guardar como JSON
              FilePath := ExtractFilePath(Application.ExeName) + 'GeneratedData.json';

              if FileExists(FilePath) then
                DeleteFile(FilePath);

              try
                SaveAsJSON(FilePath, FDMemTable1);
              except
                on E : Exception do
                begin
                  MessageDlg('Error al guardar JSON : ' + E.Message,
                             TMsgDlgType.mtError, [mbOK], 0);
                end;
              end;
            end;

        2 : begin
              FilePath := ExtractFilePath(Application.ExeName) + 'GeneratedData.xml';

              if FileExists(FilePath) then
                DeleteFile(FilePath);

              // Guardar como XML
              SaveAsXML(FilePath, FDMemTable1);
            end;

        3 : begin
              FilePath := ExtractFilePath(Application.ExeName) + 'GeneratedData.yaml';

              if FileExists(FilePath) then
                DeleteFile(FilePath);

              // Guardar como YAML
              SaveAsYAML(FilePath, FDMemTable1);
            end;

        4 : begin
              FilePath := ExtractFilePath(Application.ExeName) + 'GeneratedData.txt';

              if FileExists(FilePath) then
                DeleteFile(FilePath);

              // Guardar como TXT
              SaveDataSetToTXT(FDMemTable1, FilePath, EdDelimitador.Text[1]);
            end;

        5 : begin
              FilePath := ExtractFilePath(Application.ExeName) + 'GeneratedData.xlsx';

              if FileExists(FilePath) then
                DeleteFile(FilePath);

              { El método ExportGridDataToXLSX exporta todos los datos GridView
                independientemente del parámetro ASaveAll. }
              FDMemTable1.EnableControls;
              try
                ExportGridDataToXLSX('GeneratedData', cxGrid1, False, False, True, 'xlsx', nil);
              finally
                FDMemTable1.DisableControls;
              end;

               { Si desea exportar sólo los registros seleccionados, es necesario utilizar
                 el método ExportGridToXLSX. }

            {  FDMemTable1.EnableControls;
              try
                ExportGridToXLSX('ExportGridToXLSX', cxGrid1, False, False, True,
                                 'xlsx', nil);
              finally
                FDMemTable1.DisableControls;
              end;
             }

            end;
      end;

    finally
      FDMemTable1.EnableControls;
    end;

  finally
    Screen.Cursor := crDefault;
  end;

  MessageDlg(Format('Archivo ' + RgFormatoExp.Properties.Items.Items[RgFormatoExp.ItemIndex].Caption +
                    ' generado exitosamente con %d registros.'#13#10'Ubicación: %s',
                    [Cantidad, FilePath]), TMsgDlgType.mtInformation, [mbOK], 0);
end;

procedure TFRPrincipal.BtnLimpiarClick(Sender: TObject);
begin
  // Limpiar datos existentes

  if FDMemTable1.Active then
    FDMemTable1.Close;

  FDMemTable1.FieldDefs.Clear;
  FDMemTable1.Fields.Clear;
  FDMemTable1.IndexDefs.Clear;
  FDMemTable1.IndexesActive := False;

  FNumericConfigs.Clear;
  FDateConfigs.Clear;
  FSecuencial := 0;

  edtCantidadReg.Clear;
  cxGrid1DBTableView1.ClearItems; // Elimina todas las columnas del cxGrid

end;

// Función auxiliar para obtener la configuración de un campo númerico
function TFRPrincipal.GetNumericConfig(const FieldName : string) : TNumericConfig;
begin
  if not FNumericConfigs.TryGetValue(FieldName, Result) then
    begin
      // Configuración por defecto si no se encuentra
      Result.Modo      := mgRandom;
      Result.MaxRandom := 10000;
      Result.MinRango  := 1;
      Result.MaxRango  := 100;
  //    Result.FormatoSecuencial := '0';
    end;
end;

// Función auxiliar para obtener la configuración de un campo fecha
function TFRPrincipal.GetDateConfig(const FieldName : string) : TDateConfig;
begin
  if not FDateConfigs.TryGetValue(FieldName, Result) then
    begin
      // Configuración por defecto si no se encuentra
      Result.Modo      := mgdRandom;
      Result.AnioIni   := YearOf(Date);
      Result.CantDate  := 3;
      Result.DateIni   := StartOfTheMonth(Date);
      Result.DateFin   := EndOfTheMonth(Date);
    end;
end;

procedure TFRPrincipal.SeRangoPropertiesChange(Sender: TObject);
begin
  // Evitar números negativos
  if SeRango.Value < 0 then
    SeRango.Value := 0;
end;

procedure TFRPrincipal.SaveAsCSV(myFileName : string; DataSet : TDataSet);
var
  myTextFile : TextFile;
  I : Integer;
  S : string;
begin
  //create a new file
  AssignFile(myTextFile, myFileName);
  Rewrite(myTextFile);

  S := ''; //initialize empty string

  try
    //write field names (as column headers)
    for I := 0 to DataSet.FieldCount - 1 do
      begin
        S := S + Format('%s;', [DataSet.Fields[I].FieldName]);
      end;

    Writeln(myTextFile, S);

    //write field values
    DataSet.First;
    while not DataSet.Eof do
      begin
        S := '';
        for I := 0 to DataSet.FieldCount - 1 do
          begin
            S := S + Format('%s;', [DataSet.Fields[I].AsString]);
          end;

        Writeln(myTextfile, S);
        DataSet.Next;
      end;

  finally
    CloseFile(myTextFile);
  end;
end;

procedure TFRPrincipal.SaveAsJSON(const FileName : string; DataSet : TDataSet);
var
  JSONArray : TJSONArray;
  JSONObject : TJSONObject;
  JSONString, Base64String : string;
  FileStream : TFileStream;
  I : Integer;
begin
  if not Assigned(DataSet) then
    raise Exception.Create('Dataset no válido');

  if DataSet.IsEmpty then
    raise Exception.Create('Dataset está vacío');

  JSONArray := TJSONArray.Create;
  try
    DataSet.DisableControls;
    try
      DataSet.First;
      while not DataSet.Eof do
      begin
        JSONObject := TJSONObject.Create;
        try
          for I := 0 to DataSet.FieldCount - 1 do
          begin
            if not DataSet.Fields[I].IsNull then
            begin
              case DataSet.Fields[I].DataType of
                ftString, ftWideString, ftMemo, ftWideMemo:
                  JSONObject.AddPair(DataSet.Fields[I].FieldName,
                    DataSet.Fields[I].AsString);

                ftInteger, ftSmallint, ftLargeint:
                  JSONObject.AddPair(DataSet.Fields[I].FieldName,
                    TJSONNumber.Create(DataSet.Fields[I].AsLargeInt));

                ftFloat, ftCurrency, ftBCD:
                  JSONObject.AddPair(DataSet.Fields[I].FieldName,
                    TJSONNumber.Create(DataSet.Fields[I].AsFloat));

                ftBoolean:
                  JSONObject.AddPair(DataSet.Fields[I].FieldName,
                    TJSONBool.Create(DataSet.Fields[I].AsBoolean));

                ftDate, ftDateTime, ftTimeStamp:
                  JSONObject.AddPair(DataSet.Fields[I].FieldName,
                    FormatDateTime('yyyy-mm-dd"T"hh:nn:ss.zzz"Z"',
                    DataSet.Fields[I].AsDateTime));

                ftBlob :
                  begin
                    Base64String := TNetEncoding.Base64.EncodeBytesToString(DataSet.Fields[I].AsBytes);
                    JSONObject.AddPair(DataSet.Fields[I].FieldName, Base64String);
                  end;
              else
                // Campos no soportados se guardan como strings
                JSONObject.AddPair(DataSet.Fields[I].FieldName,
                  DataSet.Fields[I].AsString);
              end;
            end
            else
              // Manejo explícito de valores nulos
              JSONObject.AddPair(DataSet.Fields[I].FieldName, TJSONNull.Create);
          end;

          JSONArray.AddElement(JSONObject);
        except
          JSONObject.Free;
          raise;
        end;
        DataSet.Next;
      end;

      // Guardar en archivo
      JSONString := JSONArray.ToString;
      FileStream := TFileStream.Create(FileName, fmCreate);
      try
        if JSONString <> '' then
        begin
          // Escribir con formato UTF8
          with TStreamWriter.Create(FileStream, TEncoding.UTF8) do
          try
            Write(JSONString);
          finally
            Free;
          end;
        end;
      finally
        FileStream.Free;
      end;

    finally
      DataSet.EnableControls;
    end;
  finally
    JSONArray.Free;
  end;
end;

procedure TFRPrincipal.SaveAsXML(const FileName : string; DataSet : TDataSet);
var
  XMLDoc : TXMLDocument;
  RootNode, RecordNode, FieldNode : IXMLNode;
  I : Integer;
  Field : TField;
begin
  XMLDoc := TXMLDocument.Create(nil);
  try
    XMLDoc.Active := True;
    XMLDoc.Encoding := 'utf-8';

    // Create root element
    RootNode := XMLDoc.AddChild('dataset');

    // Add schema information
    var SchemaNode := RootNode.AddChild('schema');
    for I := 0 to DataSet.FieldCount - 1 do
    begin
      var FieldDefNode := SchemaNode.AddChild('field');
      FieldDefNode.Attributes['name'] := DataSet.Fields[I].FieldName;
      FieldDefNode.Attributes['type'] := GetEnumName(TypeInfo(TFieldType), Ord(DataSet.Fields[I].DataType));
    end;

    // Add data records
    var DataNode := RootNode.AddChild('records');
    DataSet.First;
    while not DataSet.Eof do
    begin
      RecordNode := DataNode.AddChild('record');

      for Field in DataSet.Fields do
      begin
        FieldNode := RecordNode.AddChild('field');
        FieldNode.Attributes['name'] := Field.FieldName;

        if not Field.IsNull then
          begin
            case Field.DataType of
              ftString, ftWideString :
                FieldNode.Text := Field.AsString;
              ftInteger, ftSmallint, ftWord :
                FieldNode.Text := IntToStr(Field.AsInteger);
              ftFloat, ftCurrency, ftBCD :
                FieldNode.Text := FloatToStr(Field.AsFloat);
              ftDateTime :
                FieldNode.Text := FormatDateTime('yyyy-mm-dd hh:nn:ss', Field.AsDateTime);
              ftDate :
                FieldNode.Text := FormatDateTime('yyyy-mm-dd', Field.AsDateTime);
              ftTime :
                FieldNode.Text := FormatDateTime('hh:nn:ss', Field.AsDateTime);
              else
                FieldNode.Text := Field.AsString;
            end;
          end;
      end;

      DataSet.Next;
    end;

    // Save to file
    XMLDoc.SaveToFile(FileName);
  finally
    XMLDoc.Free;
  end;
end;

procedure TFRPrincipal.SaveAsYAML(const FileName : string; DataSet : TDataSet);
var
  YAMLFile : TextFile;
  I : Integer;
  Field : TField;
  FieldValue : string;
begin
  AssignFile(YAMLFile, FileName);
  Rewrite(YAMLFile);
  try
    // Write header
    Writeln(YAMLFile, '---');
    Writeln(YAMLFile, 'dataset:');

    // Write schema
    Writeln(YAMLFile, '  schema:');
    for I := 0 to DataSet.FieldCount - 1 do
    begin
      Writeln(YAMLFile, Format('    - name: %s', [DataSet.Fields[I].FieldName]));
      Writeln(YAMLFile, Format('      type: %s', [GetEnumName(TypeInfo(TFieldType),
        Ord(DataSet.Fields[I].DataType))]));
    end;

    // Write records
    Writeln(YAMLFile, '  records:');
    DataSet.First;
    while not DataSet.Eof do
    begin
      Writeln(YAMLFile, '    - record:');

      for Field in DataSet.Fields do
      begin
        if Field.IsNull then
          FieldValue := 'null'
        else
          case Field.DataType of
            ftString, ftWideString:
              // Escape special characters and wrap in quotes if needed
              if (Pos(#10, Field.AsString) > 0) or (Pos(#13, Field.AsString) > 0) then
                FieldValue := '|' + #13#10 + '          ' + Field.AsString
              else if (Pos(':', Field.AsString) > 0) or (Pos(' ', Field.AsString) > 0) then
                FieldValue := '"' + StringReplace(Field.AsString, '"', '\"', [rfReplaceAll]) + '"'
              else
                FieldValue := Field.AsString;

            ftInteger, ftSmallint, ftWord:
              FieldValue := IntToStr(Field.AsInteger);

            ftFloat, ftCurrency, ftBCD:
              FieldValue := FloatToStr(Field.AsFloat);

            ftDateTime:
              FieldValue := FormatDateTime('yyyy-mm-dd hh:nn:ss', Field.AsDateTime);

            ftDate:
              FieldValue := FormatDateTime('yyyy-mm-dd', Field.AsDateTime);

            ftTime:
              FieldValue := FormatDateTime('hh:nn:ss', Field.AsDateTime);

            else
              FieldValue := Field.AsString;
          end;

        Writeln(YAMLFile, Format('        %s: %s', [Field.FieldName, FieldValue]));
      end;

      DataSet.Next;
    end;
  finally
    CloseFile(YAMLFile);
  end;
end;

procedure TFRPrincipal.SaveDataSetToTXT(DataSet : TDataSet; const NombreArchivo : string; Delimitador : Char = ';');
var
  StreamWriter : TStreamWriter;
  Linea : string;
  I : Integer;
begin
  // Asegurarse de que el DataSet esté activo
  if not DataSet.Active then
    raise Exception.Create('El DataSet no está activo.');

  // Crear el TStreamWriter con codificación UTF-8
  StreamWriter := TStreamWriter.Create(NombreArchivo, False, TEncoding.UTF8);
  try
    // Escribir los nombres de las columnas (encabezados)
    Linea := '';
    for I := 0 to DataSet.FieldCount - 1 do
    begin
      Linea := Linea + DataSet.Fields[I].FieldName;
      if I < DataSet.FieldCount - 1 then
        Linea := Linea + Delimitador;
    end;

    StreamWriter.WriteLine(Linea);

    // Recorrer los registros del DataSet
    DataSet.First;
    while not DataSet.Eof do
      begin
        Linea := '';
        for I := 0 to DataSet.FieldCount - 1 do
        begin
          Linea := Linea + DataSet.Fields[I].AsString;
          if I < DataSet.FieldCount - 1 then
            Linea := Linea + Delimitador;
        end;

        StreamWriter.WriteLine(Linea);
        DataSet.Next;
      end;
  finally
    StreamWriter.Free; // Liberar el recurso
  end;
end;

//procedure TFRPrincipal.SaveDataSetToTXT(DataSet : TDataSet; const NombreArchivo: string; Delimitador: Char = ';');
//var
//  Archivo : TextFile;
//  Linea : string;
//  I : Integer;
//begin
//  // Asegurarse de que el DataSet esté activo
//  if not DataSet.Active then
//    raise Exception.Create('El DataSet no está activo.');
//
//  // Abrir el archivo de texto para escribir
//  AssignFile(Archivo, NombreArchivo);
//  Rewrite(Archivo);
//  try
//    // Escribir los nombres de las columnas (encabezados)
//    Linea := '';
//    for I := 0 to DataSet.FieldCount - 1 do
//    begin
//      Linea := Linea + DataSet.Fields[I].FieldName;
//      if I < DataSet.FieldCount - 1 then
//        Linea := Linea + Delimitador;
//    end;
//    Writeln(Archivo, Linea);
//
//    // Recorrer los registros del DataSet
//    DataSet.First;
//    while not DataSet.Eof do
//    begin
//      Linea := '';
//      for I := 0 to DataSet.FieldCount - 1 do
//      begin
//        Linea := Linea + DataSet.Fields[I].AsString;
//        if I < DataSet.FieldCount - 1 then
//          Linea := Linea + Delimitador;
//      end;
//      Writeln(Archivo, Linea);
//      DataSet.Next;
//    end;
//  finally
//    // Cerrar el archivo
//    CloseFile(Archivo);
//  end;
//end;

procedure TFRPrincipal.AddGridColumn(AView : TcxGridDBTableView; AFieldName, ACaption : string; Size : Integer);
var
  Col : TcxGridDBColumn;
begin
  // Crear una nueva columna
  Col := AView.CreateColumn;
  Col.DataBinding.FieldName := AFieldName; // Asociar con un campo de datos
  Col.Width   := Size * 5; // Establecer el ancho de la columna
  Col.Visible := True; // Hacer que la columna sea visible
  Col.Caption := ACaption;
  AView.ApplyBestFit;  // Si no ves la columna, refrescamos el grid
end;

// Determina el tipo de pantalla según la resolución
function TFRPrincipal.GetScreenResolution : TScreenResolution;
var
  ScreenWidth : Integer;
begin
  ScreenWidth := Screen.Width;

  if ScreenWidth < 1366 then
    Result := stLowRes
  else if ScreenWidth = 1366 then
    Result := stHD
  else if ScreenWidth <= 1920 then
    Result := stFullHD
  else if ScreenWidth <= 2560 then
    Result := stQHD
  else
    Result := st4K;
end;

end.
