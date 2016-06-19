export default {

	loadProducts: function() {
		this.dispatch('loadProducts');
	},
	loadOrders: function() {
		this.dispatch('loadOrders');
	},

	addProductToCart: function(productId){
		this.dispatch('addProductToCart', productId);
	},
	
	createOrder: function(){
		this.dispatch('createOrder');
	}
};

