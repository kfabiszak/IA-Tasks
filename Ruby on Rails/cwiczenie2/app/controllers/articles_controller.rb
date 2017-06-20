class ArticlesController < ApplicationController
  def index
  @articles = Article.where(published:true)
  end

  def new
   @article = Article.new
   end

   def create
   @article = Article.new(article_params)

   if @article.save
        flash[:notice] = 'Article was successfully created.'
        redirect_to articles_path
   else
        render :action => "new"
   end

   end

    def article_params
        params.require(:article).permit(:title,:body,:user_id,:published)
    end
end
