class Recipe < Chapter

  field :function, type: String
  field :usage, type: String
  field :solution, type: String
  field :revise, type: String
  field :effect, type: String
  field :dissertation, type: String
  field :quotes, type: Array
  field :document, type: Array
  field :comments, type: Array

  has_many :tags, validate: false

  private
  def ingredient(*attrs)
    self.ingredients.build(*attrs)
  end

end
