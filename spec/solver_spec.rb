require 'rspec'
require_relative './solver'

describe Solver do
  
  describe '#factorial' do
    let(:solve) { Solver.new} 
    it "returns 120 when N is 5" do
      solve.number = 5
      expect(solve.factorial).to eql(120)
    end
    it "returns 1 when N is 0" do
      solve.number = 0
      expect(solve.factorial).to eql(1)
    end
    it "raise exception when N < 0" do
      solve.number = -1
      expect(solve.factorial).to raise_exception
    end
  end
  
  describe '#reverse' do
    it "returns olleh when word is hello" do
      solve.string = "hello"
      expect(solve.reverse).to eql("olleh")
    end
  end

  describe '#fizzbuzz' do
    it "returns fizz when number is divisible by 3" do
      solve.number = 3
      expect(solve.fizzbuzz).to eql("fizz")
    end
    it "returns buzz when number is divisible by 5" do
      solve.number = 5
      expect(solve.fizzbuzz).to eql("buzz")
    end
    it "returns fizzbuzz when number is divisible by 3 and 5" do
      solve.number = 15
      expect(solve.fizzbuzz).to eql("fizzbuzz")
    end
    it "returns number when number is not divisible by 3 or 5" do
      solve.number = 2
      expect(solve.fizzbuzz).to eql("2")
    end
  end
end
