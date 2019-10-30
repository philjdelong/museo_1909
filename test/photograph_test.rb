require'minitest/autorun'
require'minitest/pride'
require'./lib/photograph'

class PhotographTest < Minitest::Test

  def setup
    @photo_1 = Photograph.new({
      id: "1",
      name: "Rue Mouffetard, Paris (Boy with Bottles)",
      artist_id: "4",
      year: "1954"
    })
  end

  def test_it_exists
    assert_instance_of Photograph, @photo_1
  end

  def test_it_initializes_id_name_artist_year
    assert_equal "1", @photo_1.id
    assert_equal "Rue Mouffetard, Paris (Boy with Bottles)", @photo_1.name
    assert_equal "4", @photo_1.artist_id
    assert_equal "1954", @photo_1.year
  end
end
