require 'pry'
class ArticlesController < ApplicationController
  before_action :set_article, only: %i[show edit update destroy]

  # GET /articles or /articles.json
  def index
    @articles = Article.all
  end

  # GET /articles/1 or /articles/1.json
  def show; end

  # GET /articles/new
  def new
    @article = Article.new
  end

  # GET /articles/1/edit
  def edit; end

  # POST /articles or /articles.json
  def create
    puts "Params: #{params}"
    @article = Article.new
    @article.name = article_params[:name]
    @article.content = article_params[:content]
    
    @article.author_id = article_params[:author_id]
    @article.category_id = article_params[:category_id]

    respond_to do |format|
      if @article.save
        format.html { redirect_to article_url(@article), alert: 'Article was successfully created.' }
      else
        format.html { render :new, status: :bad_request }
      end
    end
  end

  # PATCH/PUT /articles/1 or /articles/1.json
  def update
    respond_to do |format|
      print article_params
      @article.content = article_params[:content]
      @article.save
      # binding.pry
      print "format - #{format}"

      # if
      format.all { redirect_to article_url(@article), alert: 'Article was successfully updated.' }
      format.json { render :show, status: :ok, location: @article }
      # else
      #   format.html { render :edit, status: :unprocessable_entity }
      #   format.json { render json: @article.errors, status: :unprocessable_entity }
      # end
    end
  end

  # DELETE /articles/1 or /articles/1.json
  def destroy
    # binding.pry

    @article.destroy

    respond_to do |format|
      format.html { redirect_to articles_url, notice: 'Article was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_article
    @article = Article.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def article_params
    params.fetch(:article, {})
  end
end
