require "spec_helper"

describe Board do
  let(:board) { Board.new(6,7)}

  it "defaults to 6 rows high" do
    expect(board.board[0..5].size).to eq(6)
  end

  it "defaults to 7 columns across" do
    expect(board.board[0].size).to eq(7)
  end

  it "places a turn on the board" do
    player = Player.new('Jon', 'x')
    column = 1
    board.add_turn(player, column)

    board_printout =
      "|                     |\n" +
      "|                     |\n" +
      "|                     |\n" +
      "|                     |\n" +
      "|                     |\n" +
      "| x                   |\n" +
      "|_____________________|\n" +
      "  1  2  3  4  5  6  7 \n"

    expect(board.print_board).to eq(board_printout)
  end
end
