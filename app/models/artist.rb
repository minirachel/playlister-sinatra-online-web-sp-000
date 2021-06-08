class Artist < ActiveRecord::Base
    has_many :songs
    has_many :genres, through: :songs

    def slug
        self.name.parameterize
    end

    def self.find_by_slug(slug)
        @new_string = slug.gsub("-"," ").titleize
        Artist.find_by(name: @new_string)
    end
end