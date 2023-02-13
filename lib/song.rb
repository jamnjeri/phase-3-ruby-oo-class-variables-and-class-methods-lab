class Song

    attr_accessor :name, :artist, :genre

    @@count = 0
    @@artist = []
    @@genres = []
    @@artists = []

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1

        # Add new song genre to list of genres
        @@genres << genre

        # Add new artist name to list of artists
        @@artists << artist

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
        # Count how many of each genre exist in the array
        genre_list = @@genres.tally
    end

    def self.artist_count
        # Count how many of each artist exist in the array
        artist_list = @@artists.tally
    end

end

# Personal Tests
# c1 = Song.new("Girls", "Beyonce", "Pop")
# puts Song.count

# c2 = Song.new("Take A Bow", "Rihanna", "Ballad")
# puts Song.count


# c3 = Song.new("Roar", "Katy-Perry", "Pop")
# puts Song.count


# c4 = Song.new("Bow-Down", "Beyonce", "Hip-Hop")
# puts Song.count
# Song.genre_count
# Song.artist_count
