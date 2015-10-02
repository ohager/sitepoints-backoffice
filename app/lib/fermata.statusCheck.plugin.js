// overwriting statuscheck plugin with own implementation
(function () {
    "use strict";
    fermata.registerPlugin('statusCheck', function (transport) {
        return function (request, callback) {
            window.dispatchEvent(new CustomEvent('xhr-started'));
            return transport(request, function (err, response) {
                window.dispatchEvent(new CustomEvent('xhr-finished'));
                if (!err && response.status.toFixed(0)[0] !== '2') {
                    err = Error("Error returned by server: " + response.data);
                    err.status = response.status;
                    err.message = response.data;
                }
                callback(err, response);
            });
        };
    });
})();

