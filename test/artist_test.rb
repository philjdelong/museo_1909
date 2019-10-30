require'minitest/autorun'
require'minitest/pride'
require'./lib/artist'

class ArtistTest < Minitest::Test

  def setup
    @artist_1 = Artist.new({
      id: "2",
      name: "Ansel Adams",
      born: "1902",
      died: "1984",
      country: "United States"
      })
  end

  def test_it_exists
    assert_instance_of Artist, @artist_1
  end

  def test_it_initializes_id_name_born_died_country
    assert_equal "2", @artist_1.id
    assert_equal "Ansel Adams", @artist_1.name
    assert_equal "1902", @artist_1.born
    assert_equal "1984", @artist_1.died
    assert_equal "United States", @artist_1.country
  end
end
