document.addEventListener('DOMContentLoaded', function() {
  var elements = Array.from(document.getElementsByClassName("progressive_loading"))
  elements.forEach(function(element, index, array){
    var image = new Image();
    image.src = element.dataset.src;
    image.onload = function(){
      if(this.complete){
        var width = element.getAttribute("width");
        var height = element.getAttribute("height");
        if(width && height){
          element.setAttribute('style', 'width: '+width+'px; height: '+height+'px;');
          }
        element.src = this.src;
      }
    }
  })
})
