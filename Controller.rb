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
		@story = "You safely walk to the club and have a flame night."
		erb :ending
	when "callcops"
		@story = "The Uber driver catches you calling the 5-O. He tries to attack you."
		@question = "Do you..."
		@choice1 = "pull out a knife and fend for your life?"
		@choice2 = "try to negotiate?"
		@choice3 = "Book it to the club."
		@direct1 = "knife"
		@direct2 = "negotiate"
		@direct3 = "run"
		erb :index
	when "callamb"
		@story = "The Uber driver catches you calling an ambulance, but he thinks you\'re calling the cops and tries to attack you."
		@question = "Do you..."
		@choice1 = "pull out a knife and fend for your life?"
		@choice2 = "try to explain yourself?"
		@choice3 = "Book it to the club."
		@direct1 = "knife"
		@direct2 = "explain"
		@direct3 = "run"
		erb :index
	when "knife"
		@story = "Who brings a knife to the club? The police show up and the driver blames you for his wound and pulling a knife. You get arrested and have the worst night of your life."
		erb :ending
	when "negotiate"
		@story = "The Uber driver immediately responds \'I don\'t negotiate with customers.\' He stabs you. You start bleeding out. The police come and save you. You don\'t make it to the club, but at least you're alive."
		erb :ending
	when "run"
	when "explain"	
end

