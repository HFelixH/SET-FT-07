require 'pry'
class AuthorsController < ApplicationController
  
  # GET /articles or /articles.json
  def index
    @authors = Author.all
  end
end
