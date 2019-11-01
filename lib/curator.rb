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

  def find_photographs_by_artist(artist)
    @photographs.find_all do |photograph|
      photograph.artist_id == artist.id
    end
  end

  def artists_with_multiple_photographs
    @artists.find_all do |artist|
      find_photographs_by_artist(artist).length > 1
    end
  end

  def find_artists_from_country(country)
    @artists.find_all do |artist|
      artist.country == country
    end
  end

  def photographs_taken_by_artists_from(country)
    find_artists_from_country(country).flat_map do |artist|
      find_photographs_by_artist(artist)
    end
  end
end
