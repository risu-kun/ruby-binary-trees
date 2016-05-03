class BinaryTree
  attr_accessor :payload, :left, :right

  def initialize(payload, left = nil , right = nil)
    @payload = payload
    @left = left
    @right = right
  end

  def build!(nums)
    nums[1..-1].each do |num|
      self.insert(num)
    end
  end

  protected

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

  end
end



def binary_tree_sort(array) # returns array of sorted numbers
  tree = BinaryTree.new(array[0])
  tree.build!(array)
  # tree.to_array
  tree
end


puts binary_tree_sort([7,4,9,1,6,14,10]).inspect
