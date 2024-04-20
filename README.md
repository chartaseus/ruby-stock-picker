# ruby-stock-picker

## Instructions

Implement a method `#stock_picker` that takes in an array of stock prices, one for each hypothetical day. It should return a pair of days representing the best day to buy and the best day to sell. Days start at 0.

  ```ruby
  > stock_picker([17,3,6,9,15,8,6,1,10])
  => [1,4]  # for a profit of $15 - $3 == $12
  ```

### Quick Tips:

You need to buy before you can sell

Pay attention to edge cases like when the lowest day is the last day or the highest day is the first day.

## Notes on my solution

It took a while to figure out I can just solve it with `#each_with_index` for both dimensions of iteration because for some reason I got caught up in trying to use `#reduce` for the inner iteration.

It also took a while to name all the variables. Once it became clear that the first iteration is iterating over the buy day and the nested iteration is for sell day, I finally came up with better names although after wrapping up this task I still think there must be better names for `best_profit` and `max_profit`.