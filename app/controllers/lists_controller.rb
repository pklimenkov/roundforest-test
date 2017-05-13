# class to control lists
class ListsController < ApplicationController
  def books
    @items = List.order(:id).all
    render 'books'
  end
end
