require('minitest/autorun')
require_relative('../robin')
require_relative('../behaviours/fly.rb')
require_relative('../behaviours/chirp.rb')

class RobinTest < MiniTest::Test

  def setup
    @robin = Robin.new(Chirp.new, Fly.new)
  end


  def test_robin_can_fly
    assert_equal("flying high", @robin.fly)
  end

  def test_robin_can_call
    assert_equal("chirp", @robin.call)
  end

end