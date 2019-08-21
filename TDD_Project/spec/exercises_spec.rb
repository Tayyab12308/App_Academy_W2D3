require 'rspec'
require "exercises"


describe "Array#my_uniq" do
  arr = [1, 2, 3, 1, 2, 3]
  
  it "acts on an instance of the array class" do
    expect { arr.my_uniq }.not_to raise_error
  end

  it "should remove all duplicate elements" do
    expect(arr.my_uniq).to eq([1, 2, 3])
  end

  it "tests against hard coding" do
    arr = [4, 5, 6, 4, 5, 6]
    expect(arr.my_uniq).to eq([4, 5, 6])
  end
end

describe "Array#two_sum" do
  arr = [-1, 0, 2, -2, 1]

  it "acts on an instance of the array class" do
    expect { arr.two_sum }.not_to raise_error
  end

  it "return all indices in order" do
    expect(arr.two_sum).to eq([[0, 4], [2, 3]])
  end

  it "tests against hard coding" do
    arr = [0, 0, 1, -1]
    expect(arr.two_sum).to eq([[0, 1], [2, 3]])
  end
 
end

describe "Array#my_transpose" do
  arr = [
    [0, 1, 2],
    [3, 4, 5],
    [6, 7, 8]
  ]
  cols = [
    [0, 3, 6],
    [1, 4, 7],
    [2, 5, 8]
  ]
  it "acts on an instance of the array class" do
    expect {arr.my_transpose}.not_to raise_error
  end

  it "turns the rows into columns" do
    expect(arr.my_transpose).to eq(cols)
  end

  it "tests against hard coding" do
    arr = [
    [0, 1, 2],
    [6, 7, 8],
    [3, 4, 5]
    ]
    cols = [
    [0, 6, 3],
    [1, 7, 4],
    [2, 8, 5]
    ]
    expect(arr.my_transpose).to eq(cols)
  end
end


describe "#stock_picker" do
  arr = [ 1.00, 2.50, 3.13, 1.11, 0.50, 1.35, 10.07, 4.02, 5.27, 6.12 ]
  it "takes an array as an argument" do
    expect { stock_picker(arr) }.to_not raise_error
  end
  
  it "outputs the largest daily difference in stock prices" do
    expect(stock_picker(arr)).to eq([4, 6])
  end

  it "should test against hard coding" do
    arr = [ 0.10, 1.00, 5.50, 0.30 ]
    expect(stock_picker(arr)).to eq([0, 2])
  end
end

describe Hanoi do
  subject(:hanoi) { Hanoi.new }

  describe "#initialize" do

    it "should initialize 3 subarrays with starting elements" do
      expect(hanoi.board).to eq([[1, 2, 3, 4, 5], [], []])
    end
  end

  context "#move" do

    #hanoi.move(start_pos, end_pos)

    it "makes sure start_pos and end_pos are valid" do
      expect { hanoi.move(3, 4) }.to raise_error(PositionOffBoard)
      expect { hanoi.move(2, 1) }.to raise_error(EmptyStackError)
      expect { hanoi.move(0, 4) }.to raise_error(PositionOffBoard)
      expect { hanoi.move(0, 1) }.not_to raise_error
      #expect(valid_range.include?(end_pos)).to eq(true)
    end

    it "should move element correctly" do
     
      hanoi.move(0, 1)
      expect(hanoi.board).to eq([[2, 3, 4, 5], [1], []])
    end

  end
end