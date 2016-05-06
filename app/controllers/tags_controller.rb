class TagsController < ApplicationController

  def index
    @tags = Tag.all
  end

  def show
    @tag = Tag.find(params[:id])
  end

  def destroy
    @tag = Tag.destroy(params[:id])

    flash.notice = "Tag'#{@tag.name}' Deleted!"

    redirect_to tags_url
  end
end
