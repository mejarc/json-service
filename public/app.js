var appEvents = {
  init: function(){
    var fm = document.getElementById('inputForm');
    this.formCancel(fm);
  },
  formCancel: function(fm){
    fm.addEventListener('submit', function(e){
      console.log('here');
      e.preventDefault;
      window.history.back();
      console.log(e);
    }, true);
  }

}



window.onload = function(){
  appEvents.init();
};