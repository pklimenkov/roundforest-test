# class to control articles
class ArticlesController < ApplicationController
  def index
    @items = Article.order(:id).all
    render 'index'
  end
end
