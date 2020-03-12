require 'pry'
class Song < ActiveRecord::Base
  belongs_to :artist
  belongs_to :genre

  def get_genre_name
    self.genre.name
  end

  def drake_made_this
    if Artist.exists?(name: 'Drake')
      d = Artist.find_by name: 'Drake'
      self.artist_id = d.id
    else
      d = Artist.create(name: 'Drake')
      self.artist_id = d.id
    end
  end
end