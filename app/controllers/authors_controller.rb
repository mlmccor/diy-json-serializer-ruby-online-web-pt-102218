class AuthorsController < ApplicationController
  def show
    @author = Author.find(params[:id])
  end

  def create
    @author = Author.create(author_params)
  end

  private

  def author_params
    params.require(:author).permit(:name)
end
