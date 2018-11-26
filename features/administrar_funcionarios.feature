# language: pt

@administrar_funcionarios

Funcionalidade: Listar, Editar e Deletar Funcionários

  Como um proprietário
  Eu quero cadastrar funcionarios novos
  Para que eu possa ter uma lista atualizada dos funcionários

  Como um proprietário
  Eu quero editar os dados dos funcionários se necessário
  Para que eu possa ter uma lista atualizada dos funcionários

  Como um proprietário
  Eu quero excluir funcionários que não fazem mais parte de uma moradia
  Para que eu possa ter uma lista atualizada dos funcionários  
  
Contexto:
  Dado sou um usuario logado como proprietario
  E possuo propriedade cadastrada
  E possuo funcionario cadastrado

Cenário: Posso visualizar lista de funcionarios

  Dado estou na pagina funcionarios
  Então posso ver lista de funcionarios 

Cenário: Tento cadastrar um funcionario e consigo
 
  Dado estou na pagina cadastro funcionario
  Quando adiciono dados corretos do funcionario
  Então adiciono funcionario com sucesso

Cenário: Tento cadastrar um funcionario e falho

  Dado estou na pagina cadastro funcionario
  Quando adiciono dados incorretos do funcionario
  Então nao consigo adicionar funcionario
  
Cenário: Tento editar um funcionario e consigo

  Dado estou na pagina funcionarios
  Quando clico em editar funcionario
  E quando estou na pagina editar funcionario
  E adiciono dados corretos do funcionario
  Então consigo editar funcionario com sucesso
 

Cenário: Tento editar um funcionario e falho
 
  Dado estou na pagina funcionarios
  Quando clico em editar funcionario
  E quando estou na pagina editar funcionario
  E adiciono dados incorretos do funcionario
  Então não consigo editar funcionario com sucesso
 
Cenário: Tento deletar um funcionario e consigo

  Dado estou na pagina funcionarios
  Quando clico em deletar funcionario
  Então funcionario deve ser deletado
