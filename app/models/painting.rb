class Painting

  attr_reader :title, :price, :artist
  attr_accessor :gallery, :artist

  @@all = []

  def initialize(title, price)
    @title = title
    @price = price
    @@all << self
  end

  def self.all
    @@all
  end

  def self.total_price
    self.all.map{|painting|painting.price}.sum
  end

  def gallery= (gallery)
    @gallery = gallery
  end

  def artist= (artist)
    @artist = artist
  end
end
