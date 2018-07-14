class Movie < ApplicationRecord
    has_many :users
    attr_accessor :title, :year, :rating
end
