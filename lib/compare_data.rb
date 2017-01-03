require 'data_manager'
require 'file_manager'
# CompareData.rb
class CompareData
  attr_reader :hash_male, :hash_female

  def initialize
    @hash_male = DataManager.make_hash(FileManager.getMaleNameFile)
    @hash_female = DataManager.make_hash(FileManager.getFemaleNameFile)
  end

  def compare_data
    hash = {}
    @hash_male.each do |key, _value|
      if @hash_female.key?(key)
        hash[key] = (@hash_female[key].to_f - @hash_male[key].to_f).round(1)
      end
    end
    hash
  end
end
