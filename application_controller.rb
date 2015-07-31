

require 'bundler'
Bundler.require
require_relative  'models/driver.rb'

class MyApp < Sinatra::Base

 get '/' do
  erb :index
 end  
  
   get '/writing_prompt.erb' do
    erb :writing_prompt
end
  get '/drawing_prompt.erb' do 
    erb :drawing_prompt
  end
  
  post '/savagery' do
    @driver = Driver.new(params[:prompt_type])

    if @driver.check_type == "drawing"
      erb :drawing_prompt
      
      elsif @driver.check_type == "writing"
    erb :writing_prompt
  
  else
    erb :index
    end
    
  end
  
  post '/after' do
    @driver = Driver.new("derek")
    @driver.save_rand_result(params[:squad_prompt])
    @myString = @driver.return_result
    erb :result_page
  end

  
 
end 

 
  

