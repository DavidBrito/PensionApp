# language: pt

@administrar_quartos

Funcionalidade: Adicionar, Editar e Excluir Quartos
  
  Como um proprietário
  Eu quero Cadastrar um novo quarto
  Para que eu possa incluir os quartos da moradia

  Como um proprietário
  Eu quero editar os quartos já inseridos no sistema
  Para que eu possa alterar dados de um quarto

  Como um proprietário
  Eu quero excluir um quarto
  Para que eu possa desassociar um quarto da moradia


Contexto:
  Dado sou um usuario logado como proprietario
  E possuo propriedade cadastrada
  E possuo quarto cadastrado

Cenário: Tento cadastrar um quarto e consigo
 
  Dado estou na pagina cadastro quartos
  Quando adiciono dados corretos do quarto
  Então adiciono quarto com sucesso

Cenário: Tento cadastrar um quarto e falho

  Dado estou na pagina cadastro quartos
  Quando adiciono dados incorretos do quarto
  Então nao consigo adicionar quarto
  
Cenário: Tento editar um quarto e consigo

  Dado estou na pagina propriedades
  Quando clico em editar quarto
  E quando estou na pagina editar quartos
  E adiciono dados corretos do quarto
  Então consigo editar quarto com sucesso
 

Cenário: Tento editar um quarto e falho
 
  Dado estou na pagina propriedades
  Quando clico em editar quarto
  E quando estou na pagina editar quartos
  E adiciono dados incorretos do quarto
  Então não consigo editar quarto com sucesso
 
Cenário: Tento deletar um quarto e consigo

  Dado estou na pagina propriedades
  Quando clico em deletar quarto
  Então quarto deve ser deletado
