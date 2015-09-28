
(function() {
    'use strict';

    window.addEventListener('WebComponentsReady', function () {


        page('/home', function () {
            app.route = 'home';
        });

        // add #! before urls
        page({
            hashbang: true
        });

        page('/home');
    });

})();
