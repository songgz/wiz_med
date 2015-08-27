class Article < Chapter

  private
  def recipe(*attrs, &block)
    recipe = Recipe.new(*attrs)
    block.arity<1 ? recipe.instance_eval(&block) : block.call(recipe) if block_given?
    self.children << recipe
  end
end
