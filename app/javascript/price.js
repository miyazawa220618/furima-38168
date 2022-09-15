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

    // 全角入力だった場合
    if (priceValue.match(/^[^\x01-\x7E\uFF61-\uFF9F]+$/)) {
      itemPrice.addEventListener('change', () => {
        const hankakuPrice = priceValue.replace(/[Ａ-Ｚａ-ｚ０-９]/g, function(s) {
          return String.fromCharCode(s.charCodeAt(0) - 0xFEE0);
        });
        itemPrice.value = hankakuPrice;
        taxPrice.innerHTML = Math.round(hankakuPrice * 0.1);
        const hankakuTax = taxPrice.innerHTML;
        profitPrice.innerHTML = hankakuPrice - hankakuTax;
      });
    };

  });

  // 編集画面に表示
  if (!itemPrice.value){return false;}
  if (!taxPrice.innerHTML && !profitPrice.innerHTML){
    taxPrice.innerHTML = Math.round(itemPrice.value * 0.1);
    const taxValue = taxPrice.innerHTML;
    profitPrice.innerHTML = itemPrice.value - taxValue;
  };
});