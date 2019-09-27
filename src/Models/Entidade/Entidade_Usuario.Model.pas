unit Entidade_Usuario.Model;

interface

uses
  Classes,
  DB,
  SysUtils,
  Generics.Collections,
  // ORMBr
  ormbr.mapping.attributes,
  ormbr.types.nullable,
  ormbr.types.mapping,
  ormbr.mapping.register,
  ormbr.types.blob;

type

  [Entity]
  [Table('USUARIO', '')]
  [PrimaryKey('ID', 'Chave prim�ria')]
  TUsuario = class
  private
    { Private declaration }
    FID: Integer;
    FNome: string;
    FSenha: string;
  public
    { Public declaration }

    [Restrictions([NoUpdate, NotNull])]
    [Column('ID', ftInteger)]
    [Dictionary('ID', 'Mensagem de valida��o', '', '', '', taCenter)]
    property ID: Integer read FID write FID;

    [Column('NOME', ftString, 60)]
    [Dictionary('Nome', 'Mensagem de valida��o', '', '', '', taLeftJustify)]
    property NOME: string read FNome write FNome;

    [Column('SENHA', ftString, 20)]
    [Dictionary('Senha', 'Mensagem de valida��o', '', '', '', taLeftJustify)]
    property SENHA: string read FSenha write FSenha;
  end;


implementation

initialization
  TRegisterClass.RegisterEntity(TUsuario);

end.
