require 'selenium-webdriver'
module ::Selenium::WebDriver::Remote 
  class Bridge 
    def execute(*args) 
      result = raw_execute(*args)['value'] 
      sleep 0.05
      result 
    end 
  end 
end 
