# DataManager
class DataManager
  def self.make_hash(filename)
    data = FileManager.extract_data(filename)
    data.tr!("\n", ',')
    arr = data.split(',')
    arr.delete_at(0)
    arr.delete_at(0)
    hash = Hash[*arr]
    hash
  end
end
