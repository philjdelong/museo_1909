require 'csv'

class FileIO
  attr_reader :photographs, :artists

  def initialize(file_paths)
    @photographs = Photographs.new(file_paths[:photographs])
    @artists = Artist.new(file_paths[:artists])
  end

  def self.from_csv(file_paths)
    self.new(file_paths)
  end
end
