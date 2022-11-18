object dtmConect: TdtmConect
  OldCreateOrder = False
  Height = 254
  Width = 458
  object ConectDB: TZConnection
    ControlsCodePage = cCP_UTF16
    AutoEncodeStrings = True
    Catalog = ''
    Properties.Strings = (
      'controls_cp=CP_UTF16'
      'AutoEncodeStrings=True')
    TransactIsolationLevel = tiReadCommitted
    SQLHourGlass = True
    HostName = '.\SQLEXPRESS'
    Port = 1433
    Database = 'Azax'
    User = ''
    Password = ''
    Protocol = 'mssql'
    LibraryLocation = 'D:\Projetos\Cursos\SQL-CURSO\ntwdblib.dll'
    Left = 408
    Top = 200
  end
end
