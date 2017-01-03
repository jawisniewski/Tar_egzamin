require 'spec_helper'
require 'file_manager'

describe 'FileManager' do
  describe '#getMaleNameFile' do
    it 'should return String' do
      expect(FileManager.getMaleNameFile).to be_a_kind_of(String)
    end
    it 'should return correct data' do
      expect(FileManager.getMaleNameFile)
        .to eq('male' << Time.new.year.to_s << '.txt')
    end
  end

  describe '#getFemaleNameFile' do
    it 'should return String' do
      expect(FileManager.getFemaleNameFile).to be_a_kind_of(String)
    end
    it 'should return correct data' do
      expect(FileManager.getFemaleNameFile)
        .to eq('female' << Time.new.year.to_s << '.txt')
    end
  end

  describe '#create_files' do
    it 'should create files' do
      FileManager.create_files
      expect(File).to exist(FileManager.getMaleNameFile)
      expect(File).to exist(FileManager.getFemaleNameFile)
    end
  end

  describe '#extract_data' do
    it 'should return String' do
      expect(FileManager.extract_data(FileManager.getMaleNameFile))
        .to be_a_kind_of(String)
    end
  end
end
