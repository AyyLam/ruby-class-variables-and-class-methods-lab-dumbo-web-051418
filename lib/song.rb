class Song 
  
  attr_accessor :name, :artist, :genre 
  
  @@count = 0
  @@artists = []
  @@genres = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre 
    @@count += 1
    @@artists << @artist
    @@genres << @genre
  end 
  
  def self.count 
    @@count 
  end 
  
  def self.artists
    @@count.select {|song| song.artist}
  end
  
  def self.assert_generates
    @@count.select {|song| song.genres}
  end

end 
  