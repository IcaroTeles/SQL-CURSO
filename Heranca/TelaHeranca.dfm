object frmTelaHeranca: TfrmTelaHeranca
  Left = 0
  Top = 0
  ActiveControl = pgc_1
  BorderStyle = bsDialog
  Caption = 'Titulo'
  ClientHeight = 397
  ClientWidth = 762
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pgc_1: TPageControl
    Left = 0
    Top = 0
    Width = 762
    Height = 356
    ActivePage = tabManu
    Align = alClient
    TabOrder = 0
    object tabManu: TTabSheet
      Caption = 'Manuten'#231#227'o'
    end
    object tabList: TTabSheet
      Caption = 'Listagem'
      ImageIndex = 1
      object pnl_listop: TPanel
        Left = 0
        Top = 0
        Width = 754
        Height = 67
        Align = alTop
        TabOrder = 0
        object lb_indice: TLabel
          Left = 0
          Top = 3
          Width = 50
          Height = 13
          Caption = 'Pesquisar:'
        end
        object mskpesquisar: TMaskEdit
          Left = 0
          Top = 27
          Width = 337
          Height = 21
          TabOrder = 0
          Text = ''
          TextHint = 'Digite sua pesquisa'
          OnChange = mskpesquisarChange
        end
        object btnpesq: TBitBtn
          Left = 207
          Top = 27
          Width = 75
          Height = 21
          Caption = '&Pesquisar'
          TabOrder = 1
          Visible = False
        end
      end
      object GridList: TDBGrid
        Left = 0
        Top = 67
        Width = 754
        Height = 261
        Align = alClient
        DataSource = DataList
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnDblClick = GridListDblClick
        OnKeyDown = GridListKeyDown
        OnTitleClick = GridListTitleClick
        Columns = <
          item
            Expanded = False
            FieldName = 'categoriaID'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'descricao'
            Visible = True
          end>
      end
    end
  end
  object pnl_1: TPanel
    Left = 0
    Top = 356
    Width = 762
    Height = 41
    Align = alBottom
    TabOrder = 1
    object btnCancelar: TBitBtn
      Left = 166
      Top = 6
      Width = 75
      Height = 25
      Caption = '&Cancelar'
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFDCAC70D5A067DCAC70DCAC70D5A067DCAC70FF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFE0963CE0963CFACF76FCE59EFE
        F0B2FEF3B6FEE7A3FAD47DE09538E19A41FF00FFFF00FFFF00FFFF00FFFF00FF
        E99230E99230F7BD64F8CA72F8CC6AFBD36BFBD56DFAD06EFACF78F8C46BEB98
        34EB9834FF00FFFF00FFFF00FFCB6C1FCB6C1FE9983CA1410DC46414C46B1CC5
        7020C57021C46D1DCC7019EE9A30ED9F41D17322D17322FF00FFFF00FFA03D0A
        C5671FD4731B993406C7814DF2E9E2F2E9E2F2E9E2F3EAE2CA895ABA510AD573
        1BCB6E24A6410CFF00FFA545139A350AB14C11BF540B953005BA6835D4BCB0D0
        B5A5CFA98FD0AD96C7C7C7C6885FAC4307B653149F3C0BAB4A149A350A892806
        9A3507AB4108B74C09A73F07B75F2AAD4306C05409AC4206D5B8A6DDD5D09A33
        059E39088E2B069F3C0B771801781B03872504952E05962E05D7B29EEDEDED9E
        3604A339059E3505EBE3E0E5DDD88F29048B28057B1D03781A02B87453CC916E
        AF5E3295350EDCB7A6F7F7F7FBFBFBDDBDADCA9579FFFFFFFAFAFABF8365993B
        13B06035CA8F6BB87453C18160CC9676B76E469D421CEAD4CAFEFEFEFEFEFEF8
        F0EDE5C6B6D7B099B066419C4118B06237B8724BCE987AC18263D3AA97D7AB91
        BD7D5AB46A449F4621EEDED5F8F0EE993E179C41199D421BA7542BB56941B873
        4DBF805FD9AF97D8B09DFF00FFD0A089CB977DBF8060B7734FA14C28E0C0B0A0
        4A25B66D46B76F49B8744FBC7A59C08364CB9980D0A48BFF00FFFF00FFD3AA97
        DAB4A0CA9881C28A6EBC7E5FA4512FA55432BF805FC08263C18769C48C72CC9C
        84DAB5A3D5AC98FF00FFFF00FFFF00FFD3AA97DCB8A6D1A796CA9984C48C75C6
        937BC6937BC7967FCA9C87D3AA98DDBBAAD5AC98FF00FFFF00FFFF00FFFF00FF
        FF00FFD3AA97D5AD9CDEBCAFD9B7AAD5B1A3D5B1A3D9B8ABDEBDB1D5AF9DD5AC
        98FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFD8B09DD8B09DD5
        AB98D5AA98D8B09DD8B09DFF00FFFF00FFFF00FFFF00FFFF00FF}
      TabOrder = 0
      OnClick = btnCancelarClick
    end
    object btnSalvar: TBitBtn
      Left = 247
      Top = 6
      Width = 75
      Height = 25
      Caption = '&Salvar'
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000120B0000120B00000000000000000000FF00FF9A5314
        9A53149A53147B61418686868787878080809494948787877E7E7E6E6E6E7B61
        419640047F3F087F3F08FF00FF9C5414C66C1CC76C1D7B614183838396400496
        4004B7B7B7BCBCBCA6A6A68787877B614196400495480A91440BFF00FFA65B17
        CA711FCB711F7B61417E7E7E964004964004C6C6C6CFCFCFB5B5B59292927B61
        4196400495490B91440BFF00FFA95F19CE7622CF77227B614179797996400496
        4004D3D3D3E3E3E3C8C8C89D9D9D7B6141964004974B0B92450CFF00FFAC631C
        D27C27D37E297B6141747474747474747474D5D5D5F6F6F6DBDBDBABABAB7B61
        41964004984C0C94470DFF00FFAF6B28D6883AD78A3DA871347B61417B61417B
        61417B61417B61417B61417B6141845121904709A0541195480DFF00FFB27436
        CA8444D1AA89CFA887CDA584CBA381C99F7CC69B77C59975C49874C39774C296
        73C19573B6611F96490EFF00FFB57D45D19D6EF0F0F0EDEDEDE9E9E9E5E5E5E2
        E2E2DEDEDEDBDBDBD7D7D7D6D6D6D6D6D6D6D6D6BB7843974B0EFF00FFB88552
        D09F75E4E4E4E1E1E1DEDEDEDCDCDCD9D9D9D6D6D6D4D4D4D1D1D1CECECECCCC
        CCCACACAB97640974C0FFF00FFBB8C5ED8AB84FEFEFEFCFCFCF9F9F9F5F5F5F2
        F2F2EEEEEEEBEBEBE7E7E7E3E3E3E0E0E0DCDCDCBD7A45984C0FFF00FFBC9167
        D4A985E8E8E8E8E8E8E8E8E8E7E7E7E5E5E5E2E2E2E0E0E0DDDDDDDADADAD8D8
        D8D5D5D5BC7943984C0FFF00FFBD936BDAB18EFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFDFDFDFAFAFAF7F7F7F3F3F3F0F0F0ECECECC27F49994D10FF00FFBD9268
        D4AA86E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E6E6E6E4E4
        E4E1E1E1BF7C46984D0FFF00FFBD9268CA9B75FEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFBFBFBBC7B498F450CFF00FFBD9268
        CA9B754229924229924229924229924229924229924229924229924229924229
        92422992BC7B498F450CFF00FFB1805D975C454D1C744D1C744D1C744D1C744D
        1C744D1C744D1C744D1C744D1C744D1C744D1C74853D2687410A}
      TabOrder = 1
      OnClick = btnSalvarClick
    end
    object btnApagar: TBitBtn
      Left = 328
      Top = 6
      Width = 75
      Height = 25
      Caption = 'A&pagar'
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
        4442BC3C3CAAFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0303
        7B02028CFF00FFFF00FFFF00FF514FC52222C83030C84848B7FF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FF1010870505A10101A204028DFF00FF5959CA2929D2
        1717D01616CE3838D15151BFFF00FFFF00FFFF00FFFF00FF2121940E0EA70101
        A60101A60101A204028D5555C34444DD1C1CDB1B1BD91A1AD53F3FD85757C4FF
        00FFFF00FF3434A41A1AB30202A80101A60101A602029F020278FF00FF6262CF
        4C4CE62121E31F1FDF1C1CDA4242DC5656C44848B72A2AC40A0AB60505AE0101
        A70505A003037BFF00FFFF00FFFF00FF6F6FD85656ED2424E82121E31D1DDD3F
        3FDA3838D31111C50D0DBC0808B40F0FA90D0D80FF00FFFF00FFFF00FFFF00FF
        FF00FF7777DD5959EF2626EA2121E41D1DDC1919D41414CB1010C21C1CB71D1D
        90FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF7676DB5757EC2626EA21
        21E31C1CDA1717D02828C52B2B9DFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FF8888D97676EE3636ED2424E81E1EDE1919D52929C72B2B9EFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF9191D98D8DED6E6EF26363F14F
        4FEE3636E52121D91616CD1F1FBD1D1D92FF00FFFF00FFFF00FFFF00FFFF00FF
        9797D79E9EEB8787F57D7DF47272F37777E66D6DE15555E34646D93434CE2B2B
        B822228FFF00FFFF00FFFF00FF9C9CD4ACACEA9C9CF79494F68A8AF58B8BE776
        76CA6868C26C6CDA5B5BDE5252D54848CC4141B82F2F91FF00FF9D9DD0B4B4E7
        AEAEF8A7A7F89F9FF79B9BE68181CBFF00FFFF00FF6262B86B6BD25D5DD75151
        CE4747C54141B4323293A9A9C7B8B8EFB5B5F9AFAFF8A8A8E58888CCFF00FFFF
        00FFFF00FFFF00FF5959B06565CB5555CE4B4BC54545BB4343A4FF00FFAAA9C6
        BABAEEB1B1E48F8FCAFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF5656AD5C5C
        C54F4FC14D4DAAFF00FFFF00FFFF00FFACABC69898CEFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FF5050A95858AFFF00FFFF00FF}
      TabOrder = 2
      OnClick = btnApagarClick
    end
    object dbnavega: TDBNavigator
      Left = 429
      Top = 6
      Width = 208
      Height = 25
      DataSource = DataList
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      TabOrder = 3
    end
    object btnnovo: TBitBtn
      Left = 4
      Top = 6
      Width = 75
      Height = 25
      Caption = '&Novo'
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000120B0000120B00000000000000000000FF00FFC1C1C1
        C1C1C1C1C1C1C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0FF00FFFF00FFFF00FFC7C7C7FEFEFEE1E1E1FCFCFCFCFCFCFCFCFCFC
        FCFCFCFCFCFCFCFCFCFCFCFCFCFCFEFEFEC6C6C6FF00FFFF00FFFF00FFCCCCCC
        CACACAE1E1E1DEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDE
        DECBCBCBFF00FFFF00FFFF00FFD1D1D1FDFDFDE1E1E1F5F5F5F5F5F5F5F5F5F5
        F5F5F5F5F5F4F4F4F4F4F4F3F3F3FCFCFCD0D0D0FF00FFFF00FFFF00FFD5D5D5
        DEDEDEE1E1E1DEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDE
        DED4D4D4FF00FFFF00FFFF00FFD7D7D7FDFDFDE1E1E1F8F8F8F8F8F8F8F8F8F8
        F8F8F7F7F7F7F7F7F7F7F7F6F6F6FDFDFDD7D7D7FF00FFFF00FFFF00FFDADADA
        DEDEDEE1E1E1DEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDE
        DEDADADAFF00FFFF00FFFF00FFDCDCDCCACACAE1E1E1FAFAFAFAFAFAFAFAFAFA
        FAFAFAFAFAF9F9F9F9F9F9F8F8F8FDFDFDDCDCDCFF00FFFF00FFFF00FFDDDDDD
        DEDEDEE1E1E1DEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDE
        DEDDDDDDFF00FFFF00FFFF00FFDEDEDEFEFEFEE1E1E1FCFCFCFCFCFCFCFCFCFC
        FCFCFBFBFBFBFBFBFAFAFAFAFAFAFEFEFEDEDEDEFF00FFFF00FFFF00FFDFDFDF
        DEDEDEE1E1E1DEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDE
        DEDFDFDFFF00FFFF00FFFF00FFDFDFDFFEFEFEE1E1E1FDFDFDFDFDFDFDFDFDFD
        FDFDFDFDFDFCFCFCFCFCFCFBFBFBFEFEFEDFDFDFFF00FFFF00FFFF00FFE0E0E0
        DEDEDEE1E1E1DEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEE0E0E0E5E5E5EDED
        EDDFDFDFFF00FFFF00FFFF00FFE0E0E0CACACAE1E1E1FDFDFDFEFEFEFEFEFEFE
        FEFEFDFDFDFDFDFDE5E5E5F1F1F1DFDFDFFF00FFFF00FFFF00FFFF00FFE0E0E0
        FFFFFFE1E1E1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDEDEDEDDFDFDFFF00
        FFFF00FFFF00FFFF00FFFF00FFE0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0
        E0E0E0E0E0E0E0E0DFDFDFFF00FFFF00FFFF00FFFF00FFFF00FF}
      TabOrder = 4
      OnClick = btnnovoClick
    end
    object btnMudar: TBitBtn
      Left = 85
      Top = 6
      Width = 75
      Height = 25
      Caption = '&Alterar'
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000130B0000130B00000000000000000001FF00FFFF00FF
        FF00FF7F331B8833138A37128A3B168A3B16FF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FF84351E8E32107C321FFF00FFFF00FFFF00FF93
        4112853F1EFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF35221D35221D
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF8C4219984A13984A13FF00FFFF00
        FFFF00FFFF00FFFF00FF35221D1C63780076A900699A004C88FF00FFFF00FFFF
        00FFFF00FFFF00FF9A4E15A8590FA55A12A65C14B36810AA6214FF00FF02AAD8
        00B6EA036C970930940B0983FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FF0281AB00BEEE03161707119C0C16980B0C83FF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0281AB
        056AF2061C7402000007119C0C17990B0C83FF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FF0B1CBB2555FF061C7402000007119C0C
        169C0B0C82FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FF0F26BF2455FF061C7402000007119C0C169C0B0C83FF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF1028C22455FF061C7402
        000007119C0C169C0A0C83FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FF1129C42454FF061C7402000007119C0B169D0B0C83FF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF112CC924
        55FF061C7402000007119C07119C0A0C83FF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FF132FCD2354FF061C7400000007119C999C
        D9171895FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FF1531D11E4EFF061C74A3A19A7B7BD700018FFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF1532D2ACBFFF6C76E10000
        A6FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FF2F31A4020EAAFF00FFFF00FFFF00FFFF00FF}
      TabOrder = 5
      OnClick = btnMudarClick
    end
  end
  object btnFechar: TBitBtn
    Left = 667
    Top = 362
    Width = 82
    Height = 25
    Caption = '&Fechar'
    Glyph.Data = {
      36030000424D3603000000000000360000002800000010000000100000000100
      18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
      FF00FFFF00FFFF00FFB9B8B8BABABAB3B2B2B3B2B2BAB9B9B9B8B8FF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFB3B2B2BCBABAD8D5D5D6D2D2CE
      CACAC9C4C4C4BEBEBCB6B6B4B2B2B3B2B2FF00FFFF00FFFF00FFFF00FFFF00FF
      AAA9A9DDDCDCD8D6DF817FBD4E4DC16B6BD96A6AD25151C68582B8C0BBBBB7B2
      B2AAA9A9FF00FFFF00FFFF00FFB4B3B3EEEEEEBBB8D42B2BC55A5AED9393F6A9
      A9F8ABABF89393F75555EF302EC0B0ABB6B8B3B3B3B2B2FF00FFFF00FFC8C7C7
      E0DFE62222BD3C3CD63E3EB24848C38C8CF58D8DF54949C33F3FB23F3FD92929
      BCC4BFBFB5B3B3FF00FFCBCACAECECEC7D7CC92929D35959BCCACACAACACC73A
      3ABC3B3BBCACACC7CACACA5555B82020D57472B8C2BDBDCCCBCBC5C4C4E4E3E3
      1F1FBD2323BA2626B1ACACC7C6C6C6B0B0CAB0B0CAC6C6C6ACACC72424AE2323
      BF2A2AB7CCC8C8C2C2C2B9B8B8CFCECE1313C21212A91E1EB82020ABAFAFCACE
      CECECECECEAFAFCA2121AB1F1FBA1414AC0505B4D3CFCFB4B3B3B9B8B8CCCBCB
      7777D66868D93838CA2020ABC7C7E1E9E9E9E9E9E9C7C7E12121AB3D3DCB6E6E
      DC4747C8D9D6D6B4B3B3BBBABAD6D6D67676CA8383DF3939B6CFCFEAFEFEFECF
      CFEACFCFEAFEFEFECFCFEA3535B28B8BE17B7AC2E4E1E1BABABAB8B8B8D5D5D5
      9291C5A1A1E67F7FCAFEFEFECFCFEA4242BF4242BFCFCFEAFEFEFE7878C6A2A2
      E78382BBE6E5E5B9B8B8FF00FFBEBEBEC5C5CE8484D08484D47979C66D6DCF7E
      7EDB7E7EDB6868CC7979C68787D68181C7E5E4EDBEBEBEFF00FFFF00FFB3B2B2
      D3D3D3C4C4CB8E8ED3B4B4E8A9A9E3A2A2E1A3A3E1ACACE4B5B5E8908FCDBDBC
      D6EDEDEDB4B3B3FF00FFFF00FFFF00FFACACACD3D3D3D3D3D8B7B6D7A8A8DC9E
      9EDA9D9DDAA4A3DBAFAED6E1E1E6E7E7E7ACABABFF00FFFF00FFFF00FFFF00FF
      FF00FFB3B2B2C2C1C1D4D4D4D9D9D9DFDEDEE0E0E0E3E3E3E3E3E3C5C5C5B4B3
      B3FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFC2C1C1BEBDBDB4
      B3B3B4B3B3BDBCBCC2C1C1FF00FFFF00FFFF00FFFF00FFFF00FF}
    TabOrder = 2
    OnClick = btnFecharClick
  end
  object QryList: TZQuery
    Connection = dtmConect.ConectDB
    SQL.Strings = (
      'select categoriaID,'
      #9#9'descricao'
      #9'from categorias')
    Params = <>
    Left = 364
    Top = 24
  end
  object DataList: TDataSource
    DataSet = QryList
    Left = 436
    Top = 24
  end
end
