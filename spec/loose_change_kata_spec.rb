# frozen_string_literal: true

[
  { 29 => { 'Pennies' => 4, 'Nickels' => 0, 'Dimes' => 0, 'Quarters' => 1 } },
  { 29 => { 'Pennies' => 4, 'Nickels' => 0, 'Dimes' => 0, 'Quarters' => 1 } },
  { 29 => { 'Pennies' => 4, 'Nickels' => 0, 'Dimes' => 0, 'Quarters' => 1 } },
  { 29 => { 'Pennies' => 4, 'Nickels' => 0, 'Dimes' => 0, 'Quarters' => 1 } },
  { 29 => { 'Pennies' => 4, 'Nickels' => 0, 'Dimes' => 0, 'Quarters' => 1 } }
].each do |test_case|
  context "Given #{test_case.keys.first} amount of US currency in cents" do
    it 'Returns the expected loose change' do
      expect (loose_change(test_case.keys.first)).to eq test_case.values
    end
  end
end
