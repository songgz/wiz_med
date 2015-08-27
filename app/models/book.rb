class Book < Chapter

  field :year, type: Integer
  field :dynasty, type: String

  class << self
    def gen(*arrts, &block)
      book = Book.create(*arrts)
      block.arity<1 ? book.instance_eval(&block) : block.call(book) if block_given?
    end
  end

  private
  def chapter(*attrs, &block)
    chapter = Chapter.new(*attrs)
    block.arity<1 ? chapter.instance_eval(&block) : block.call(chapter) if block_given?
    self.children << chapter
  end

  def article(*attrs, &block)
    article = Article.new(*attrs)
    block.arity<1 ? article.instance_eval(&block) : block.call(article) if block_given?
    self.children << article
  end

end
