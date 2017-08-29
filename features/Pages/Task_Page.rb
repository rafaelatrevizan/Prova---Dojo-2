class Task_things < SitePrism::Page
	element :nome_task, '#name'
	element :star_date, '#date_start_date'

	element :hour, '#date_start_hours'
	element :hour_select, :xpath, "(//option[text() = '02'])[1]"

	element :minute, '#date_start_minutes'
	element :minute_select, :xpath, "(//option[text() = '30'])[1]"
	
	element :due_date_set, '#date_due_date'
	element :due_date_hora, '#date_due_hours'
	element :due_date_select, :xpath, "(//option[text() = '04'])[2]"

	element :due_date_min, '#date_due_minutes'
	element :due_min_select, :xpath, "(//option[text() = '30'])[2]"

	element :prioridade, '#priority'
	element :prioridade_select, :xpath, "(//option[text() = 'High'])"

	element :status_task, '#status'
	element :status_select, :xpath, "(//option[text() = 'In Progress'])"

	elements :salvar, '#SAVE'
	
	element :edit_view, :xpath, "//div[contains(text(), 'View Tasks')]"

	elements :task, "a[class = 'edit-link']"
	
	elements :select_check, :xpath, "//*[contains(@class, 'listview-checkbox')]"
 	elements :bulk_menu, "a[class = 'parent-dropdown-handler']" 	
 	elements :bulk_submenu, "a[class = 'parent-dropdown-action-handler']"
 	
	

	
	def criar (subject, data_inicial, due_date)
		nome_task.set(subject)
		star_date.set(data_inicial)
		hour.click
		hour_select.click
		minute.click
		minute_select.click
		due_date_set.set(due_date)
		due_date_hora.click
		due_date_select.click
		due_date_min.click
		due_min_select.click
		prioridade.click
		prioridade_select.click
		status_task.click
		status_select.click		
		
	end

	def save_task
		salvar[1].click	
	end

	def edit_and_view
		edit_view.click
	end 

	def select_task
		task.first.click
	end 

	def deletar_task
		select_check.first.click
		bulk_menu[0].click
		bulk_submenu[2].click
	end 

	def confirm_delete
		sleep(2)
		page.driver.browser.switch_to.alert.accept
	end	 
end