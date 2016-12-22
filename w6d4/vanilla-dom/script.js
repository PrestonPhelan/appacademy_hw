document.addEventListener("DOMContentLoaded", () => {
  // toggling restaurants

  const toggleLi = (e) => {
    const li = e.target;
    if (li.className === "visited") {
      li.className = "";
    } else {
      li.className = "visited";
    }
  };



  // insert it as the last item in the ul.

  document.querySelectorAll("#restaurants li").forEach((li) => {
    li.addEventListener("click", toggleLi);
  });



  // adding SF places as list items

  // --- your code here!
  const placeFormEl = document.getElementById('place-form');
  placeFormEl.addEventListener("submit", e => {
    e.preventDefault();

    const placeInputEl = document.getElementById('favorite-input');
    console.log(placeInputEl);
    const placeName = placeInputEl.value;
    console.log(placeName);
    placeInputEl.value = "";

    // Get the ul of cats.
    const ul = document.getElementById("sf-places");
    // create an li element
    const li = document.createElement("li");
    // set the text of the li to be the value of the input field
    li.textContent = placeName;

    ul.appendChild(li);
  });



  // adding new photos

  // --- your code here!
  const photoFormEl = document.getElementsByClassName('photo-show-button');
  photoFormEl[0].addEventListener("click", function() {
    const photoFormDiv = document.querySelector(".photo-form-container");
    if (photoFormDiv.className === "photo-form-container") {
      photoFormDiv.className = "photo-form-container hidden";
    } else {
      photoFormDiv.className = "photo-form-container";
    }
  });

  const photoSubmitEl = document.getElementsByClassName('photo-url-submit');
  photoSubmitEl[0].addEventListener("click", e => {
    e.preventDefault();

    const photoURL = document.getElementsByClassName('photo-url-input')[0].value;

    const ul = document.getElementsByClassName('dog-photos')[0];
    const li = document.createElement("li");
    const img = document.createElement("img");

    img.src = photoURL;
    console.log(img.src);

    li.appendChild(img);

    ul.appendChild(li);
  });

});
