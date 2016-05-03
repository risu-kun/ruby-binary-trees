class BinaryTree
  attr_accessor :payload, :left, :right

  def initialize(payload, left, right)
    @payload = payload
    @left = left
    @right = right
  end

  def insert(num)
    if num < payload
      if @left
        @left.insert(num)
      else
        @left = BinaryTree.new(num, nil, nil)
      end
    else
      if @right
        @right.insert(num)
      else 
        @right = BinaryTree.new(num, nil, nil)
      end
    end      
  end

end

def build_tree(nums)
  tree = BinaryTree.new(nums[0], nil, nil)

  nums[1..-1].each do |num|
    tree.insert(num)
  end

  tree
end

