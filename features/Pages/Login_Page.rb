class Inicio < SitePrism::Page
	set_url "https://demo.suiteondemand.com" 
	element :username, '#user_name'
	element :password, '#user_password'
	element :loginbutton, '#bigbutton'
	
	
	def login (nome_usuario, senha_usuario)
		username.set(nome_usuario)
		password.set(senha_usuario)
		loginbutton.click
	end

	
end