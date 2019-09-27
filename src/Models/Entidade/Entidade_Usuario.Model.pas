unit Entidade_Usuario.Model;

interface

uses
  DB,
  Classes,
  SysUtils,
  Generics.Collections,

  /// orm
  ormbr.types.blob,
  ormbr.types.lazy,
  ormbr.types.mapping,
  ormbr.types.nullable,
  ormbr.mapping.classes,
  ormbr.mapping.register,
  ormbr.mapping.attributes;

type
  [Entity]
  [Table('USUARIO', '')]
  [PrimaryKey('GUUID', NotInc, NoSort, False, 'Chave prim�ria')]
  TUSUARIO = class
  private
    { Private declarations }
    FGUUID: String;
    FNOME: Nullable<String>;
    FSENHA: Nullable<String>;
    FTIPO: Nullable<Integer>;
    FSTATUS: Nullable<Integer>;
    FDATACADASTRO: TDateTime;
    FDATAALTERACAO: TDateTime;
    function GetGUUID: String;
    function GetDATACADASTRO: TDateTime;
    function GetDATAALTERACAO: TDateTime;
  public
    { Public declarations }
    [Restrictions([NotNull])]
    [Column('GUUID', ftString, 64)]
    [Dictionary('GUUID', 'Mensagem de valida��o', '', '', '', taLeftJustify)]
    property GUUID: String read GetGUUID write FGUUID;

    [Column('NOME', ftString, 60)]
    [Dictionary('Nome', 'Mensagem de valida��o', '', '', '', taLeftJustify)]
    property NOME: Nullable<String> read FNOME write FNOME;

    [Column('SENHA', ftString, 20)]
    [Dictionary('Senha', 'Mensagem de valida��o', '', '', '', taLeftJustify)]
    property SENHA: Nullable<String> read FSENHA write FSENHA;

    [Column('TIPO', ftSmallint)]
    [Dictionary('Tipo', 'Mensagem de valida��o', '', '', '', taCenter)]
    property TIPO: Nullable<Integer> read FTIPO write FTIPO;

    [Column('STATUS', ftSmallint)]
    [Dictionary('Situa��o', 'Mensagem de valida��o', '', '', '', taCenter)]
    property STATUS: Nullable<Integer> read FSTATUS write FSTATUS;

    [Column('DATACADASTRO', ftDateTime)]
    [Dictionary('Data de cadastro', 'Mensagem de valida��o', '', '', '', taCenter)]
    property DATACADASTRO: TDateTime read GetDATACADASTRO write FDATACADASTRO;

    [Column('DATAALTERACAO', ftDateTime)]
    [Dictionary('Data de atualiza��o', 'Mensagem de valida��o', '', '', '', taCenter)]
    property DATAALTERACAO: TDateTime read GetDATAALTERACAO write FDATAALTERACAO;
  end;

implementation

{ TUSUARIO }

function TUSUARIO.GetDATAALTERACAO: TDateTime;
begin
  FDATAALTERACAO := Now;
  Result := FDATAALTERACAO;
end;

function TUSUARIO.GetDATACADASTRO: TDateTime;
begin
  if (FDATACADASTRO = StrToDateTime('30/12/1899')) then
    FDATACADASTRO := Now;
  Result := FDATACADASTRO;
end;

function TUSUARIO.GetGUUID: String;
begin
  if (FGUUID.IsEmpty) then
    FGUUID := TGUID.NewGuid.ToString;
  Result := FGUUID;
end;

initialization
  TRegisterClass.RegisterEntity(TUSUARIO)

end.
