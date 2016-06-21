import NanoFlux from '../../node_modules/nanoflux-fusion';
window.NanoFlux = window.NanoFlux || NanoFlux;

const TOGGLE_DRAWER = 1;


function appFusionator(previousState, action) {

	switch (action.id) {
		case TOGGLE_DRAWER:
			var isOpen = previousState.drawerIsOpen;
			return {drawerIsOpen: !isOpen};
	}
}

export default {
	toggleDrawer: NanoFlux.createFusionActor(appFusionator, TOGGLE_DRAWER)
};
