class Trainer < ActiveRecord::Base
  belongs_to :team
  has_many :pokemons
end
