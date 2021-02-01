# frozen_string_literal: true

require_relative '../loose_change_kata'

describe 'Loose Change Kata' do
  context 'Given an amount equal to 0 cents' do
    it 'returns all coins equal to 0' do
      expect(loose_change(0)).to eq(
        { 'Pennies' => 0, 'Nickels' => 0, 'Dimes' => 0, 'Quarters' => 0 }
      )
    end
  end

  context 'Given a negative amount of cents' do
    it 'returns all coins equal to 0' do
      expect(loose_change(-2)).to eq(
        { 'Pennies' => 0, 'Nickels' => 0, 'Dimes' => 0, 'Quarters' => 0 }
      )
      expect(loose_change(-435)).to eq(
        { 'Pennies' => 0, 'Nickels' => 0, 'Dimes' => 0, 'Quarters' => 0 }
      )
    end
  end

  context 'Given a float amount of cents' do
    it 'rounds the amount down to the next integer' do
      expect(loose_change(3.9)).to eq(
        { 'Pennies' => 3, 'Nickels' => 0, 'Dimes' => 0, 'Quarters' => 0 }
      )
      expect(loose_change(4.935)).to eq(
        { 'Nickels' => 0, 'Pennies' => 4, 'Dimes' => 0, 'Quarters' => 0 }
      )
    end
  end

  context 'Given a integer amount of cents' do
    it 'returns the least amount of coins' do
      expect(loose_change(56)).to eq(
        { 'Nickels' => 1, 'Pennies' => 1, 'Dimes' => 0, 'Quarters' => 2 }
      )
      expect(loose_change(29)).to eq(
        { 'Pennies' => 4, 'Nickels' => 0, 'Dimes' => 0, 'Quarters' => 1 }
      )
      expect(loose_change(91)).to eq(
        { 'Pennies' => 1, 'Nickels' => 1, 'Dimes' => 1, 'Quarters' => 3 }
      )
    end
  end
end
