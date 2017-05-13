# class to control search
class SearchController < ApplicationController
  def filter
    render 'search'
  end

  def find
    search_params = {}
    params.permit(:publisher_cont, :authors_cont, :genres_cont, :name_cont).each do |key, value|
      search_params[key.to_sym] = value if value.present?
    end
    @result = []

    unless search_params.key?(:publisher_cont)
      @result += Article.ransack(search_params.except(:publisher_cont)).result.to_a
    end
    @result += Book.ransack(search_params).result.to_a
    @result.shuffle!

    render 'search'
  end
end
