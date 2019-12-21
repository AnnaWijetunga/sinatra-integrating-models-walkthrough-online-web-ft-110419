require_relative 'config/environment'
require_relative 'models/text_analyzer.rb'
# require_relative 'models/text_analyzer.rb' gives us the ability 
# to reference the TextAnalyzer class 
# & invoke its new method

class App < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/' do
    # text_from_user = params[:user_text]
    # receives the form data through params
    # renders the results page

    # @analyzed_text = TextAnalyzer.new(text_from_user)
    # take the data from params[:user_text] (in the post '/' do route)
    # feed it into a new instance of the TextAnalyzer class

    # we can shorten this to:
    @analyzed_text = TextAnalyzer.new(params[:user_text]) 

    erb :results
  end
end
