(function(document) {
  'use strict';

  var app = document.querySelector('#app');

  app.addEventListener('dom-change', function() {
    console.log('Our app is ready to rock!');
  });

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

})(document);
