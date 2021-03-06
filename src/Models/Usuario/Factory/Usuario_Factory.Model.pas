unit Usuario_Factory.Model;

interface

uses
  Usuario_Factory.Model.Interf,
  Usuario.Model.Interf;


type
  TUsuarioFactoryModel = class(TInterfacedObject, IUsuarioFactoryModel)
  private
  public
    constructor Create;
    destructor Destroy; override;
    class function New : IUsuarioFactoryModel;
    function Usuario: IUsuarioModel;
    function Iterator(Parent: IUsuarioModel): IUsuarioIteratorModel;
    function Funcoes(Parent: IUsuarioModel): IUsuarioFuncoesModel;
  end;

implementation

uses
  Usuario.Model,
  Usuario_Iterator.Model, Usuario_Tipo_Factory.Model, Usuario_Funcoes.Model;

{ TUsuarioFactoryModel }

constructor TUsuarioFactoryModel.Create;
begin

end;

destructor TUsuarioFactoryModel.Destroy;
begin

  inherited;
end;

function TUsuarioFactoryModel.Funcoes(
  Parent: IUsuarioModel): IUsuarioFuncoesModel;
begin
  Result := TUsuarioFuncoesModel.New(Parent);
end;

function TUsuarioFactoryModel.Iterator(
  Parent: IUsuarioModel): IUsuarioIteratorModel;
begin
  Result := TUsuarioIteratorModel.New(Parent);
end;

class function TUsuarioFactoryModel.New: IUsuarioFactoryModel;
begin
  Result := Self.Create;
end;

function TUsuarioFactoryModel.Usuario: IUsuarioModel;
begin
  Result := TUsuarioModel.New;
end;

end.
