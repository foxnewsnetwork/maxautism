class Autism::BoardsController < Autism::BaseController
  respond_to :json
  def index
    respond_with _boards
  end

  def create
    @board = Autism::Board.new _board_params
    if @board.save
      render json: { board: @board }
    else
      render json: { error: @board.errors }
    end
  end

  def show
    respond_with board: Autism::Board.find( params[:id] )
  end

  private
  def _boards
    @boards = Autism::Board.order("created_at desc").page(_page).per(_per_page)
  end
  def _page
    params[:page].to_i
  end
  def _per_page
    params[:per_page].to_i
  end
  def _board_params
    params.require(:board).permit(:thoughts, :speaker)
  end
end