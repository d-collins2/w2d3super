require "rspec"
require "towers"


describe TowersOfHanoi do
  subject(:game){TowersOfHanoi.new}

  describe "#initialize" do
    it "sets up a board" do
      expect(game.board).to be_a(Array)
      expect(game.board.length).to be(3)
    end

    it "sets up disks" do
      expect(game.board.first).to eq([1, 2, 3])
      expect(game.board[1].length).to be(0)
      expect(game.board[2].length).to be(0)
    end
  end

  describe "#move" do
    before(:each) do
      game.move(0,1)
    end

    it "makes a move to empty row" do
      expect(game.board[1]).to eq([1])
      expect(game.board.first).to eq([2,3])
    end

    it "raises error if bad move" do
      expect{game.move(0,1)}.to raise_error("Can't do that")
    end

    it "makes a valid move" do
      game.move(0,2)
      game.move(1,2)
      expect(game.board).to eq([[3],[],[1,2]])
    end
  end

  describe "#won" do
    before(:each) do
      game.move(0,1)
      game.move(0,2)
      game.move(1,2)
      game.move(0,1)
      game.move(2,0)
      game.move(2,1)
    end

    it "return true if game is won" do
      game.move(0,1)
      expect(game.won?).to be(true)
    end

    it "return false if game is not won" do
      expect(game.won?).to be(false)
    end
  end
end
