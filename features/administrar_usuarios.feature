# language: pt

@administrar_usuarios

Funcionalidade: Visualizar, Excluir Inquilinos

  Como um proprietário
  Eu quero visualizar as informações dos inquilinos
  Para que eu possa editar os dados de um inquilino

  Como um proprietário
  Eu quero poder excluir inquilinos
  Para que eu possa retirar um inquilino


Contexto:
  Dado sou um usuario logado como proprietario
  E possuo inquilino cadastrado


Cenário: Quero visualizar um inquilino
  Dado estou na pagina usuarios
  Quando clico em visualizar inquilino
  Então posso ver dados do inquilino 
  
Cenário: Quero excluir um inquilino

  Dado estou na pagina usuarios
  Quando clico em deletar inquilino
  Então inquilino deve ser deletado