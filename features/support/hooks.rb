## antes de cada teste iniciar minha app
Before do
    @app = App.new
end

## depois de cada teste tirar um print se caso der um erro
After do |scenario|
    @t = Time.now
    if scenario.failed?
        page.save_screenshot("screenschots/#{@t.to_i}-#{scenario.name}_Failed.png")    
    end
    if scenario.passed?
        page.save_screenshot("screenschots/#{@t.to_i}-#{scenario.name}_Passed.png")    
    end
end