require_relative 'artist.rb'

class Song

    attr_accessor :name, :artist
    @@all = []


    def initialize(song_name)
        @name = song_name
        @@all << self
    end

    def self.all
        @@all
    end

    def artist_name=(artist_name)

        Artist.all.each do |artist|
            if artist.name == artist_name
                self.artist = artist
                return self
            end
        end

        artist = Artist.new(artist_name)
        self.artist = artist

    end

    def self.new_by_filename(filename)
        song_name = filename.split(" - ")[1]
        artist_name = filename.split(" - ")[0]
        song = Song.new(song_name)
        song.artist = Artist.new(artist_name)
        song
    end

end


