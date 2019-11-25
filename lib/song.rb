require 'pry'
class Song
  attr_accessor :name, :artist_name, :named
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

  def self.create
    song = self.new
    @@all << song
    song
    #binding.pry
  end

  def self.new_by_name(song)
    @named = self.new
    @named.name = song
    @named
  end

  def self.create_by_name(song)
    @named = Song.create
    @named.name = song
    @named
  end

  def self.find_by_name(song)
    temp_name = ""
    @@all.each do |names|

        if song == names.name
          temp_name = names.name
          temp_name
        end
#binding.pry
    end

  end

end
