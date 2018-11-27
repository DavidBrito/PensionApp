# language: pt

Funcionalidade: fazer primeiro cadastro  
	O usuário chegará a esta página se quiser se cadastrar como proprietário ou inquilino.  

Contexto:  
	Given usuário está na página de cadastro

Cenário: usuário quer fazer cadastro como proprietário, e consegue
  	 Dado que estou na pagina inicial do pensionapp
  	 E clico em "Cadastro usuário"
  	 Então devo ir para pagina de cadastro
  	 Quando preencho os dados corretamente como proprietário
  	 E clico em "Cadastrar"
  	 Então devo ir para pagina de usuario
  	 E eu sou proprietário

Cenário: usuário quer fazer cadastro como inquilino
    Dado que estou na pagina inicial do pensionapp
	  E clico em "Cadastro usuário"
    Então devo ir para pagina de cadastro
    Quando preencho os dados corretamente como inquilino
    E clico em "Cadastrar"
    Então devo ir para pagina de usuario
    E eu sou inquilino