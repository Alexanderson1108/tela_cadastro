#language: pt

Funcionalidade: conclusão de cadastro
como cliente da ebac
quero concluir meu cadastro
para finalizar compra

Cenário: dados obrigatorios
Dado que eu acesse a pagina de cadastro
E acrescente todas as informações obrigatorias * 
Então finalizar cadastro para compra

Cenário: email invalido
Dado que usuario acrescente infomações no cadastro
Quando usuario acrescentar email invalido
Então deve ser exibida mensagem "email invalido"

Esquema do Cenário:01mensagem de alerta
Quando usuario colocar <email> invalido
Então exibir <mensagem01> 

Exemplos: 
|email|mensagem01|
|alex.ferreira@ebac| email invalido|
|alex.ferreira@ebac.com.br|
|jorgina.aula@email.com|
|gg.com|email invalido|

Cenário: campos vazios
Quando usuario deixar algum campo em branco
E não acrescentar nennhuma informação
Então mensagem de alerta deve ser exibida "campo obrigatorio não preenchido"
