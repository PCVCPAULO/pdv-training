unit Entidade_Produto.Model;

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
  [Table('PRODUTO', '')]
  [PrimaryKey('GUUID', NotInc, NoSort, False, 'Chave prim�ria')]
  TPRODUTO = class
  private
    { Private declarations }
    FGUUID: String;
    FDESCRICAO: Nullable<String>;
    FCODIGO: Nullable<String>;
    FPRECO: Nullable<Double>;
    FNCM: Nullable<Integer>;
    FALIQUOTA: Nullable<Double>;
    FST: SmallInt;
    FSTATUS: SmallInt;
    FDATAALTERACAO: TDateTime;
    function GetGUUID: String;
    function GetDATAALTERACAO: TDateTime;
  public
    { Public declarations }
    [Restrictions([NotNull])]
    [Column('GUUID', ftString, 64)]
    [Dictionary('GUUID', 'Mensagem de valida��o', '', '', '', taLeftJustify)]
    property GUUID: String read GetGUUID write FGUUID;

    [Column('CODIGO', ftString, 20)]
    [Dictionary('CODIGO', 'Mensagem de valida��o', '', '', '', taLeftJustify)]
    property CODIGO: Nullable<String> read FCODIGO write FCODIGO;

    [Column('DESCRICAO', ftString, 128)]
    [Dictionary('DESCRICAO', 'Mensagem de valida��o', '', '', '', taLeftJustify)]
    property DESCRICAO: Nullable<String> read FDESCRICAO write FDESCRICAO;

    [Column('PRECO', ftBCD, 18, 4)]
    [Dictionary('PRECO', 'Mensagem de valida��o', '0', '', '', taRightJustify)]
    property PRECO: Nullable<Double> read FPRECO write FPRECO;

    [Column('NCM', ftInteger)]
    [Dictionary('NCM', 'Mensagem de valida��o', '', '', '', taCenter)]
    property NCM: Nullable<Integer> read FNCM write FNCM;

    [Column('ALIQUOTA', ftBCD, 18, 4)]
    [Dictionary('ALIQUOTA', 'Mensagem de valida��o', '0', '', '', taRightJustify)]
    property ALIQUOTA: Nullable<Double> read FALIQUOTA write FALIQUOTA;

    [Column('ST', ftSmallint)]
    [Dictionary('ST', 'Mensagem de valida��o', '', '', '', taCenter)]
    property ST: SmallInt read FST write FST;

    [Column('STATUS', ftSmallint)]
    [Dictionary('STATUS', 'Mensagem de valida��o', '', '', '', taCenter)]
    property STATUS: SmallInt read FSTATUS write FSTATUS;

    [Column('DATAALTERACAO', ftDateTime)]
    [Dictionary('DATAALTERACAO', 'Mensagem de valida��o', '', '', '', taCenter)]
    property DATAALTERACAO: TDateTime read GetDATAALTERACAO write FDATAALTERACAO;
  end;

implementation

{ TPRODUTO }

function TPRODUTO.GetDATAALTERACAO: TDateTime;
begin
  FDATAALTERACAO := Now;
  Result := FDATAALTERACAO;
end;

function TPRODUTO.GetGUUID: String;
begin
  if FGUUID.IsEmpty then
    FGUUID := TGUID.NewGuid.ToString;
  Result := FGUUID;
end;

initialization
  TRegisterClass.RegisterEntity(TPRODUTO)

end.
