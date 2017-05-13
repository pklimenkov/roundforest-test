# class to control books
class BooksController < ApplicationController
  def index
    @items = Book.order(:id).all
    render 'index'
  end

  def prime
    max_length = Book.order('length(name) DESC').limit(1).pluck(:name).first.size
    prime_numbers = Prime.take_while { |p| p < max_length }

    @items = Book.where("length(name) in (#{prime_numbers.join(', ')})").order(:id).all
    render 'index'
  end
end
