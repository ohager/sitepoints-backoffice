import NanoFlux from '../../node_modules/nanoflux-fusion';
window.NanoFlux = window.NanoFlux || NanoFlux;

const TOGGLE_DRAWER = 1;
const LOGIN = 2;


function appFusionator(previousState, action) {

	switch (action.id) {
		case TOGGLE_DRAWER:
			var isOpen = previousState.drawerIsOpen;
			return {drawerIsOpen: !isOpen};
		case LOGIN:
			console.log("Logging in...");
			return {isLoggedIn: true};

	}
}

export default {
	toggleDrawer: NanoFlux.createFusionActor(appFusionator, TOGGLE_DRAWER),
	login: NanoFlux.createFusionActor(appFusionator, LOGIN)
};
