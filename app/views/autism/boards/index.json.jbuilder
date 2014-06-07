json.boards do
  json.partial! partial: 'autism/boards/board', collection: @boards, as: :board
end