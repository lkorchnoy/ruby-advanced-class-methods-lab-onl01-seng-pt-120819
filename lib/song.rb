class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

  def Song.create
   Song.self.all << self.new
  end

  def Song.new_by_name(name)
    song = Song.new_by_name
  end
  
  def Song.create_by_name(name)
    song.name = name
    @@all << song
  end
  
  def Song.find_by_name(name)
    @@all.find{ |song| song.name == name}
  end

   def Song.find_or_create_by_name(name)
    name.each_with_index(1) do |song, index|
         puts "#{index}.#{song}"
    end
    
    def Song.alphabetical%w()
      array.sort
    end
    
    def Song.new_from_filename(name)
      song.name.split ("").collect{|song| song.name << mp3}.join("")
      artist_name = Taylor Swift
    end

   def self.destroy_all
     self.all.clear
   end
   
end

self.class.all << self
  end

  def self.create
    song = Song.new
    song.save
    song
  end

  def self.new_by_name(song_name)
    song = self.new
    song.name = song_name
    song
  end

  def self.create_by_name(song_name)
    song = self.create
    song.name = song_name
    song
  end

  def self.find_by_name(song_name)
    self.all.detect{|s| s.name == song_name}
  end

  def self.find_or_create_by_name(song_name)
    self.find_by_name(song_name) || self.create_by_name(song_name)
  end

  def self.alphabetical
    self.all.sort_by{|s| s.name}
  end

  def self.new_from_filename(filename)
    parts = filename.split(" - ")
    artist_name = parts[0]
    song_name = parts[1].gsub(".mp3", "")

    song = self.new
    song.name = song_name
    song.artist_name = artist_name
    song
  end

  def self.create_from_filename(filename)
    parts = filename.split(" - ")
    artist_name = parts[0]
    song_name = parts[1].gsub(".mp3", "")

    song = self.create
    song.name = song_name
    song.artist_name = artist_name
    song
  end

  def self.destroy_all
    self.all.clear
  end

end
