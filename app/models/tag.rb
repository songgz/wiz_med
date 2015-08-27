class Tag
  include Mongoid::Document

  field :title, type: String
  field :summary, type: String
end
