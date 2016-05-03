class BinaryTree
  attr_accessor :payload, :left, :right

  def initialize(payload, left = nil , right = nil)
    @payload = payload
    @left = left
    @right = right
  end

  def sort(nums)
    self.build!(nums)
    #self.to_array
  end

  protected

  def build!(nums)
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
    # flatten sorted bt to array
  end
end


tree = BinaryTree.new(7)
puts tree.sort([7,4,9,1,6,14,10]).inspect
