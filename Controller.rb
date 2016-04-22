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
	erb :index_2_choices
end
get '/stayingin' do
	@story = "Well, looks like your night is over."
end

get 'direction/:choice' do
	case params[:choice]
	when "Yes"
		
	when "Nah. I\'m soft." 
	@story = "Well, looks like your night is over."
	erb :ending
	when "iron"
	#something
	end	

end

