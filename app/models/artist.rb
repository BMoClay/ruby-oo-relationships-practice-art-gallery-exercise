class Artist

  attr_reader :name, :years_experience
  @@all = []

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    @@all << self
  end

  def self.all
    @@all
  end

  def paintings
    Painting.all.select{|painting| painting.artist == self}
  end

  def galleries
    self.paintings.map{|painting| painting.gallery}   
  end

  def cities
    self.galleries.map{|gallery| gallery.city}.uniq
  end

  def self.total_experience
    Artist.all.sum{|artist| artist.years_experience}
  end

  def proficiency
   self.paintings.count.to_f / self.years_experience
  end

  def self.most_prolific
    Artist.all.max_by{|artist| artist.proficiency}
  end

  def create_painting(title, price, gallery)
   Painting.new("#{title}", "#{price}", self, "#{gallery}")
  end
end
