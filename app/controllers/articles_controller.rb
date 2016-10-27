class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def new
  end

  def create
    @article = Article.new article_params

    respond_to do |format|
      if @article.save
        format.html { redirect_to @article }
      else
        format.html { render :new }
      end
    end
  end

  def show
    @article = Article.find(params[:id])
  end

  private

  def article_params
    params.require(:article).permit(:title, :text)
  end
end
