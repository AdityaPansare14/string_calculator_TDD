# frozen_string_literal: true

require_relative '../string_calculator'

RSpec.describe StringCalculator do
  
  describe '#add' do
    context 'when empty string is passed' do
      it 'returns 0' do
        expect(StringCalculator.new.add("")).to eq(0)
      end
    end

    context 'when single number is passed' do
      it 'returns the number itself' do
        expect(StringCalculator.new.add('1')).to eq(1)
      end
    end

    context 'when two numbers are passed' do
      it 'returns the sum of the numbers' do
        expect(StringCalculator.new.add('1,5')).to eq(6)
      end
    end

    context 'when multiple numbers are passed' do
      it 'returns the sum of all numbers' do
        expect(StringCalculator.new.add('1,2,3,4,5')).to eq(15)
      end
    end

    context 'when numbers are separated by newlines' do
      it 'returns the sum of the numbers' do
        expect(StringCalculator.new.add("1\n2,3")).to eq(6)
      end
    end

    context 'when custom delimiter is specified' do
      it 'returns the sum using the custom delimiter' do
        expect(StringCalculator.new.add("//;\n1;2")).to eq(3)
      end
    end

    context 'when negative numbers are passed' do
      it 'throws an exception with the negative number' do
        expect { StringCalculator.new.add('1,-2,3') }.to raise_error('negative numbers not allowed -2')
      end

      it 'throws an exception with all negative numbers' do
        expect { StringCalculator.new.add('1,-2,3,-4') }.to raise_error('negative numbers not allowed -2,-4')
      end
    end
  end
end
