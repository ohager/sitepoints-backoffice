/*
 Copyright (c) 2015 The Polymer Project Authors. All rights reserved.
 This code may only be used under the BSD style license found at http://polymer.github.io/LICENSE.txt
 The complete set of authors may be found at http://polymer.github.io/AUTHORS.txt
 The complete set of contributors may be found at http://polymer.github.io/CONTRIBUTORS.txt
 Code distributed by Google as part of the polymer project is also
 subject to an additional IP rights grant found at http://polymer.github.io/PATENTS.txt
 */

(function (document) {

    axios.interceptors.request.use(function (config) {
        config.transformResponse = [function (data) {
            window.dispatchEvent(new CustomEvent('xhr-requested',{detail : {isLoading : false}}));
            return data;
        }];

        config.transformRequest = [function (data) {
            window.dispatchEvent(new CustomEvent('xhr-requested',{detail : {isLoading : true}}));
            return JSON.stringify(data);
        }];

        config.headers =  {
            "Content-Type" : "application/json"
        };

        config.responseType = 'json';

        if( !config.noauth ){
            config.headers =  {
                "Content-Type" : "application/json",
                "Authorization" : window.localStorage.auth
            };

        }
        else{
            config.headers =  {
                "Content-Type" : "application/json"
            };

        }

        return config;
    }, function (error) {
        // Do something with request error
        return Promise.reject(error);
    });

})(document);
