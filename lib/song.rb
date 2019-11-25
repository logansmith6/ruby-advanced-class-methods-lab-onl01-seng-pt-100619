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
    temp_name = nil
    @@all.each do |names|
        if song == names.name
          temp_name = names
        end
    end
    temp_name
  end

  def self.find_or_create_by_name(song)

      if find_by_name(song) == nil
        create_by_name(song)
      else
        find_by_name(song)
      end
    end

    def self.alphabetical
      @@all.sort_by {|az| az.name}
    end


end
