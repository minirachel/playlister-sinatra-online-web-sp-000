class Genre < ActiveRecord::Base
    has_many :artists
    has_many :songsgenres
    has_many :songs, through: :songsgenres
end