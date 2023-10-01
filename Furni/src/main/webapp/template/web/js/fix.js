
var userElement = document.getElementById("user");
var statusWrapperElement = document.querySelector(".status");
var triangleElement = document.querySelector(".triangle");

userElement.addEventListener("mouseover", function() {
  statusWrapperElement.style.display = "block";
  triangleElement.style.display = "block";
});

statusWrapperElement.addEventListener("mouseover", function() {
  statusWrapperElement.style.display = "block";
  triangleElement.style.display = "block";
});
triangleElement.addEventListener("mouseover", function() {
  statusWrapperElement.style.display = "block";
  triangleElement.style.display = "block";
});

userElement.addEventListener("mouseout", function() {
  statusWrapperElement.style.display = "none";
  triangleElement.style.display = "none";
});
statusWrapperElement.addEventListener("mouseout", function() {
  statusWrapperElement.style.display = "none";
  triangleElement.style.display = "none";
});
triangleElement.addEventListener("mouseout", function() {
  statusWrapperElement.style.display = "none";
  triangleElement.style.display = "none";
});




