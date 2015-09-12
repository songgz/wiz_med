class Ingredient
  include Mongoid::Document

  field :title, type: String #原书药名
  field :qty, type: String   #原书药量
  field :unit, type: String  #原书单位
  field :note, type: String  #原书备注
  field :amount, type: Float

  belongs_to :drug
  embedded_in :recipe, class_name:'Chapter', inverse_of: :recipe
end
