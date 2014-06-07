class Autism::BoardsController < Autism::BaseController
  respond_to :json
  def index
    respond_with _boards
  end

  private
  def _boards
    @boards ||= Autism::Board.all
  end
end