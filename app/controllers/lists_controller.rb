class ListsController < ApplicationController
  def index
    @lists = List.all
    @list = List.new
  end

  def show
    @list = List.find(params[:id])
    @bookmark = Bookmark.new()

    @movies = Movie.all
    @bookmarks = Bookmark.all
  end

  #   validates :comment, length: { minimum: 6 }
  # validates :movie, uniqueness: { scope: :list }

  def create
    @list = List.new(list_params)
    @list.save
    redirect_to list_path(@list)
  end

  private

  def list_params
    params.require(:list).permit(:name)
  end

end
