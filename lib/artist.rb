class Artist
  attr_accessor :name, :songs
  @@all = []

  def the_name
    @the_name
  end

    def initialize(name)
      @name = name
      @songs = []
    end

    def add_song(song)
      @songs << song
    end

    def save
      @@all << self
    end

    def self.all
      @@all
    end

    def self.find_or_create_by_name(name)
      self.all.detect do |artist|
        if artist.name == false
          Artist.new(name)
          #like group lab - look at those notes 
      else
        self.all.detect {|artist| artist.name}
      end
    end
    end

    def print_songs
      self.songs.each {|song| puts song.name}
    end


  end
