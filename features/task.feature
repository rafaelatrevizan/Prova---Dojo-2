#language: pt
#utf-8

Funcionalidade: Fazer cadastro, editar e excluir 
Eu como usuario
Quero entrar no site SuiteCRM
Para cadastrar, editar e excluir uma task

Contexto: Usuário loga no site na parte de task
Dado que estou logado no site SuiteCRM
E acesso a area de Task

@criacao
Esquema do Cenário: Cadastrar uma Task
Quando preencher o cadastro com "<subject>", "<data_inicial>" e "<due_date>"
Então salvar 
E verificar o cadastro com sucesso

Exemplos:
| subject | data_inicial | due_date   |
| Rafaela | 08/24/2017   | 08/24/2017 |
| Gabriela| 05/24/2017   | 08/24/2017 |

@edicao
Cenario: Editar uma Task
Quando selecionar uma task 
Então editar
E salvar com sucesso

@deletar
Cenario: Deletar uma Task
Quando clicar no botão View Tasks 
Então deve selecionar a task criada
E deletar com sucesso 