require_relative '../config/environment.rb'

ben = Artist.new("Ben", 1)
maggie = Artist.new("Maggie", 9)

fra = Gallery.new("FRA", "New York")
buckets = Gallery.new("Galerie Buckets", "Cologne")

shark_tonk_2 = Painting.new("Shark Tonk II", 5000, ben, fra)
shark_tonk = Painting.new("Shark Tonk", 5000, ben, fra)
heart_fountain = Painting.new("Heart Fountain", 10000, maggie, buckets)
unhappy_break_up = Painting.new("Unhappy Break Up", 12000, maggie, buckets)
unhappy_break_up_2 = Painting.new("Unhappy Break Up II", 12000, maggie, fra)
tile = Painting.new("Tile", 6000, maggie, buckets)


binding.pry

puts "Bob Ross rules."
