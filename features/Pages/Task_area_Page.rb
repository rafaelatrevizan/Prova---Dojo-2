	
class Task < SitePrism::Page
	element :menu, '#quickcreatetop'
	element :create, "a[href='index.php?module=Tasks&action=EditView&return_module=Tasks&return_action=DetailView']"
	
	def task_area
		menu.hover  #colocar o mouse em cima
		create.click
	end
	  
end