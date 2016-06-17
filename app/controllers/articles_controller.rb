class ArticlesController < ApplicationController
  def index
    @article = @version.article
    @versions = @article.versions.order(created_at: :desc)
  end

  def show
    @article = Article.find(params[:id])
    @sections = @article.versions.last.add_ids_to_h1s
  end

  def new
    @article = Article.create(author: current_user)
    @version = Version.new
    if user_signed_in?
      render 'new'
    else
      redirect_to new_user_session_path
    end
  end

  def edit
    @article = Article.find(params[:id])
    @last_version = @article.versions.last
    @version = @last_version.dup
    render '/versions/_form'
  end

  def update
    @article = Article.find(params[:article_id])
    @version = @article.versions.create(version_params)

    respond_to do |format|
      if @version.save
        format.html { redirect_to @article, notice: 'version was successfully created.' }
        format.json { render :show, status: :created, location: @version }
      else
        format.html { render :new }
        format.json { render json: @version.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy
    redirect_to root_url
  end

  private

  def version_params
    params.require(:version).permit(:title, :body)
  end
end
