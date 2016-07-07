import NanoFlux from '../../node_modules/nanoflux-fusion';
window.NanoFlux = window.NanoFlux || NanoFlux;


NanoFlux.createFusionator({

	toggleDrawer : function(previousState, args)
	{
		var isOpen = previousState.drawerIsOpen;
		return {drawerIsOpen: !isOpen};
	},
	login: function(previousState, args){
			console.log("Logging in...");
			return {isLoggedIn: true};
	}
})

export default {
	toggleDrawer: NanoFlux.getFusionActor("toggleDrawer"),
	login: NanoFlux.getFusionActor("login")
};
