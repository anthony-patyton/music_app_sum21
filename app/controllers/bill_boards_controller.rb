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
end
