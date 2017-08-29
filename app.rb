require_relative 'config/environment'
require_relative 'models/text_analyzer.rb'
# gives us the ability to create new instances of the TextAnalyzer class from within our controller.

class App < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/' do

#user_text is whatver they typed in on index page@
#@analyzed_text is an instance of TextAnalyzer
 #now we can call it and its methods from the results.erb view  using erb tags!
@analyzed_text = TextAnalyzer.new(params[:user_text])

    erb :results
  end
end
