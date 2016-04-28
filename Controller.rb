require 'sinatra'

get '/' do
	@choice1 = "Yes"
	@choice2 = "No"
	erb :intro
end


@directs = [["nah", "stayigin"], ["hundo", "hundo"]]

get '/first' do
	@story = "It\'s Saturday night. You get a text from your friend inviting you to the hottest club in Compton."
	@question = "Do you slide through with the homies?"
	@directs = [["stayingin", "Nah. I\'m soft."], ["HUNDO", "HUNDO"]]
	erb :index
end
get '/direction/:direct' do
	case params[:direct]
	when "stayingin" 
	@story = "Well, looks like your night is over."
	erb :ending
	when "HUNDO"
		@story = "You call an Uber. The driver only has two stars. "
		@question = "Do you take the Uber or walk?"
		@directs = [["walk", "Walk"], ["meetuber", "Nah, I wanna meet this guy."]]
		erb :index
	when "meetuber"
		@story = "The Uber driver is 12 minutes late. He tries to fight you, he's clealy under the influence of something. You stay in the cab. He crashes."
		@question = "What do you do next?"
		@directs = [["walk", "You walk to the club."], ["callcops", "You call the cops. This guy is sketchy and you don\'t feel safe."], ["callamb", "You call an ambulance. The driver is bleeding from his leg and needs help."]]
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
		@directs = [["knife", "pull out a knife and fend for your life?"], ["negotiate", "try to negotiate?"], []]
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
		@story = "You take off. You feel like you are flying, but then you trip and fall. You clearly broke your ankle."
		@question = "Do you still go to the club?"
		@choice1 = "Hell yeah, anything for the buzz. I\'m walking."
		@choice2 = "Why not? I\'ll call a new uber, and hopefully the driver will be normal."
		@choice3 = "No way. The homies can wait. I need to get to the hospital ASAP."
		@direct1 = "injuredwalk"
		@direct2 = "freshuber"
		@direct3 = "injured"
		erb :index 
	when "explain"	
		@story = "You tell the driver it was an ambulance. He understands. The ambulance shows up and takes the driver. You then realize you actually have a broken leg, but it\'s too late because the ambulance already left."
		@question = "Do you slide to the club anyways?"
		@choice1 = "Hell yeah, anything for the buzz. I\'m walking."
		@choice2 = "Why not? I\'ll call a new uber, and hopefully the driver will be normal."
		@choice3 = "No way. The homies can wait. I need to get to the hospital ASAP. I\'m calling another ambulance."
		@direct1 = "injuredwalk"
		@direct2 = "freshuber"
		@direct3 = "injured"
		erb :index
	end
end

