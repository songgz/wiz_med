# encoding: utf-8
class Tag
  include Mongoid::Document

  field :title, type: String
  field :summary, type: String
end
