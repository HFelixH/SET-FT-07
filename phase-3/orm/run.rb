require 'pry'
require_relative './cat'

tom = Cat.new 'Tom', '5', 'Tabby'
bom = Cat.new 'Bom', '5', 'Tabby'
tim = Cat.new 'Tim', '5', 'Tabby'
tum = Cat.new 'Tum', '5', 'Tabby'

# bom.save(connection)
# tim.save(connection)
# tum.save(connection)

# row = tom.save(connection)

gokuls_tam = Cat.new 'Goku_Tam', 3, 'Feral'

gokuls_tam.name = 'sparkles v2'
gokuls_tam.age = 2

gokuls_tam.save

binding.pry
