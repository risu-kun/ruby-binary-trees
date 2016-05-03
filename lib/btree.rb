class BinaryTree
  attr_accessor :payload, :left, :right

  def initialize(payload = nil, left = nil , right = nil)
    @payload = payload
    @left = left
    @right = right
  end

  def sort(nums)
    self.build!(nums)
    self.to_array
  end

  protected

  def build!(nums)
    @payload = nums[0]
    nums[1..-1].each do |num|
      self.insert(num)
    end
  end

  def insert(num)
    if num < payload
      if @left
        @left.insert(num)
      else
        @left = BinaryTree.new(num)
      end
    else
      if @right
        @right.insert(num)
      else 
        @right = BinaryTree.new(num)
      end
    end      
  end

  def to_array
    sorted_array = []
    # if left child exists, recurse
    if @left
      sorted_array << @left.to_array
    end

    # add self to array
    sorted_array << self.payload

    # add right children to array 
    if @right
      sorted_array << @right.to_array
    end

    sorted_array.flatten
  end
end


tree = BinaryTree.new
puts tree.sort([7,4,9,1,6,14,10]).inspect
