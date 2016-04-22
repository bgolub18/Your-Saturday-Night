require 'sinatra'

get '/' do
	erb :index
end
POST '/first' do
	@story = "It\'s Saturday night. You get a text from your friend inviting you to the hottest club in Compton."
	@question = "Do you slide through with the homies?"
	@choice1 = "Nah. I\'m soft."
	@choice2 = "HUNDO"
	erb :index_2_choices
end
POST '/stayingin' do
	
