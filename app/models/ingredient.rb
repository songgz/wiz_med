# encoding: utf-8

class Ingredient
  include Mongoid::Document

  field :title, type: String #ԭ
  field :qty, type: String   #
  field :unit, type: String  #
  field :note, type: String  #
  field :amount, type: Float

  belongs_to :drug
  embedded_in :recipe, class_name:'Chapter', inverse_of: :recipe
end
