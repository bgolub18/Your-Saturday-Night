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
	when "HUNDO"
		@story = "You call an Uber. The driver only has two stars. "
		@question = "Do you take the Uber or walk?"
		@choice1 = "Walk"
		@choice2 = "Nah, I wanna meet this guy."
		@direct1 = "walk"
		@direct2 = "meetuber"
		erb :index_2_choices
	when "meetuber"
		@story = "The Uber driver is 12 minutes late. He tries to fight you, he's clealy under the influence of something. You stay in the cab. He crashes."
		@question = "What do you do next?"
		@choice1 = "You walk to the club."
		@choice2 = "You call the cops. This guy is sketchy and you don\'t feel safe."
		@choice3 = "You call an ambulance. The driver is bleeding from his leg and needs help."
		@direct1 = "walk"
		@direct2 = "callcops"
		@direct3 = "callamb"
		erb :index 
	when "walk"

end

