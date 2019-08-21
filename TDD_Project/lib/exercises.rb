class Array

  def my_uniq
    arr = []
    self.each do |ele|
      arr << ele if !arr.include?(ele) 
    end
    arr
  end

  def two_sum
    arr = []
    self.each_with_index do |ele, i|
      (i + 1...self.length).each do |i2|
        arr << [i, i2] if self[i] + self[i2] == 0  
      end  
    end
    arr
  end

  def my_transpose
    arr = []
    self.each_with_index do |rows, i|
      new_level = []
      rows.each_with_index do |ele, i2|
        new_level << self[i2][i]
      end
      arr << new_level
    end
    arr
  end
end


def stock_picker(stocks)
  difference = 0
  best_days = []
  (0...stocks.length - 1).each do |i1|
    ((i1 + 1)...stocks.length).each do |i2|
      if stocks[i2] - stocks[i1] > difference
        difference = stocks[i2] - stocks[i1]
        best_days = [i1, i2]
      end
    end
  end
  best_days
end
class PositionOffBoard < StandardError
  def message
    "Either the start or the end positions are off the board"
  end
end
class EmptyStackError < StandardError
  def message
    "That stack is empty"
  end
end


class Hanoi

  attr_accessor :board
  def initialize
    @board = [[1, 2, 3, 4, 5], [], []]
  end

  
  
  def move(start_pos, end_pos)
    valid_range = [0, 1, 2]
    if !valid_range.include?(start_pos) 
      raise PositionOffBoard
    elsif !valid_range.include?(end_pos)
      raise PositionOffBoard
    elsif self[start_pos].empty? == true
      raise EmptyStackError
    end

    ele = self[start_pos].shift
    if self[end_pos].empty? || ele < self[end_pos][-1] 
      self[end_pos].unshift(ele)
    end
  end

  private
  def [](pos)
    board[pos]
  end

end