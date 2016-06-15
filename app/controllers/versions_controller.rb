class VersionsController < ApplicationController
  def index
    @versions = Verison.all
  end

  def new
    @version = Version.new
  end

  def create
    @version = Version.new(version_params)
    if @version.save
      redirect_to article_path
    else
      @errors = @version.errors.full_messages
      render 'new'
    end
  end

  private
    def version_params
      params.require(:version).permit(:title, :body, :editor_id, :article_id)
    end
end
