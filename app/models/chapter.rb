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

  def method_missing(method_sym, *args, &block)
    write(method_sym, *args, &block)
  end

  private
  def write(part, *attrs, &block)
    begin
      child = Object.const_get(part.to_s.humanize).new(*attrs)
      block.arity<1 ? child.instance_eval(&block) : block.call(child) if block_given?
      self.children << child
    rescue NameError => e
      p e
    end
  end

end
