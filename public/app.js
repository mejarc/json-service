var appEvents = {
  init: function(){
    var result = document.getElementById('result');
    console.log(result.innerHTML);
  }
}



window.onload = function(){
  appEvents.init();
};