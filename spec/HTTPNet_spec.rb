require 'spec_helper'
require 'HTTPNet'

describe 'HTTPNet' do
  describe '#initialize' do
    it 'should be initialized with one argument' do
      expect do
        HTTPNet.new('http://www.example.com')
      end.not_to raise_error
    end
    it 'should return data' do
      expect(HTTPNet.new('http://www.example.com')).not_to be_nil
    end
  end
end
