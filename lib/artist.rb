class Artist

    attr_accessor :name
    @@all = []
    

    def initialize(artist_name)
        @name = artist_name
        @@all << self
    end

    def self.all
        @@all
    end

    def add_song(song)
        song.artist = self
    end

    def songs
        Song.all.select{|song| song.artist == self}
    end

    def self.find_or_create_by_name(artist_name)

        @@all.each do |artist|
            return artist if artist.name == artist_name
        end

        Artist.new(artist_name)
    end

    def print_songs
        puts songs.map{|song| song.name}
    end





end