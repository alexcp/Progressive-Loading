document.addEventListener('DOMContentLoaded', function() {
  var elements = Array.from(document.getElementsByClassName("progressive_loading"))
  elements.forEach(function(element, index, array){
    var image = new Image();
    var style = "";
    image.src = element.dataset.src;
    if(element.dataset.progressiveSize == "fixed"){
      var width = element.getAttribute("width") || element.width;
      var height = element.getAttribute("height") || element.height;
      style = 'width: '+width+'px; height: '+height+'px;';
    }else{
      style = 'width: 100%; height: initial;';
    }

    if(element.dataset.style){
      style += element.dataset.style;
    }
    element.setAttribute('style', style);

    image.onload = function(){
      if(this.complete){
        element.src = this.src;
      }
    }
  })
})
