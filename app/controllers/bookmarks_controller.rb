class BookmarksController < ApplicationController

  def new
    @list = List.find(params[:id])
    @bookmark = Bookmark.new
  end

  def create
    @bookmark = Bookmark.new(bookmark_params)
    @bookmark.save
    @list = List.find(params[:list_id])
    # redirect_to list_path(@list)
  end

  private

  def bookmark_params
    params.require(:bookmark).permit(:comment, :movie, :list)
  end
end
