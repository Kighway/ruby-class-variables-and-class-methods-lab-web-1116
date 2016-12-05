class Song

attr_reader :name, :artist, :genre

@@count = 0
@@artists = []
@@genres = []

  def initialize (name, artist, genre)
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

  def self.artists
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end

  def self.genre_count
    genre_counter = Hash.new(0)
    @@genres.each do |genre|
      genre_counter[genre] += 1
    end
    genre_counter
  end

  def self.artist_count
    artist_counter = Hash.new(0)
    @@artists.each do |artist|
      artist_counter[artist] += 1
    end
    artist_counter
  end

end
