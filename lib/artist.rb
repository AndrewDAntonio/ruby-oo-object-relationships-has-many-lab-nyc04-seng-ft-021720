class Artist

    @@songs = []
    attr_accessor :name, :song

    def initialize(name)
        @name = name
    end

    def songs
       Song.all
    end

    def add_song(song)
       song.artist = self 
       self.song = song
       @@songs << song
       
    end

    def add_song_by_name(song_name)
        new_song = Song.new(song_name)
        new_song.artist = self
        self.song = new_song
        @@songs << new_song
        
        
    end

    def self.song_count
        Song.all.length
        
    end
    
    
end
