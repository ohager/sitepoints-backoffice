(function(document) {
  'use strict';


  var app = document.querySelector('#app');

  window.addEventListener('WebComponentsReady', function() {

      page('/login', function () {
          app.route = 'login';
      });

      page('/register', function () {
          app.route = 'register';
      });

      // add #! before urls
      page({
          hashbang: true
      });

      page('/login');

  });

    window.addEventListener('registered', function(e){
        app.message = e.detail.message;
        app.user = e.detail.user;
        document.querySelector("#toast").show();
    })

})(document);
