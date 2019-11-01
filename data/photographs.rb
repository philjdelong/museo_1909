require_relalative 'photograph'
require'csv'

class Photographs
  attr_reader :photographs

  def initialize(photographs_path)
    @photographs = generate_objects_from_csv(photographs_path)
  end

  def generate_objects_from_csv(csv_photographs_path)
    objects = []
    CSV.foreach(csv_photographs_path, headers: true, header_converters: :symbol) do |row_object|
      objects << Photograph.new(row_object)
    end
    objects
  end
end
