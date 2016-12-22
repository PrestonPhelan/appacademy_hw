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


  // insert it as the last item in the ul.

  document.querySelectorAll("#restaurants li").forEach((li) => {
    li.addEventListener("click", toggleLi);
  });



  // adding SF places as list items

  // --- your code here!



  // adding new photos

  // --- your code here!



});
