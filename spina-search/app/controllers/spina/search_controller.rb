module Spina
  class SearchController < ApplicationController
    def query
      query = params[:q]
      render json: Page.active.where('title LIKE ?', "%#{query}%").to_json
    end
  end
end