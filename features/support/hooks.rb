After do |scenario|
	
Dir.mkdir('reports') unless Dir.exist?('reports')
sufix = ('error' if scenario.failed?) || 'success'
name = sufix + '-' + (scenario.name.tr('', '_').downcase)
time = Time.now.strftime('%Y_%m_%d_%H_%M_%S')
path =('reports/' + time + '.png')
page.save_screenshot(path)
embed(path, 'image/png', name)

end
