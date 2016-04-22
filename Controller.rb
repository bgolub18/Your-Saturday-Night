require 'sinatra'

get '/' do
	@choice1 = "Yes"
	@choice2 = "No"
	erb :intro
end
get '/first' do
	@story = "It\'s Saturday night. You get a text from your friend inviting you to the hottest club in Compton."
	@question = "Do you slide through with the homies?"
	@choice1 = "Nah. I\'m soft."
	@choice2 = "HUNDO"
	@direct1 = "stayingin"
	@direct2 = "HUNDO"
	erb :index_2_choices
end
get '/direction/:direct' do
	case params[:direct]
	when "stayingin" 
	@story = "Well, looks like your night is over."
	erb :ending
	end	

end

