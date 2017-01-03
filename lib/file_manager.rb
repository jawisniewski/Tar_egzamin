# FileManager
class FileManager
  @male_name_file = 'male' << Time.new.year.to_s << '.txt'
  @female_name_file	= 'female' << Time.new.year.to_s << '.txt'
  attr_reader :male_name_file, :female_name_file

  def self.getMaleNameFile
    @male_name_file
  end

  def self.getFemaleNameFile
    @female_name_file
  end

  def self.create_files
    if File.exist?(@male_name_file) == false
      male = File.open(@male_name_file, 'w')
      male_data = HTTPNet.new('https://www.quandl.com/api/v1/datasets/WORLDBANK/USA_SP_DYN_LE00_MA_IN.csv')
      male.puts(male_data.data)
      male.close
    end

    if File.exist?(@female_name_file) == false
      female = File.open(@female_name_file, 'w')
      female_data = HTTPNet.new('https://www.quandl.com/api/v1/datasets/WORLDBANK/USA_SP_DYN_LE00_FE_IN.csv')
      female.puts(female_data.data)
      female.close
    end
  end

  def self.extract_data(filename)
    string_data = ""

    if File.exist?(filename) == false
      create_files
    end

    file = File.open(filename)
    file.each_line do |line|
      string_data = string_data << line
    end
    file.close
    string_data
  end
end
