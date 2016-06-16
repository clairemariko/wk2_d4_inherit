require('minitest/autorun')
require_relative('../sparrow')
require_relative('../behaviours/fly.rb')
require_relative('../behaviours/chirp.rb')

class SparrowTest < MiniTest::Test

  def setup
    @sparrow = Sparrow.new(Chirp.new, Fly.new)
  end

  def test_sparrow_can_fly
    assert_equal("flying high", @sparrow.fly)
  end

  def test_sparrow_can_chirp
    assert_equal("chirp", @sparrow.call)
  end


end