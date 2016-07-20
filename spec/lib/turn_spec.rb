require "spec_helper"

describe Turn do
  let(:board) { Board.new }
  let(:player) { Player.new('Jon', 'x') }
  let(:row) { 2 }
  let(:column) { 1 }
  let(:turn) { Turn.new(self, player, column) }

  it "has a player" do
    expect(turn.player.player).to eq('Jon')
  end

  it "has a column where it places the turn" do
    expect(turn.column_index).to eq(column)
  end

  context "checking for win conditions" do
    context "horizontally" do
      it "does have a win if 4 in a row of the same player is found" do

      end
      it "does not have a win if row is interrupted by another player" do

      end
      it "does not have a win if there are not 4 in a row" do

      end
    end
  end
end
