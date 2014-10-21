
#start by defining our initalize method
#first want to create a container to hold the 9 places on the board
#3 by 3 grif so we will name them A,B,C accross and 1,2,3 down
#these are then stored in a has object and their default values are set to spaces indicating that they are empty
#the 9 slots are then defined below
@places = {
  "a1"=>" ","a2"=>" ","a3"=>" ",
  "b1"=>" ","b2"=>" ","b3"=>" ",
  "c1"=>" ","c2"=>" ","c3"=>" "
}

#now we need to define the 8 winning possibilities
#these can be stored wihtin an array which is called @columns where each index is a nested array and defines the positions needed to win.

@columns = [
  ['a1','a2','a3'],
  ['b1','b2','b3'],
  ['c1','c2','c3'],
  ['a1','b1','c1'],
  ['a2','b2','c2'],
  ['a3','b3','c3'],
  ['a1','b2','c3'],
  ['c1','b2','a3']
]

#next we must define who is X and who is O
#then these must be assigned to a variable @computer and @user

@computer = rand() > 0.5 ? 'X' : 'O'
@user = @computer == 'X' ? 'O' : 'X'

#each player now needs a name
#We will name the computer as Mr Computer 
#Then we will ask the user to input their name 
#Then each will be stored in the variables @computer_name and @user_name

@computer_name = "Mr Computer"
put_line
puts " MR Computer TIC TAC TOE"
puts " What is your name?"
STDOUT.flush
@user_name = gets.chomp
put_bar

#put_line and put_bar are methods not yet defined which will print a line or a put_bar
#For the last part of the initialize method we will let whoever is X make their first move

if(@user == 'X')
	user_turn
else
	computer_turn
end

#the user/computer_turn methods are what will be called to allow either or to make a move. These will be defined properly later and for now we will define just have the put_line or put_bar methods.
def put_line
	puts "-------------------------------------------------------------------------------------------------------------"
end
def put_bar
	puts "#############################################################################################################"
	puts "#############################################################################################################"
end

#now we have enough information for the method that draws our ttt board
#print out the user name
#print out who is X and who is O which will make it easier for the player

def draw_game
	puts ""
	puts "#{@computer_name}: #{@computer}"
	puts "#{@user_name}: #{@user}"
	puts ""
	puts "   a b c"
	puts ""
	puts " 1 #{@places["a1"]}|#{@places["b1"]}|#{@places["c1"]}"
	puts "   -------"
	puts " 2 #{@places["a2"]}|#{@places["b2"]}|#{@places["c2"]}"
	puts "   -------"
	puts " 3 #{@places["a3"]}|#{@places["b2"]}|#{@places["c3"]}"
end



