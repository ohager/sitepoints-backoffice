
(function() {
    'use strict';

    window.addEventListener('WebComponentsReady', function () {

        page('/home', function () {
            app.route = 'home';
        });

        page({
            hashbang: true
        });

        page('/home');
    });

})();
