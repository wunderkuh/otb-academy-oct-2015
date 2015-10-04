require 'board'

RSpec.describe "Board" do

  let(:board) { Board.new('........
........
........
...BW...
...WB...
........
........
........
B') }

  it "Renders correnctly" do
    expected_output = '........
........
........
...BW...
...WB...
........
........
........'
    expect(board.to_s).to eq expected_output
  end

  it "Recognizes player turn" do
    expect(board.turn).to eq "B"
  end

  it "Reads chars at position" do
    char = board.char_at(Point.new(3, 3))
    expect(char).to eq "B"
  end

  it "Sets chars at position" do
    expected_output = '........
........
..0.....
...BW...
...WB...
........
........
........'
    board.set_char('0', Point.new(2, 2))
    char = board.char_at(Point.new(2, 2))
    expect(char).to eq "0"
    expect(board.to_s).to eq expected_output
  end


end