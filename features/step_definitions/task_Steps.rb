Dado(/^que estou logado no site SuiteCRM$/) do
  @inicio = Inicio.new.load
  Inicio.new.login('will','will')
end

Dado(/^acesso a area de Task$/) do
  Task.new.task_area
end

#-------------------------------------------------------------------------------#
Quando(/^preencher o cadastro com "([^"]*)", "([^"]*)" e "([^"]*)"$/) do |subject, dataInicial, dueDate|
  Task_things.new.criar(subject, dataInicial, dueDate)
  $taskName = subject
end

Então(/^salvar$/) do  
   Task_things.new.save_task
end

Então(/^verificar o cadastro com sucesso$/) do 
  # table is a Cucumber::MultilineArgument::DataTable
    assert_text($taskName.upcase)
end
#-------------------------------------------------------------------------------#

Quando(/^selecionar uma task$/) do
  Task_things.new.edit_and_view
end

Então(/^editar$/) do
  Task_things.new.select_task
  Task_things.new.criar('Orange Black','08/28/2017', '08/28/2017')
end

Então(/^salvar com sucesso$/) do
  Task_things.new.save_task
end
#-------------------------------------------------------------------------------#

Quando(/^clicar no botão View Tasks$/) do
  Task_things.new.edit_and_view
end

Então(/^deve selecionar a task criada$/) do  
  Task_things.new.deletar_task
end

Então(/^deletar com sucesso$/) do  
  Task_things.new.confirm_delete
end