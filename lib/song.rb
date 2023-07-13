class Song
    attr_accessor :name, :artist, :genre
    @@count = 0
    @@genres = []
    @@artists = []

    def initialize name, artist, genre
        @@count +=1
        @@genres << genre
        @@artists << artist
        @name = name
        @artists = artist
        @genre = genre
    end

    def self.count 
        @@count
    end

    def self.genres
        @@genres.uniq
    end

    def self.artist
        @@artists.uniq
    end

    def self.genre_count
        genre_count = {}
        @@genres.each {|genre| genre_count[genre] =+ 1}
        genre_count
    end

    def self.artist_count
        artist_count = Hash.new(0)
        @@artists.each {|artist| artist_count[artist] =+ 1}
        artist_count
    end
end

ninety_nine_problems = Song.new("99 Problems", "Jay-Z", "rap")

puts ninety_nine_problems.name
# => "99 Problems"

puts ninety_nine_problems.artist
# => "Jay-Z"

puts ninety_nine_problems.genre
# => "rap"

ninety_one_problems = Song.new("91 pants", "Dave", "grime")
ninety_two_problems = Song.new("92 dildos", "Yatchy", "rap")
ninety_three_problems = Song.new("93 caucasians", "Beyonce", "hiphop")
ninety_four_problems = Song.new("94 darkskins", "Jay-Z", "hiphop")

puts Song.artist
puts Song.genre_count
puts Song.artist_count
# puts Song.genre_count.tally