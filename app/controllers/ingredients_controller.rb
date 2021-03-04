class IngredientsController < ApplicationController
  validates :name, uniqueness: true
end
