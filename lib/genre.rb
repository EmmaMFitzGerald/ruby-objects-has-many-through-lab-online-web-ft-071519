class Genre 
  
  attr_accessor :name 
  
  @@all = []
  
  def initialize(name)
    @name = name 
    @@all << self 
  end 
  
  def songs 
    Songs.all.select do |song|
    song.genre == self
    end
  end
  
  def artist 
  end 
  
end 