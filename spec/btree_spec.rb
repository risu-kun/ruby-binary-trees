require 'spec_helper'

RSpec.describe BinaryTree, type: :model do
  describe 'binary tree sort should work' do
    it 'should order the array' do
      expected = [1, 4, 6, 7, 9, 10, 14]
      array = [7, 4, 9, 1, 6, 14, 10]
      tree = BinaryTree.new
      expect(tree.sort(array)).to eq expected
    end
  end
end