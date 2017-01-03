require 'spec_helper'
require 'data_manager'

describe 'DataManager' do
  describe '#make_hash' do
    it 'should require filename as argument' do
      expect do
        DataManager.make_hash(FileManager.getMaleNameFile)
      end.not_to raise_error
    end
    it 'should return hash' do
      expect(DataManager.make_hash(FileManager.getMaleNameFile))
        .to be_a_kind_of(Hash)
    end
  end
end
