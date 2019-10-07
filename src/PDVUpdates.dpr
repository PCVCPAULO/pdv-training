program PDVUpdates;

uses
  System.StartUpCopy,
  FMX.Forms,
  MVCBr.ApplicationController,
  MVCBr.Controller,
  PDVUpdates.Controller in 'Controllers\PDVUpdates.Controller.pas',
  PDVUpdates.Controller.Interf in 'Controllers\PDVUpdates.Controller.Interf.pas',
  PDVUpdatesView in 'Views\PDVUpdatesView.pas' {PDVUpdatesView},
  Usuario.Model in 'Models\Usuario\Usuario.Model.pas',
  Usuario.Model.Interf in 'Models\Usuario\Usuario.Model.Interf.pas',
  Usuario_Factory.Model in 'Models\Usuario\Factory\Usuario_Factory.Model.pas',
  Usuario_Factory.Model.Interf in 'Models\Usuario\Factory\Usuario_Factory.Model.Interf.pas',
  Usuario_Tipo_Factory.Model.Interf in 'Models\Usuario\Tipo\Factory\Usuario_Tipo_Factory.Model.Interf.pas',
  Usuario_Tipo_Caixa.Model in 'Models\Usuario\Tipo\Usuario_Tipo_Caixa.Model.pas',
  Usuario_Tipo_Fiscal.Model in 'Models\Usuario\Tipo\Usuario_Tipo_Fiscal.Model.pas',
  Usuario_Tipo_Gerente.Model in 'Models\Usuario\Tipo\Usuario_Tipo_Gerente.Model.pas',
  Usuario_Tipo_Factory.Model in 'Models\Usuario\Tipo\Factory\Usuario_Tipo_Factory.Model.pas',
  Usuario_Tipo_Padrao.Model in 'Models\Usuario\Tipo\Usuario_Tipo_Padrao.Model.pas',
  Usuario_Iterator.Model in 'Models\Usuario\Usuario_Iterator.Model.pas',
  Entidade.Model.Interf in 'Models\Entidade\Factory\Entidade.Model.Interf.pas',
  Entidade_Factory.Model in 'Models\Entidade\Factory\Entidade_Factory.Model.pas',
  Entidade_Usuario.Model in 'Models\Entidade\Entidade_Usuario.Model.pas',
  Usuario.Controller.Interf in 'Controllers\Usuario\Usuario.Controller.Interf.pas',
  Usuario.Controller in 'Controllers\Usuario\Usuario.Controller.pas',
  Usuario_Factory.Controller in 'Controllers\Usuario\Factory\Usuario_Factory.Controller.pas',
  Usuario_Factory.Controller.Interf in 'Controllers\Usuario\Factory\Usuario_Factory.Controller.Interf.pas',
  PDVUpdates_Type.Controller in 'Controllers\PDVUpdates_Type.Controller.pas',
  Usuario_Senha.Controller.Interf in 'Controllers\Dialog\Usuario_Senha.Controller.Interf.pas',
  Usuario_Senha.Controller in 'Controllers\Dialog\Usuario_Senha.Controller.pas',
  Usuario_SenhaView in 'Views\Dialog\Usuario_SenhaView.pas' {UsuarioSenhaView},
  Usuario_Operacoes.Controller in 'Controllers\Usuario\Operacoes\Usuario_Operacoes.Controller.pas',
  Usuario_Operacoes.Controller.Interf in 'Controllers\Usuario\Operacoes\Usuario_Operacoes.Controller.Interf.pas',
  Caixa.Model.interf in 'Models\Caixa\Caixa.Model.interf.pas',
  Caixa.Model in 'Models\Caixa\Caixa.Model.pas',
  Caixa_Factory.Model.interf in 'Models\Caixa\Factory\Caixa_Factory.Model.interf.pas',
  Caixa_Factory.Model in 'Models\Caixa\Factory\Caixa_Factory.Model.pas',
  Caixa_Metodo_Abrir.Model in 'Models\Caixa\Metodo\Caixa_Metodo_Abrir.Model.pas',
  Caixa_Metodo_Fechar.Model in 'Models\Caixa\Metodo\Caixa_Metodo_Fechar.Model.pas',
  Caixa_Metodo_Suprimento.Model in 'Models\Caixa\Metodo\Caixa_Metodo_Suprimento.Model.pas',
  Caixa_Metodo_Sangria.Model in 'Models\Caixa\Metodo\Caixa_Metodo_Sangria.Model.pas',
  Caixa_Metodo_Bloquear.Model in 'Models\Caixa\Metodo\Caixa_Metodo_Bloquear.Model.pas',
  Caixa_Metodo_Desbloquear.Model in 'Models\Caixa\Metodo\Caixa_Metodo_Desbloquear.Model.pas',
  Caixa_Metodo_TrocarOperador.Model in 'Models\Caixa\Metodo\Caixa_Metodo_TrocarOperador.Model.pas',
  Caixa_State_Aberto.Model in 'Models\Caixa\State\Caixa_State_Aberto.Model.pas',
  Caixa_State_Fechado.Model in 'Models\Caixa\State\Caixa_State_Fechado.Model.pas',
  Caixa_State_Bloqueado.Model in 'Models\Caixa\State\Caixa_State_Bloqueado.Model.pas',
  Caixa_State_Factory.Model in 'Models\Caixa\State\Factory\Caixa_State_Factory.Model.pas',
  Caixa_State_Factory.Model.Interf in 'Models\Caixa\State\Factory\Caixa_State_Factory.Model.Interf.pas',
  Caixa_Metodo_Factory.Model in 'Models\Caixa\Metodo\Factory\Caixa_Metodo_Factory.Model.pas',
  Caixa_Metodo_Factory.Model.Interf in 'Models\Caixa\Metodo\Factory\Caixa_Metodo_Factory.Model.Interf.pas',
  Caixa.Controller in 'Controllers\Caixa\Caixa.Controller.pas',
  Caixa.Controller.Interf in 'Controllers\Caixa\Caixa.Controller.Interf.pas',
  Caixa_Factory.Controller.Interf in 'Controllers\Caixa\Factory\Caixa_Factory.Controller.Interf.pas',
  Caixa_Factory.Controller in 'Controllers\Caixa\Factory\Caixa_Factory.Controller.pas',
  Caixa_Metodo.Controller in 'Controllers\Caixa\Caixa_Metodo.Controller.pas',
  PDVUpdates.Model.Interf in 'Models\PDVUpdates.Model.Interf.pas',
  PDVUpdates.Model in 'Models\PDVUpdates.Model.pas',
  Captura_Valor.Controller.Interf in 'Controllers\Dialog\Captura_Valor.Controller.Interf.pas',
  Captura_Valor.Controller in 'Controllers\Dialog\Captura_Valor.Controller.pas',
  Captura_ValorView in 'Views\Dialog\Captura_ValorView.pas' {CapturaValorView},
  Item.Model.Interf in 'Models\Item\Item.Model.Interf.pas',
  Item.Model in 'Models\Item\Item.Model.pas',
  Item_Factory.Model.Interf in 'Models\Item\Factory\Item_Factory.Model.Interf.pas',
  Item_Factory.Model in 'Models\Item\Factory\Item_Factory.Model.pas',
  Item_Metodo_Factory.Model.Interf in 'Models\Item\Metodo\Factory\Item_Metodo_Factory.Model.Interf.pas',
  Item_Metodo_Factory.Model in 'Models\Item\Metodo\Factory\Item_Metodo_Factory.Model.pas',
  Item_State_Factory.Model.Interf in 'Models\Item\State\Factory\Item_State_Factory.Model.Interf.pas',
  Item_State_Factory.Model in 'Models\Item\State\Factory\Item_State_Factory.Model.pas',
  Item_State_Ativo.Model in 'Models\Item\State\Item_State_Ativo.Model.pas',
  Item_State_Inativo.Model in 'Models\Item\State\Item_State_Inativo.Model.pas',
  Item_State_Vendido.Model in 'Models\Item\State\Item_State_Vendido.Model.pas',
  Item_Metodo_Vender.Model in 'Models\Item\Metodo\Item_Metodo_Vender.Model.pas',
  Item_Metodo_Cancelar.Model in 'Models\Item\Metodo\Item_Metodo_Cancelar.Model.pas',
  Item_Metodo_Desconto.Model in 'Models\Item\Metodo\Item_Metodo_Desconto.Model.pas',
  Item_Metodo_Acrescimo.Model in 'Models\Item\Metodo\Item_Metodo_Acrescimo.Model.pas',
  Item_Metodo_Repetir.Model in 'Models\Item\Metodo\Item_Metodo_Repetir.Model.pas',
  Item.Controller.Interf in 'Controllers\Item\Item.Controller.Interf.pas',
  Item.Controller in 'Controllers\Item\Item.Controller.pas',
  Item_Factory.Controller.Interf in 'Controllers\Item\Factory\Item_Factory.Controller.Interf.pas',
  Item_Factory.Controller in 'Controllers\Item\Factory\Item_Factory.Controller.pas',
  Item_Metodo.Controller in 'Controllers\Item\Item_Metodo.Controller.pas',
  Cliente.Model.Interf in 'Models\Cliente\Cliente.Model.Interf.pas',
  Cliente.Model in 'Models\Cliente\Cliente.Model.pas',
  Cliente_Factory.Model.Interf in 'Models\Cliente\Factory\Cliente_Factory.Model.Interf.pas',
  Cliente_Factory.Model in 'Models\Cliente\Factory\Cliente_Factory.Model.pas',
  Cliente_Metodo_Factory.Model.Interf in 'Models\Cliente\Metodo\Factory\Cliente_Metodo_Factory.Model.Interf.pas',
  Cliente_Metodo_Factory.Model in 'Models\Cliente\Metodo\Factory\Cliente_Metodo_Factory.Model.pas',
  Cliente_State_Factory.Model.Interf in 'Models\Cliente\State\Factory\Cliente_State_Factory.Model.Interf.pas',
  Cliente_State_Factory.Model in 'Models\Cliente\State\Factory\Cliente_State_Factory.Model.pas',
  Cliente_Metodo_Saldo.Model in 'Models\Cliente\Metodo\Cliente_Metodo_Saldo.Model.pas',
  Cliente_State_Ativo.Model in 'Models\Cliente\State\Cliente_State_Ativo.Model.pas',
  Cliente_State_Inativo.Model in 'Models\Cliente\State\Cliente_State_Inativo.Model.pas',
  Cliente_State_Bloqueado.Model in 'Models\Cliente\State\Cliente_State_Bloqueado.Model.pas',
  Cliente.Controller in 'Controllers\Cliente\Cliente.Controller.pas',
  Cliente.Controller.Interf in 'Controllers\Cliente\Cliente.Controller.Interf.pas',
  Cliente_Factory.Controller.Interf in 'Controllers\Cliente\Factory\Cliente_Factory.Controller.Interf.pas',
  Cliente_Factory.Controller in 'Controllers\Cliente\Factory\Cliente_Factory.Controller.pas',
  Cliente_Metodo.Controller in 'Controllers\Cliente\Cliente_Metodo.Controller.pas',
  Pagamento.Model.Interf in 'Models\Pagamento\Pagamento.Model.Interf.pas',
  Pagamento.Model in 'Models\Pagamento\Pagamento.Model.pas',
  Pagamento_Factory.Model.Interf in 'Models\Pagamento\Factory\Pagamento_Factory.Model.Interf.pas',
  Pagamento_Factory.Model in 'Models\Pagamento\Factory\Pagamento_Factory.Model.pas',
  Pagamento_Tipo_Dinheiro.Model in 'Models\Pagamento\Tipo\Dinheiro\Pagamento_Tipo_Dinheiro.Model.pas',
  Pagamento_Tipo_CartaoCredito.Model in 'Models\Pagamento\Tipo\CartaoCredito\Pagamento_Tipo_CartaoCredito.Model.pas',
  Pagamento_Tipo_Dinheiro_Metodo_Executar.Model in 'Models\Pagamento\Tipo\Dinheiro\Metodo\Pagamento_Tipo_Dinheiro_Metodo_Executar.Model.pas',
  Pagamento_Tipo_Dinheiro_Metodo_Factory.Model.Interf in 'Models\Pagamento\Tipo\Dinheiro\Metodo\Factory\Pagamento_Tipo_Dinheiro_Metodo_Factory.Model.Interf.pas',
  Pagamento_Tipo_Dinheiro_Metodo_Factory.Model in 'Models\Pagamento\Tipo\Dinheiro\Metodo\Factory\Pagamento_Tipo_Dinheiro_Metodo_Factory.Model.pas',
  Pagamento_Tipo_Dinheiro_Metodo_Estornar.Model in 'Models\Pagamento\Tipo\Dinheiro\Metodo\Pagamento_Tipo_Dinheiro_Metodo_Estornar.Model.pas',
  Pagamento_Tipo_CartaoCredito_Metodo_Factory.Model.Interf in 'Models\Pagamento\Tipo\CartaoCredito\Metodo\Factory\Pagamento_Tipo_CartaoCredito_Metodo_Factory.Model.Interf.pas',
  Pagamento_Tipo_CartaoCredito_Metodo_Factory.Model in 'Models\Pagamento\Tipo\CartaoCredito\Metodo\Factory\Pagamento_Tipo_CartaoCredito_Metodo_Factory.Model.pas',
  Pagamento_Tipo_CartaoCredito_Metodo_Executar.Model in 'Models\Pagamento\Tipo\CartaoCredito\Metodo\Pagamento_Tipo_CartaoCredito_Metodo_Executar.Model.pas',
  Pagamento_Tipo_CartaoCredito_Metodo_Estornar.Model in 'Models\Pagamento\Tipo\CartaoCredito\Metodo\Pagamento_Tipo_CartaoCredito_Metodo_Estornar.Model.pas',
  Pagamento_Tipo_Factory.Model in 'Models\Pagamento\Tipo\Factory\Pagamento_Tipo_Factory.Model.pas',
  Pagamento.Controller.Interf in 'Controllers\Pagamento\Pagamento.Controller.Interf.pas',
  Pagamento.Controller in 'Controllers\Pagamento\Pagamento.Controller.pas',
  Pagamento_Factory.Controller.Interf in 'Controllers\Pagamento\Factory\Pagamento_Factory.Controller.Interf.pas',
  Pagamento_Factory.Controller in 'Controllers\Pagamento\Factory\Pagamento_Factory.Controller.pas',
  Pagamento_Tipo_Dinheiro.Controller in 'Controllers\Pagamento\Tipo\Pagamento_Tipo_Dinheiro.Controller.pas',
  Pagamento_Tipo_CartaoCredito.Controller in 'Controllers\Pagamento\Tipo\Pagamento_Tipo_CartaoCredito.Controller.pas',
  Pagamento_Tipo_Factory.Controller in 'Controllers\Pagamento\Tipo\Factory\Pagamento_Tipo_Factory.Controller.pas',
  Pagamento_Tipo_Factory.Controller.Interf in 'Controllers\Pagamento\Tipo\Factory\Pagamento_Tipo_Factory.Controller.Interf.pas',
  Venda.Model.Inerf in 'Models\Venda\Venda.Model.Inerf.pas',
  Venda.Model in 'Models\Venda\Venda.Model.pas',
  Venda_Factory.Model.Inerf in 'Models\Venda\Factory\Venda_Factory.Model.Inerf.pas',
  Venda_Factory.Model in 'Models\Venda\Factory\Venda_Factory.Model.pas',
  Venda_Metodo_Factory.Model.Inerf in 'Models\Venda\Metodo\Factory\Venda_Metodo_Factory.Model.Inerf.pas',
  Venda_Metodo_Factory.Model in 'Models\Venda\Metodo\Factory\Venda_Metodo_Factory.Model.pas',
  Venda_Metodo_Abrir.Model in 'Models\Venda\Metodo\Venda_Metodo_Abrir.Model.pas',
  Venda_Metodo_Pagar.Model in 'Models\Venda\Metodo\Venda_Metodo_Pagar.Model.pas',
  Venda_Metodo_Fechar.Model in 'Models\Venda\Metodo\Venda_Metodo_Fechar.Model.pas',
  Venda_State_Factory.Model.Interf in 'Models\Venda\State\Factory\Venda_State_Factory.Model.Interf.pas',
  Venda_State_Factory.Model in 'Models\Venda\State\Factory\Venda_State_Factory.Model.pas',
  Venda_State_Aberto.Model in 'Models\Venda\State\Venda_State_Aberto.Model.pas',
  Venda_State_Fechado.Model in 'Models\Venda\State\Venda_State_Fechado.Model.pas',
  Venda_State_Pagamento.Model in 'Models\Venda\State\Venda_State_Pagamento.Model.pas',
  Venda.Controller.Interf in 'Controllers\Venda\Venda.Controller.Interf.pas',
  Venda.Controller in 'Controllers\Venda\Venda.Controller.pas',
  Venda_Factory.Controller.Interf in 'Controllers\Venda\Factory\Venda_Factory.Controller.Interf.pas',
  Venda_Factory.Controller in 'Controllers\Venda\Factory\Venda_Factory.Controller.pas',
  Venda_Metodo.Controller in 'Controllers\Venda\Venda_Metodo.Controller.pas',
  Cliente_Metodo_Buscar.Model in 'Models\Cliente\Metodo\Cliente_Metodo_Buscar.Model.pas',
  Item_Iterator.Model in 'Models\Item\Item_Iterator.Model.pas',
  Pagamento_Iterator.Model in 'Models\Pagamento\Pagamento_Iterator.Model.pas',
  Dialog_Pagamento.Controller.Interf in 'Controllers\Dialog\Dialog_Pagamento.Controller.Interf.pas',
  Dialog_Pagamento.Controller in 'Controllers\Dialog\Dialog_Pagamento.Controller.pas',
  Dialog_PagamentoView in 'Views\Dialog\Dialog_PagamentoView.pas' {DialogPagamentoView},
  Pagamento_Operacoes.Controller.Interf in 'Controllers\Pagamento\Operacoes\Pagamento_Operacoes.Controller.Interf.pas',
  Pagamento_Operacoes.Controller in 'Controllers\Pagamento\Operacoes\Pagamento_Operacoes.Controller.pas',
  Conexao_Driver_Factory.Model.interf in 'Models\Conexao\Driver\Factory\Conexao_Driver_Factory.Model.interf.pas',
  Conexao_Driver_Factory.Model in 'Models\Conexao\Driver\Factory\Conexao_Driver_Factory.Model.pas',
  Conexao_Factory.Model.Interf in 'Models\Conexao\Factory\Conexao_Factory.Model.Interf.pas',
  Conexao_Factory.Model in 'Models\Conexao\Factory\Conexao_Factory.Model.pas',
  Conexao.Model.Interf in 'Models\Conexao\Conexao.Model.Interf.pas',
  Conexao.Model in 'Models\Conexao\Conexao.Model.pas',
  Conexao_Driver_Firedac.Model in 'Models\Conexao\Driver\Conexao_Driver_Firedac.Model.pas',
  Usuario_Funcoes.Model in 'Models\Usuario\Usuario_Funcoes.Model.pas',
  Entidade_Caixa.Model in 'Models\Entidade\Entidade_Caixa.Model.pas',
  Entidade_CaixaOperacoes.Model in 'Models\Entidade\Entidade_CaixaOperacoes.Model.pas',
  Entidade_Venda.Model in 'Models\Entidade\Entidade_Venda.Model.pas',
  Entidade_Cliente.Model in 'Models\Entidade\Entidade_Cliente.Model.pas',
  Entidade_Produto.Model in 'Models\Entidade\Entidade_Produto.Model.pas',
  Entidade_VendaItens.Model in 'Models\Entidade\Entidade_VendaItens.Model.pas',
  Produto.Model.Interf in 'Models\Produto\Produto.Model.Interf.pas',
  Produto.Model in 'Models\Produto\Produto.Model.pas',
  Produto_Factory.Model.Interf in 'Models\Produto\Factory\Produto_Factory.Model.Interf.pas',
  Produto_Factory.Model in 'Models\Produto\Factory\Produto_Factory.Model.pas',
  Produto_Metodo_Buscar.Model in 'Models\Produto\Metodo\Produto_Metodo_Buscar.Model.pas',
  Produto_Metodo_Factory.Model.Interf in 'Models\Produto\Metodo\Factory\Produto_Metodo_Factory.Model.Interf.pas',
  Produto_Metodo_Factory.Model in 'Models\Produto\Metodo\Factory\Produto_Metodo_Factory.Model.pas',
  Entidade_VendaPagamentos.Model in 'Models\Entidade\Entidade_VendaPagamentos.Model.pas',
  Pagamento_Tipo_Factory.Model.Interf in 'Models\Pagamento\Tipo\Factory\Pagamento_Tipo_Factory.Model.Interf.pas',
  Fiscal.Model.Interf in 'Models\Fiscal\Fiscal.Model.Interf.pas',
  Fiscal_Factory.Model in 'Models\Fiscal\Factory\Fiscal_Factory.Model.pas',
  Fiscal_NFCe_ACBr.Model in 'Models\Fiscal\NFCe\Componentes\Fiscal_NFCe_ACBr.Model.pas',
  Fiscal_NFCe.Model.Interf in 'Models\Fiscal\NFCe\Fiscal_NFCe.Model.Interf.pas',
  Fiscal_NFCe_Factory.Model in 'Models\Fiscal\NFCe\Factory\Fiscal_NFCe_Factory.Model.pas',
  Fiscal.Model in 'Models\Fiscal\Fiscal.Model.pas',
  Fiscal_Proxy_Identificacao.Model in 'Models\Fiscal\Proxy\Fiscal_Proxy_Identificacao.Model.pas',
  Fiscal_Proxy_Contribuinte.Model in 'Models\Fiscal\Proxy\Fiscal_Proxy_Contribuinte.Model.pas',
  Fiscal_Proxy_Endereco.Model in 'Models\Fiscal\Proxy\Fiscal_Proxy_Endereco.Model.pas',
  Fiscal_Proxy_Emitente.Model in 'Models\Fiscal\Proxy\Fiscal_Proxy_Emitente.Model.pas',
  Fiscal_Proxy_Destinatario.Model in 'Models\Fiscal\Proxy\Fiscal_Proxy_Destinatario.Model.pas',
  Fiscal_Proxy_Produto.Model in 'Models\Fiscal\Proxy\Fiscal_Proxy_Produto.Model.pas',
  Fiscal_Proxy_Pagamento.Model in 'Models\Fiscal\Proxy\Fiscal_Proxy_Pagamento.Model.pas',
  Fiscal_Proxy_Factory.Model.Interf in 'Models\Fiscal\Proxy\Factory\Fiscal_Proxy_Factory.Model.Interf.pas',
  Fiscal_Proxy_Factory.Model in 'Models\Fiscal\Proxy\Factory\Fiscal_Proxy_Factory.Model.pas',
  Fiscal_Proxy.Model in 'Models\Fiscal\Proxy\Fiscal_Proxy.Model.pas',
  Fiscal_Proxy_ProdutoIterator.Model in 'Models\Fiscal\Proxy\Iterator\Fiscal_Proxy_ProdutoIterator.Model.pas',
  Fiscal_Proxy_ProdutoLista.Model in 'Models\Fiscal\Proxy\Lista\Fiscal_Proxy_ProdutoLista.Model.pas',
  Fiscal_Proxy_PagamentoIterator.Model in 'Models\Fiscal\Proxy\Iterator\Fiscal_Proxy_PagamentoIterator.Model.pas',
  Fiscal_Proxy_PagamentoLista.Model in 'Models\Fiscal\Proxy\Lista\Fiscal_Proxy_PagamentoLista.Model.pas',
  Fiscal_NFCe_Factory.Model.Interf in 'Models\Fiscal\NFCe\Factory\Fiscal_NFCe_Factory.Model.Interf.pas',
  Entidade_Empresa.Model in 'Models\Entidade\Entidade_Empresa.Model.pas',
  Empresa.Model in 'Models\Empresa\Empresa.Model.pas',
  Empresa.Model.Interf in 'Models\Empresa\Empresa.Model.Interf.pas',
  Empresa_Factory.Model.Interf in 'Models\Empresa\Factory\Empresa_Factory.Model.Interf.pas',
  Empresa_Factory.Model in 'Models\Empresa\Factory\Empresa_Factory.Model.pas',
  Fiscal.Controller in 'Controllers\Fiscal\Fiscal.Controller.pas',
  Fiscal.Controller.Interf in 'Controllers\Fiscal\Fiscal.Controller.Interf.pas',
  Fiscal_Factory.Controller.Interf in 'Controllers\Fiscal\Factory\Fiscal_Factory.Controller.Interf.pas',
  Fiscal_Factory.Controller in 'Controllers\Fiscal\Factory\Fiscal_Factory.Controller.pas',
  Venda_Metodo_Item.Controller in 'Controllers\Venda\Metodo\Venda_Metodo_Item.Controller.pas',
  Venda_Metodo_Factory.Controller.Interf in 'Controllers\Venda\Metodo\Factory\Venda_Metodo_Factory.Controller.Interf.pas',
  Venda_Metodo_Factory.Controller in 'Controllers\Venda\Metodo\Factory\Venda_Metodo_Factory.Controller.pas',
  Observer.Controller.Interf in 'Controllers\Observer\Observer.Controller.Interf.pas',
  Observer_Itens.Controller in 'Controllers\Observer\Observer_Itens.Controller.pas',
  Venda_Observer.Model in 'Models\Venda\Venda_Observer.Model.pas',
  Observer_Caixa.Controller in 'Controllers\Observer\Observer_Caixa.Controller.pas',
  Caixa_Observer.Model in 'Models\Caixa\Caixa_Observer.Model.pas',
  Observer_Venda.Controller in 'Controllers\Observer\Observer_Venda.Controller.pas';

{$R *.res}

function CheckApplicationAuth: boolean;
begin
  result := true;
end;

begin
  if CheckApplicationAuth then
    ApplicationController.Run(TPDVUpdatesController.New);

end.
