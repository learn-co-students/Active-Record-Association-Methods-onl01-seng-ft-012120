require 'pry'

class Genre < ActiveRecord::Base
  has_many :songs
  has_many :artists, through: :songs

  def song_count
    self.songs.count
  end

  def artist_count
    self.artists.count
  end

  def all_artist_names
    names = []
    x = 0
    while x <= self.artists.length
      if self.artists.find_by_id(x)
        names << self.artists.find_by_id(x).name 
      end
      x += 1
    end
    names
  end
end
