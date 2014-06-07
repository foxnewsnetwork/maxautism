class Autism::MetaBoardsController < Autism::BaseController
  respond_to :json
  def show
    render json: _board_status
  end
  private
  def _board_status
    {
      meta_board: {
        id: :unique,
        boards: Autism::Board.count
      }
    }
  end
end