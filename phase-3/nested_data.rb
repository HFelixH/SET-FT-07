require 'pry'

def sum(num_1, num_2)
  num_1 + num_2
end

num_1 = 11
num_2 = 22

sum(num_1, num_2) # => 3

tic_tac_toe_board.each do |row|
  row.each do |cell|
    print "#{cell} |"
  end
  puts "\n----------"
end

def print_board(tic_tac_toe_board)
  tic_tac_toe_board.each do |row|
    row.each do |cell|
      print "#{cell} |"
    end
    puts "\n----------"
  end
end

tic_tac_toe_board = [
  ['', '', ''],
  ['', '', ''],
  ['', '', '']
]

def make_move(tic_tac_toe_board, row, column, symbol)
  return if tic_tac_toe_board[row][column] != ''

  tic_tac_toe_board[row][column] = symbol
  print_board tic_tac_toe_board
end

list_of_recipes = [
  {
    name: 'recipe 1',
    multiplier: {
      '4 serves': 1,
      '8 serves': 2,
      arr: []
    },
    ingredients: %w[
      salt pepper
    ]
  },
  {
    name: 'recipe 2',
    ingredients: %w[
      salt pepper chicken
    ]
  },
  {
    name: 'recipe 3',
    ingredients: %w[
      salt pepper mushrooms
    ]
  }
]

list_of_recipes.each do |recipe|
  recipe.each do |key, value|
    print "#{key} => "
    if value.class.to_s == 'Array'
      value.each do |item|
        puts item
      end
    elsif value.class.to_s == 'Hash'
      value.each do |key, item|
        puts "#{key} => #{item}"
      end
    else
      puts value.to_s
    end
    puts
  end
end
