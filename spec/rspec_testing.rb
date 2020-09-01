# frozen_string_literal: true

require_relative '../bin/main'

describe TestCases do
  describe '#add' do
    it 'returns the sum of two numbers' do
      testing = TestCases.new
      expect(testing.add(5, 2)).to eql(7)
    end
  end

  describe '#multiply' do
    it 'returns the multiplication of two numbers' do
      testing = TestCases.new
      expect(testing.multiply(3, 3)).to eql(9)
    end
  end
end
