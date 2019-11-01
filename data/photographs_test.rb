require'csv'
require'minitest/autorun'
require'minitest/pride'
require'./lib/photographs'


class PhotographsTest < Minitest::Test

  def setup
    @photographs = Photographs.new('./data/photographs.csv')
  end

  def test_it_exists
    assert_instance_of Photographs, @photographs
  end
end
