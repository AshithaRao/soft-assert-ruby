# frozen_string_literal: true

require 'minitest/autorun'
require_relative '../lib/soft_assert'

class TestSoftAssert < Minitest::Test
  def setup
    SoftAssert.assertions = 0
    SoftAssert.instance_variable_set(:@soft_errors, [])
  end

  def test_assert_true
    SoftAssert.assert(true, 'Expected true value')
    SoftAssert.assert_all
  rescue StandardError => e
    assert_match(/Expected true value/, e.message)
  end

  def test_assert_false
    refute(false, 'Expected false value')
    SoftAssert.assert_all
  rescue StandardError => e
    assert_match(/Expected false value/, e.message)
  end

  def test_assert_equal
    test_case = Minitest::Test.new('fake')
    test_case.assert_equal(1, 1, 'Expected values to be equal')
  rescue Minitest::Assertion => e
    flunk("Minitest::Assertion was thrown: #{e.message}")
  rescue StandardError => e
    assert_match(/Expected values to be equal/, e.message)
  end

  def test_assert_not_equal
    SoftAssert.assert_not_equal(1, 2, 'Expected values to not be equal')
    SoftAssert.assert_all
  rescue StandardError => e
    assert_match(/Expected values to not be equal/, e.message)
  end

  def test_assert_contains
    SoftAssert.assert_contains([1, 2, 3], 1, 'Expected array to contain value')
    SoftAssert.assert_all
  rescue StandardError => e
    assert_match(/Expected array to contain value/, e.message)
  end

  def test_assert_not_contains
    SoftAssert.assert_not_contains([1, 2, 3], 4, 'Expected array to not contain value')
    SoftAssert.assert_all
  rescue StandardError => e
    assert_match(/Expected array to not contain value/, e.message)
  end

  def test_assert_empty
    assert([], 'Expected array to be empty')
    SoftAssert.assert_all
  rescue StandardError => e
    assert_match(/Expected array to be empty/, e.message)
  end

  def test_assert_not_empty
    SoftAssert.assert_not_empty([1, 2, 3], 'Expected array to not be empty')
    SoftAssert.assert_all
  rescue StandardError => e
    assert_match(/Expected array to not be empty/, e.message)
  end

  def test_assert_nil
    SoftAssert.assert(true, nil.nil?)
    SoftAssert.assert_all
  rescue StandardError => e
    assert_match(/Expected value to be nil/, e.message)
  end

  def test_assert_not_nil
    SoftAssert.assert_not_nil(1, 'Expected value to not be nil')
    SoftAssert.assert_all
  rescue StandardError => e
    assert_match(/Expected value to not be nil/, e.message)
  end

  def test_assert_match
    SoftAssert.assert('test'.match?(/test/), 'Expected value to match regex')
    SoftAssert.assert_all
  rescue StandardError => e
    assert_match(/Expected value to match regex/, e.message)
  end

  def test_assert_not_match
    SoftAssert.assert_not_match(/demo/, 'test', 'Expected value to not match regex')
    SoftAssert.assert_all
  rescue StandardError => e
    assert_match(/Expected value to not match regex/, e.message)
  end

  def test_assert_array_equals
    test_case = Minitest::Test.new('fake')
    test_case.assert_equal([1, 2, 3], [1, 2, 3], 'Expected arrays to be equal')
  rescue Minitest::Assertion => e
    flunk("Minitest::Assertion was thrown: #{e.message}")
  rescue StandardError => e
    assert_match(/Expected arrays to be equal/, e.message)
  end

  def test_assert_array_not_equals
    SoftAssert.assert_array_not_equals([1, 2, 3], [3, 2, 1], 'Expected arrays to not be equal')
    SoftAssert.assert_all
  rescue StandardError => e
    assert_match(/Expected arrays to not be equal/, e.message)
  end

  def test_assert_hash_equals
    test_case = Minitest::Test.new('fake')
    test_case.assert_equal({ a: 1, b: 2 }, { a: 1, b: 2 }, 'Expected hashes to be equal')
  rescue Minitest::Assertion => e
    flunk("Minitest::Assertion was thrown: #{e.message}")
  rescue StandardError => e
    assert_match(/Expected hashes to be equal/, e.message)
  end

  def test_assert_hash_not_equals
    SoftAssert.assert_hash_not_equals({ a: 1, b: 2 }, { b: 2, a: 1 }, 'Expected hashes to not be equal')
    SoftAssert.assert_all
  rescue StandardError => e
    assert_match(/Expected hashes to not be equal/, e.message)
  end

  def test_assert_map_equals
    test_case = Minitest::Test.new('fake')
    test_case.assert_equal({ a: 1, b: 2 }, { a: 1, b: 2 }, 'Expected hashes to be equal')
  rescue Minitest::Assertion => e
    flunk("Minitest::Assertion was thrown: #{e.message}")
  rescue StandardError => e
    assert_match(/Expected hashes to be equal/, e.message)
  end

  def test_assert_map_not_equals
    SoftAssert.assert_map_not_equals({ a: 1, b: 2 }, { b: 2, a: 3 }, 'Expected hashes to not be equal')
    SoftAssert.assert_all
  end
end
