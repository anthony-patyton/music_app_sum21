class BillBoardsController < ApplicationController
  def index
    @billboards = BillBoard.all
    render component: 'BillBoards', props: { billboards: @billboards }
  end

  def show
    @billboard = BillBoard.find(params[:id])
    render component: 'BillBoard', props: { billboard: @billboard }
  end

  def new
    @billboard = BillBoard.new
    render component: 'BillBoardNew', props: { billboard: @billboard }
  end

  def edit
    @billboard = BillBoard.find(params[:id])
    render component: 'BillBoardEdit', props: { billboard: @billboard }
  end

  def create
    @billboard = BillBoard.new(billboard_params)
    if @billboard.save
      redirect_to bill_boards_path
    else
      render component: 'BillBoardNew', props: { billboard: @billboard }
    end
  end

  private
    def billboard_params
      params.require(:billboard).permit(:title, :img)
    end
end
