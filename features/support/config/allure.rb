AllureCucumber.configure do |config|
  config.include AllureCucumber::DSL
  config.output_dir = '/output/reports/'
  config.clean_dir = false
end

After do |scenario|
  attach_file("#{scenario_name}.png - Evidência do ERRO.", take_screenshot(scenario.name)) if scenario.failed?
end
