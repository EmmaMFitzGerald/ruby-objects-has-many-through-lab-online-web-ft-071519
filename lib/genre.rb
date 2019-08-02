class Genre 
  
  attr_accessor :name, :songs
  
  @@all = []
  
  def initialize(name)
    @name = name 
    @@all << self 
  end 
  
  def songs 
    Song.all.select do |song|
      song.genre == self
    end
  end
  
  def self.all 
    @@all
  end 
  
  def artists
    self.songs.collect {|songs| songs.artist}
  end
  
end 