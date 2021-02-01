# frozen_string_literal: true

# Ref: https://www.codewars.com/kata/5571f712ddf00b54420000ee/train/ruby
def loose_change(cents)
  if cents <= 0
    { 'Pennies' => 0, 'Nickels' => 0, 'Dimes' => 0, 'Quarters' => 0 }
  else
    int_cents = cents.floor
    (quarters, mod_quarters) = int_cents.divmod(25)
    (dimes, mod_dimes) = mod_quarters.divmod(10)
    (nickels, mod_nickels) = mod_dimes.divmod(5)
    pennies = mod_nickels

    { 'Pennies' => pennies, 'Nickels' => nickels, 'Dimes' => dimes, 'Quarters' => quarters }
  end
end
