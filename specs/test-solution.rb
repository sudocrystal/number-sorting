require 'minitest/autorun'
require 'minitest/reporters'
require_relative '../lib/solution'
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

describe "Test Solution to sorting problem" do
  it "passes given example" do
    test_q = Queue.new([1, 2, -2, 4, -5, 8, -8, 12, -15, 23])
    ordered = reorder(test_q)
    ordered.to_s.must_equal("[-15, -8, -5, -2, 1, 2, 4, 8, 12, 23]")
  end

  it "works for an empty queue" do
    test_q = Queue.new
    ordered = reorder(test_q)
    ordered.to_s.must_equal("[]")
  end

  it "works when there are no negative numbers" do
    test_q = Queue.new([0, 3, 5, 6, 99])
    ordered = reorder(test_q)
    ordered.to_s.must_equal("[0, 3, 5, 6, 99]")
  end

  it "works when there are no positive numbers" do
    test_q = Queue.new([-2, -12, -15, -100])
    ordered = reorder(test_q)
    ordered.to_s.must_equal("[-100, -15, -12, -2]")
  end
end
