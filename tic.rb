
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