class Genre < ActiveRecord::Base
  extend Slugifiable::ClassMethods
  include Slugifiable::InstanceMethods
  
  has_many :artists, through: :songs
  has_many :songs, through: :song_genres
  has_many :song_genres
end
