#language: pt

@elementos
Funcionalidade: Explorando elementos e botões

Cenario: buscar elementos com sucesso
Quando acesso a url de botoes
Então eu verifico se os elementos estão corretos

@clicar_em_coisas
Cenario: clicando em elementos
Quando clico em um botão e em um link
 

 @interagindo_com_formulario
 Cenario: interagindo com formularios
 Dado que eu tenha um email
|email              |endereco |universidade |profissao|
|ricardo@hotmail.com|Vila Real|FATEC        |desempregado|
 Quando faço o cadastro
 Então verifico o cadastro se esta correto