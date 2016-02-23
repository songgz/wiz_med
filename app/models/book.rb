# encoding: utf-8
class Book < Chapter

  field :year, type: Integer
  field :dynasty, type: String

  class << self
    def gen(*arrts, &block)
      book = Book.create(*arrts)
      block.arity<1 ? book.instance_eval(&block) : block.call(book) if block_given?
    end
  end


end
