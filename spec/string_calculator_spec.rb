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
  end
end
