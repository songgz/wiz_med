class Doctor
  include Mongoid::Document

  field :name, type: String
  field :summary, type: String

  has_and_belongs_to_many :books
end
