class ListsController < ApplicationController
  def index
    @lists = List.all
  end

  def show
    @list = List.find(params[:id])
  end

  def new
    @list = List.new
  end

  def create
    @list = List.create(params_list)
    redirect_to list_path(@list)

  end

  def destroy
    @list = List.find(params[:id])
    @list.destroy
    redirect_to root_path
  end


  def params_list
    params.require(:list).permit(:name)

  end

end
