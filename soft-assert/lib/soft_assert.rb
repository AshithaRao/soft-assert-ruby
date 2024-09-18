require 'minitest/assertions'

# SoftAssert is a module that provides a set of assertion methods that can be used in tests.
# These methods allow you to check that your code is behaving as expected.
# Unlike hard assertions, soft assertions do not stop the execution of the test when they fail.
# Instead, they record the failure and allow the test to continue.
# At the end of the test, you can call the assert_all method to raise an exception if any soft assertions failed.
module SoftAssert
  extend Minitest::Assertions

  class << self
    attr_accessor :assertions
  end

  @assertions = 0
  @soft_errors = []

  # Asserts that a boolean value is true.
  # If the assertion fails, the error is recorded and the test continues.
  def self.assert_true(bool, message=nil)
    begin
      Test::Unit::Assertions.assert_true(bool, message)
    rescue Exception => e
      @soft_errors << e
    end
  end

  # Asserts that a boolean value is false.
  # If the assertion fails, the error is recorded and the test continues.
  def self.assert_false(bool, message=nil)
    begin
      Test::Unit::Assertions.assert_false(bool, message)
    rescue Exception => e
      @soft_errors << e
    end
  end

  # Asserts that two values are equal.
  # If the assertion fails, the error is recorded and the test continues.
  def self.assert_equals(expected, actual, message=nil)
    begin
      assert_equal(expected, actual, message)
    rescue Exception => e
      @soft_errors << e
    end
  end

  # Asserts that two values are not equal.
  # If the assertion fails, the error is recorded and the test continues.
  def self.assert_not_equals(expected, actual, message=nil)
    begin
      refute_equal(expected, actual, message)
    rescue Exception => e
      @soft_errors << e
    end
  end

  # Asserts that a collection includes a certain value.
  # If the assertion fails, the error is recorded and the test continues.
  def self.assert_contains(actual, expected, message=nil)
    begin
      assert_includes(actual, expected, message)
    rescue Exception => e
      @soft_errors << e
    end
  end

  # Asserts that a collection does not include a certain value.
  # If the assertion fails, the error is recorded and the test continues.
  def self.assert_not_contains(actual, expected, message=nil)
    begin
      refute_includes(actual, expected, message)
    rescue Exception => e
      @soft_errors << e
    end
  end

  #Asserts that a collection is empty.
  # If the assertion fails, the error is recorded and the test continues.
  def self.assert_empty(actual, message=nil)
    begin
      Minitest::Assertions.assert_empty(actual, message)
    rescue Exception => e
      @soft_errors << e
    end
  end

  # Asserts that a collection is not empty.
  # If the assertion fails, the error is recorded and the test continues.
  def self.assert_not_empty(actual, message=nil)
    begin
      refute_empty(actual, message)
    rescue Exception => e
      @soft_errors << e
    end
  end

  # Asserts that a value is nil.
  # If the assertion fails, the error is recorded and the test continues.
  def self.assert_nil(actual, message=nil)
    begin
      Minitest::Assertions.assert_nil(actual, message)
    rescue Exception => e
      @soft_errors << e
    end
  end

  # Asserts that a value is not nil.
  # If the assertion fails, the error is recorded and the test continues.
  def self.assert_not_nil(actual, message=nil)
    begin
      refute_nil(actual, message)
    rescue Exception => e
      @soft_errors << e
    end
  end

  # Asserts that a string matches a regular expression.
  # If the assertion fails, the error is recorded and the test continues.
  def self.assert_match(regex, actual, message=nil)
    begin
      Minitest::Assertions.assert_match(regex, actual, message)
    rescue Exception => e
      @soft_errors << e
    end
  end

  # Asserts that a string does not match a regular expression.
  # If the assertion fails, the error is recorded and the test continues.
  def self.assert_not_match(regex, actual, message=nil)
    begin
      refute_match(regex, actual, message)
    rescue Exception => e
      @soft_errors << e
    end
  end

  # Asserts that two arrays are equal, after sorting them.
  # If the assertion fails, the error is recorded and the test continues.
  def self.assert_array_equals(expected, actual, message=nil)
    begin
      # Sort the arrays based on the string representation of each object
      expected_sorted = expected.sort_by { |obj| obj.to_s }
      actual_sorted = actual.sort_by { |obj| obj.to_s }

      assert_equal(expected_sorted, actual_sorted, message)
    rescue Exception => e
      @soft_errors << e
    end
  end

  # Asserts that two arrays are equal, after sorting them.
  # If the assertion fails, the error is recorded and the test continues.
  def self.assert_array_not_equals(expected, actual, message=nil)
    begin
      # Sort the arrays based on the string representation of each object
      expected_sorted = expected.sort_by { |obj| obj.to_s }
      actual_sorted = actual.sort_by { |obj| obj.to_s }

      refute_equal(expected_sorted, actual_sorted, message)
    rescue Exception => e
      @soft_errors << e
    end
  end

  # Asserts that two hashes are equal, after sorting them.
  # If the assertion fails, the error is recorded and the test continues.
  def self.assert_hash_equals(expected, actual, message=nil)
    begin
      # Sort the hashes based on the string representation of each key-value pair
      expected_sorted = expected.sort_by { |k, v| [k, v.to_s] }.to_h
      actual_sorted = actual.sort_by { |k, v| [k, v.to_s] }.to_h

      assert_equal(expected_sorted, actual_sorted, message)
    rescue Exception => e
      @soft_errors << e
    end
  end

  # Asserts that two hashes are not equal, after sorting them.
  # If the assertion fails, the error is recorded and the test continues.
  def self.assert_hash_not_equals(expected, actual, message=nil)
    begin
      # Sort the hashes based on the string representation of each key-value pair
      expected_sorted = expected.sort_by { |k, v| [k, v.to_s] }.to_h
      actual_sorted = actual.sort_by { |k, v| [k, v.to_s] }.to_h

      refute_equal(expected_sorted, actual_sorted, message)
    rescue Exception => e
      @soft_errors << e
    end
  end

  #Asserts that two maps are equal, after sorting them.
  # If the assertion fails, the error is recorded and the test continues.
  def self.assert_map_equals(expected, actual, message=nil)
    begin
      # Sort the hashes based on the string representation of each key-value pair
      expected_sorted = expected.sort_by { |k, v| [k, v.to_s] }.to_h
      actual_sorted = actual.sort_by { |k, v| [k, v.to_s] }.to_h

      assert_equal(expected_sorted, actual_sorted, message)
    rescue Exception => e
      @soft_errors << e
    end
  end

  # Asserts that two maps are not equal, after sorting them.
  # If the assertion fails, the error is recorded and the test continues.
  def self.assert_map_not_equals(expected, actual, message=nil)
    begin
      # Sort the hashes based on the string representation of each key-value pair
      expected_sorted = expected.sort_by { |k, v| [k, v.to_s] }.to_h
      actual_sorted = actual.sort_by { |k, v| [k, v.to_s] }.to_h

      refute_equal(expected_sorted, actual_sorted, message)
    rescue Exception => e
      @soft_errors << e
    end
  end

  # Raises an exception if any soft assertions have failed.
  # This method should be called at the end of each test.
  def self.assert_all
    unless @soft_errors.empty?
      errors = @soft_errors
      @soft_errors = []
      raise "Soft Assertion\n"+errors.join("\n\n")+ "\n"
    end
  end
end