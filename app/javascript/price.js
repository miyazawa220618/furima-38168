window.addEventListener('load', function(){
  const itemPrice = document.getElementById("item-price");
  const taxPrice = document.getElementById("add-tax-price");
  const profitPrice = document.getElementById("profit");

  if (!itemPrice){return false;}
  itemPrice.addEventListener('keyup', () => {
    const priceValue = itemPrice.value;
    taxPrice.innerHTML = Math.round(priceValue * 0.1);
    
    const taxValue = taxPrice.innerHTML;
    profitPrice.innerHTML = priceValue - taxValue;
  })
})