class Song 
  attr_accessor :name, :artist, :genre 
  @@count = 0 
  @@genres = []
  @@artists = []
  GENRE_COUNT = {}
  @@artist_count = {}
  
  def initialize(name, artist, genre)
    @name = name 
    @artist = artist 
    @@artists << artist 
    @genre = genre 
    @@genres << genre 
    
    @@count += 1 
  end 
  
  def self.count 
    @@count
  end 
  
  def self.genres 
    @@genres.uniq
  end 
  
  def self.artists
    @@artists.uniq 
  end 
  
  def self.genre_count
    
    @@genres.each do |g| 
      
      if !GENRE_COUNT[g]
        GENRE_COUNT[g] = 1 
      else 
        GENRE_COUNT[g] += 1
      end 
    end
    GENRE_COUNT
  end 
  
  def self.artist_count
    
    @@artists.each do |g| 
      
      if !@@artist_count[g]
        @@artist_count[g] = 1 
      else 
        @@artist_count[g] += 1
      end 
    end
    @@artist_count
  end 
  
end 