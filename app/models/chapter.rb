# encoding: utf-8

class Chapter
  include Mongoid::Document
  include Mongoid::Tree

  field :title, type: String  #标题
  field :name, type: String  #正式名
  field :alias, type: Array  #别名
  field :summary, type: String #概要

  embeds_many :ingredients, class_name:'Ingredient'

  def chapters
    Chapter.where(:parent_ids => self.id)
  end

  def articles
    Article.where(:parent_ids => self.id)
  end

  def recipes
    Recipe.where(:parent_ids => self.id)
  end

  private
  def article(*attrs, &block)
    article = Article.new(*attrs)
    block.arity<1 ? article.instance_eval(&block) : block.call(article) if block_given?
    self.children << article
  end

  def chapter(*attrs, &block)
    chapter = Chapter.new(*attrs)
    block.arity<1 ? chapter.instance_eval(&block) : block.call(chapter) if block_given?
    self.children << chapter
  end

end
