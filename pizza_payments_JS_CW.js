Kate and Michael want to buy a pizza and share it. Depending on the price of the pizza they are going to divide the costs.

If the pizza is less than €5,- Michael is paying. Kate will contribute no more than €10. Michael will pay at least 2/3 of the costs.

How much is Michael going to pay? Remember to calculate the amount in euros, with two decimals if necessary.




function michaelPays(costs) {
  let m = 0 
  if (costs <= 5) {
    m = 5.00
    console.log(m)
  } else if (costs <=30) {
    m = costs * 0.67
    console.log(m)
  } else {
    m = costs - 10
    console.log(m)
  }
}