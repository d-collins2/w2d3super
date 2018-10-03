require "rspec"
require "tdd"
require "towers"

describe "#my_uniq" do
  subject(:arr){[1, 2, 1, 3, 3]}
  it "takes an array" do
    expect(arr).to be_a(Array)
  end

  it "returns an array" do
    expect(my_uniq(arr)).to be_a(Array)
  end

  it "returns unique numbers" do
    expect(my_uniq(arr)).to eq([1,2,3])
  end
end

describe "#two_sum" do
  subject(:arr){[-1, 0, 2, -2, 1]}

  it "returns an array" do
    expect(two_sum(arr)).to be_a(Array)
  end

  it "includes the correct pairs" do
    expect(two_sum(arr)).to include([0,4], [2,3])
  end

  it "returns the sorted pairs" do
    expect(two_sum(arr)).to eq([[0,4], [2,3]])
  end
end

describe "#my_transpose" do
  subject(:arr){[
                [0, 1, 2],
                [3, 4, 5],
                [6, 7, 8]
                ]}
    it "returns an array of the number of elements" do
      expect(my_transpose(arr).flatten.length).to eq(9)
    end

    it "returns the transposed array" do
      expect(my_transpose(arr)).to eq(arr.transpose)
    end
end

describe "#stock_picker" do
  subject(:arr){[1,10,2,20]}

  it "returns an array" do
    expect(stock_picker(arr)).to be_a(Array)
  end

  it "returns index of bought stock" do
    expect(stock_picker(arr).first).to eq(0)
  end

  it "returns index of sold stock" do
    expect(stock_picker(arr).last).to eq(3)
  end

  it "returns correct array of bought & sold stock" do
    expect(stock_picker(arr)).to eq([0, 3])
  end
end
