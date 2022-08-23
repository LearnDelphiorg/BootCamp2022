object dtmQBDB: TdtmQBDB
  Height = 536
  Width = 494
  object ADOConn: TADOConnection
    ConnectionString = 
      'Provider=Microsoft.ACE.OLEDB.12.0;Data Source=C:\AppData\QuickBa' +
      'nana.accdb;Mode=ReadWrite|Share Deny None;Persist Security Info=' +
      'False'
    LoginPrompt = False
    Provider = 'Microsoft.ACE.OLEDB.12.0'
    Left = 64
    Top = 32
  end
  object ADOdsInstructors: TADODataSet
    Parameters = <>
    Left = 184
    Top = 32
  end
  object DSIntructors: TDataSource
    Left = 304
    Top = 32
  end
  object ADOQry: TADOQuery
    Parameters = <>
    Left = 184
    Top = 112
  end
end
