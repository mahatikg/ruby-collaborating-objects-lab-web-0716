class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def artist=(artist)
    @artist = artist
  end

  def self.new_by_filename(filename)
    new_song = Song.new(filename.split(" - ")[1])
    #find a way to do this using regular expressions
    artist_name = filename.split(" - ")[0]
    new_song_artist = Artist.all.detect {|artist|artist.name == artist_name}
      ##worked with Alice on this, go back and check if you can
      #explain whats going on without her/after some time has passed
    if new_song_artist
      new_song_artist.add_song(new_song)
    else
      new_song.artist = Artist.new(filename.split(" - ")[0])

      new_song.artist.add_song(new_song)

      new_song.artist.save
    end
    new_song
  end



end
