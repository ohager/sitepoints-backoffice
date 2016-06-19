import './css/surface_styles.css';

import _ from '../node_modules/lodash';
import NanoFlux from '../node_modules/nanoflux-fusion';
import './router.js';


var store = NanoFlux.getFusionStore();

// set global
window._ = _;
window.NanoFlux = NanoFlux;




