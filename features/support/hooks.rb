## antes de cada teste iniciar minha app
Before do
    @app = App.new
end

## depois de cada teste tirar um print se caso der um erro
After do |scenario|
    if scenario.failed?
        page.save_screenshot("screenschots/#{scenario.name}_screenshot.png")    
    end
end