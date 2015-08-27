class Ingredient
  include Mongoid::Document

  field :title, type: String
  field :amount, type: Float
  field :unit, type: String
  field :note, type: String

  belongs_to :drug
  embedded_in :recipe, class_name:'Chapter', inverse_of: :recipe
end
