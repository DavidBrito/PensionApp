# language: pt

@administrar_propriedades

Funcionalidade: Adicionar, Editar e Excluir Propriedades

  Como um proprietario
  Eu quero Cadastrar um nova moradia
  Para que eu possa ter mais uma moradia cadastrada

  Como um proprietario
  Eu quero editar as propriedades ja cadastradas
  Para que eu altere dados sobre a moradia
  
  Como um proprietário
  Eu quero excluir uma moradia
  Para que eu possa desvincular um imóvel


Contexto:
  Dado sou um usuario logado como proprietario
  E possuo propriedade cadastrada


Cenário: entro na pagina de cadastro de propriedades
  
  Dado estou na pagina de propriedades
  Quando clico em "Nova Propriedade"
  Então devo ir para pagina cadastrar propriedades


Cenário: tento criar uma propriedade e consigo
  
  Dado estou na pagina cadastrar propriedades
  Quando insiro todas informações da propriedade
  E clico em "Criar Propriedade"
  Então uma nova propriedade deve ser criada


Cenário: tento adicionar uma propriedade e falho

  Dado estou na pagina cadastrar propriedades
  Quando tento adicionar propriedade com informacoes incorretas
  Então a propriedade nao e criada
  

Cenário: entro na pagina de edicao de uma propriedade
  
  Dado estou na pagina de propriedades
  Quando clico editar minha propriedade cadastrada
  Então devo ir para pagina editar propriedades


Cenário: tento editar uma propriedade e consigo
  
  Dado estou na pagina editar propriedades
  Quando insiro nova informacao em propriedade
  E clico em "Criar Propriedade"
  Então a propriedade deve ser atualizada


Cenário: tento editar uma propriedade e falho

  Dado estou na pagina editar propriedades
  Quando deixo de inserir nova informacao em propriedade
  E clico em "Criar Propriedade"
  Então a propriedade não deve ser atualizada
  

Cenário: tento excluir uma propriedade

  Dado estou na pagina de propriedades
  Quando clico em deletar minha propriedade
  Então a propriedade deve ser excluida
