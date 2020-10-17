window.onload = function(){
const stars = document.querySelector(".ratings").children;
const ratingValue = document.getElementById("rating-value");
const ratingValueDisplay = document.getElementById("rating-value-display");

let index;

for(let i=0; i<stars.length; i++){
  stars[i].addEventListener("mouseover",function(){
    for(let j=0; j<stars.length; j++){
      stars[j].classList.remove("fa-star");
      stars[j].classList.add("fa-star-o");
    }
    for(let j=0; j<=i; j++){
      stars[j].classList.remove("fa-star-o");
      stars[j].classList.add("fa-star");
    }
  })
  stars[i].addEventListener("click",function(){
		ratingValue.value = i+1;
		ratingValueDisplay.textContent = ratingValue.value;
		// indexにクリックされた星の番号を代入
		index = i;
	})
	// 星からカーソルが離れたときに実行される関数
	stars[i].addEventListener("mouseout",function(){
		// まず5回繰り返す
		for(let j=0; j<stars.length; j++){
			// まず全ての星をくり抜く
			stars[j].classList.remove("fa-star");
			stars[j].classList.add("fa-star-o");
		}
		for(let j=0; j<=index; j++){
			// クリックされている星まで塗りつぶす
			stars[j].classList.remove("fa-star-o");
			stars[j].classList.add("fa-star");
		}
	})
}
}
