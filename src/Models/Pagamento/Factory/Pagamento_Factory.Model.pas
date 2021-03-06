unit Pagamento_Factory.Model;

interface

uses
  Pagamento_Factory.Model.Interf, Pagamento.Model.Interf, Venda.Model.Inerf;

type
  TPagamentoFactoryModel = class(TInterfacedObject, IPagamentoFactoryModel)
  private
  public
    constructor Create;
    destructor Destroy; override;
    class function New : IPagamentoFactoryModel;
    function Pagamento(Venda: IVendaModel): IPagamentoModel;
    function Iterator(Parent: IPagamentoModel): IPagamentoIteratorModel;
  end;

implementation

uses
  Pagamento.Model, Pagamento_Iterator.Model;

{ TPagamentoFactoryModel }

constructor TPagamentoFactoryModel.Create;
begin

end;

destructor TPagamentoFactoryModel.Destroy;
begin

  inherited;
end;

function TPagamentoFactoryModel.Iterator(
  Parent: IPagamentoModel): IPagamentoIteratorModel;
begin
  Result := TPagamentoIteratorModel.New(Parent);
end;

class function TPagamentoFactoryModel.New: IPagamentoFactoryModel;
begin
  Result := Self.Create;
end;

function TPagamentoFactoryModel.Pagamento(Venda: IVendaModel): IPagamentoModel;
begin
  Result := TPagamentoModel.New(Venda);
end;

end.
