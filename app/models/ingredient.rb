class Ingredient
  include Mongoid::Document

  field :title, type: String #ԭ��ҩ��
  field :qty, type: String   #ԭ��ҩ��
  field :unit, type: String  #ԭ�鵥λ
  field :note, type: String  #ԭ�鱸ע
  field :amount, type: Float

  belongs_to :drug
  embedded_in :recipe, class_name:'Chapter', inverse_of: :recipe
end
