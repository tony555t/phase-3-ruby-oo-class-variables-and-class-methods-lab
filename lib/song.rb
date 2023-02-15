require "pry"
class Song
    #attr_accessor :name ,:artist ,:genre

    @@count = 0
    @@genres=[]
    @@artists=[]
    attr_accessor :name ,:artist ,:genre
    
    def initialize(name,artist,genre)
        @name=name
        @artist=artist
        @genre=genre
        @@count +=1
        @@genres << @genre
        @@artists << @artist
    end
    
    def self.count
        @@count
        end
    def self.genre
        @@genres.uniq
        end
    def self.artist
        @@artists.uniq
    end
    def self.genre_count
       @@genre.tally
    end
   def self.artist_count
       @@artists.tally
   end

end
afro=Song.new("kil","man","tin")

binding.pry