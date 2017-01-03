require 'spec_helper'
require 'compare_data'

describe 'CompareData' do
  describe '#compare_data' do
    it 'should return hash' do
      expect(CompareData.new.compare_data).to be_a_kind_of(Hash)
    end
  end
end
