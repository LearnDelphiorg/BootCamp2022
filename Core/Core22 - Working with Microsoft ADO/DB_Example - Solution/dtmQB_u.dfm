object dtmQBDB: TdtmQBDB
  Height = 536
  Width = 494
  object qryQB: TADOQuery
    Connection = ADOCon
    Parameters = <>
    Left = 64
    Top = 360
  end
  object tblInstructors: TADOTable
    Connection = ADOCon
    Left = 64
    Top = 88
  end
  object ADOCon: TADOConnection
    LoginPrompt = False
    Provider = 'Microsoft.ACE.OLEDB.12.0'
    Left = 64
    Top = 24
  end
  object dtsInstructors: TDataSource
    DataSet = tblInstructors
    Left = 184
    Top = 88
  end
  object dtsQryQB: TDataSource
    DataSet = qryQB
    Left = 192
    Top = 360
  end
  object dtsLearnerClients: TDataSource
    DataSet = tblLearnerClients
    Left = 184
    Top = 160
  end
  object tblLearnerClients: TADOTable
    Connection = ADOCon
    Left = 64
    Top = 152
  end
  object dtsDriveBookings: TDataSource
    DataSet = tblDriveBookings
    Left = 192
    Top = 232
  end
  object tblDriveBookings: TADOTable
    Connection = ADOCon
    Left = 64
    Top = 232
  end
  object qryQB2: TADOQuery
    Connection = ADOCon
    Parameters = <>
    Left = 64
    Top = 432
  end
  object dtsQryQB2: TDataSource
    DataSet = qryQB2
    Left = 192
    Top = 432
  end
  object dtsLearnersQuestionBank: TDataSource
    DataSet = tblLearnersQuestionBank
    Left = 192
    Top = 304
  end
  object tblLearnersQuestionBank: TADOTable
    Connection = ADOCon
    Left = 64
    Top = 304
  end
end
