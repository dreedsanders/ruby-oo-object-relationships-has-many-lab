class Artist 
    attr_accessor :name

    @@all =[]

    def initialize (name)
        @name = name
        @@all << self
    end

    def songs
        Song.all.select {|song_object| song_object.artist == self}
    end

    def add_song(song)
        song.artist = self 
    end


    def add_song_by_name(song_name)
        s2 = Song.new(song_name)
        s2.artist = self 
    end


    def self.song_count
        Song.all.count
    end




end
