class Curator
  attr_reader :photographs, :artists

  def initialize
    @photographs = []
    @artists = []
  end

  def add_photograph(photograph)
    @photographs << photograph
  end

  def add_artist(artist)
    @artists << artist
  end

  def find_artist_by_id(artist_id)
    @artists.find_all do |artist|
      artist.id == artist_id
    end[0]
  end

  def find_photograph_by_id(photograph_id)
    @photographs.find do |photograph|
      photograph.id == photograph_id
    end
  end
end
