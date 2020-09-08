class MusicLibraryController

  def initialize(path = "./db/mp3s")
    MusicImporter.new(path).import
  end

  def call
    user_input = ""
    puts "Welcome to your music library!"
    puts "To list all of your songs, enter 'list songs'."
    puts "To list all of the artists in your library, enter 'list artists'."
    puts "To list all of the genres in your library, enter 'list genres'."
    puts "To list all of the songs by a particular artist, enter 'list artist'."
    puts "To list all of the songs of a particular genre, enter 'list genre'."
    puts "To play a song, enter 'play song'."
    puts "To quit, type 'exit'."
    puts "What would you like to do?"
    while user_input != "exit"
      user_input = gets
    end
  end

  def list_songs
    # binding.pry
    counter = 1
    sorted = []
    sorted = Song.all.sort { |a, b| a.name <=> b.name }
    sorted.each do |a|
      puts "#{counter}. #{a.artist.name} - #{a.name} - #{a.genre.name}"
      counter += 1
    end
  end

  def list_artists
    counter = 1
    sorted = Artist.all.sort { |a, b| a.name <=> b.name }
    sorted.uniq.each do |a|
      puts "#{counter}. #{a.name}"
      counter += 1
    end
  end

  def list_genres
    counter = 1
    sorted = Genre.all.sort { |a, b| a.name <=> b.name }
    sorted.uniq.each do |a|
      puts "#{counter}. #{a.name}"
      counter += 1
    end
  end

  def list_songs_by_artist
  end

  def list_songs_by_genre
  end

  def play_song
  end
end
