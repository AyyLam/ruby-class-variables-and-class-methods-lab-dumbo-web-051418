class Song 
  
  attr_accessor :name, :artist, :genre 
  
  @@count = [] 

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre 
    @@count << self 
  end 
  
  def self.count 
    @@count.size 
  end 
  
  def self.artists
    @@count.select {|song| song.artist}
  end
  
  def self.assert_generates
    @@count.select {|song| song.genres}
  end

end 
  