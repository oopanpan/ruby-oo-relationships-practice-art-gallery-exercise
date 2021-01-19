class Artist

  @@all =[]

  attr_reader :name, :years_experience

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    @@all << self
  end

  def self.all
    @@all
  end

  def create_painting(title, price, gallery)
    new_painting = Painting.new(title, price)
    new_painting.gallery = gallery
    new_painting.artist = self
  end

  def paintings
    Painting.all.select{|painting| painting.artist == self}
  end

  def galleries
    self.paintings.map{|painting|painting.gallery}.uniq
  end

  def cities
    self.galleries.map{|gallery|gallery.city}
  end

  def self.total_experience
    self.all.map{|artist| artist.years_experience}.sum
  end

  def self.most_prolific
    self.all.max{|artist|(artist.paintings.count.to_f/artist.years_experience.to_f)}
  end


end
