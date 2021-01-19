require 'pry'
require_relative '../app/models/artist.rb'
require_relative '../app/models/gallery.rb'
require_relative '../app/models/painting.rb'

painting_1 = Painting.new("Hello World", 200)
painting_2 = Painting.new("This", 150)
painting_3 = Painting.new("is fun.", 300)
painting_4 = Painting.new("Mona Lisa", 780000000000)

gallery_1 = Gallery.new("SAM", "Seattle")
gallery_2 = Gallery.new("MoMa", "NYC")

artist_1 = Artist.new("Adam", 7)
artist_2 = Artist.new("Bob", 2)

painting_1.artist = artist_1
painting_4.artist = artist_1
painting_2.artist = artist_2
painting_2.artist = artist_2
Pry.start(binding)

puts "Just some texts here."