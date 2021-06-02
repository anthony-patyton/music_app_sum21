class BillBoardsController < ApplicationController
  def index
    @billboards = BillBoard.all
    render component: 'BillBoards', props: { billBoards: @billBoard }
  end

  def show
    @billboard = BillBoard.find(params[:id])
    render component: 'BillBoard', props: { billboard: @billboard}
  end

  def new
    @billboard = BillBoard.new
    render component: 'BillBoardNew', props: { billboard: @billboard }
  end

  def edit
    @billboard = BillBoard.find(params[:id])
    render component: 'BillBoardEdit', props { billboard: @billboards}
  end

  def create
    @billboard = BillBoard.new(billboard_params)
    if @billboard.save
      return
    else
      render component: 'BillBoardNew', props, { billboard: @billboard }
    end
  end

  def update
    @billboard = BillBoard.find(params[:id])
    if @billboard.update(billboard_params)
      return
    else
      render component: 'BillBoardEdit', props: { billboard: @billboard }
    end
  end

  def destroy
    BillBoard.find(params [:id]).destroy
    return
  end

  private
  def billboard_params
    params.require(:billboard).permit(:attr, :attr2, :everything the table has)
  end
end
