var webpack = require('webpack');

// postcss plugins
var cssimport = require('postcss-import');
var customProperties = require('postcss-custom-properties');
var autoprefixer = require('autoprefixer');
var csswring = require('csswring');
var cssnested = require('postcss-nested');

module.exports = {
	entry: {
		app: ['whatwg-fetch', './src/app.js']
	},
	output: {
		path: __dirname + '/build/',
		filename: 'bundle.js'
	},
	devtool: 'source-map',
	debug: true,
	plugins: [
		new webpack.ProvidePlugin({
			riot: 'riot'
		})
	],
	module: {
		preLoaders: [
			{test: /\.tag$/, exclude: /node_modules/, loader: 'riotjs-loader', query: {type: 'es6'}}
		],
		loaders: [
			{
				test: /\.js|\.tag$/,
				exclude: /node_modules/,
				include: /src/,
				loader: 'babel-loader',
				query: {modules: 'common'}
			},
			{test: /\.css$/, loader: 'style-loader!css-loader!postcss-loader'},
			{ test: /\.(eot|woff|woff2|ttf|svg|png|jpe?g|gif)(\?\S*)?$/, loader: 'url-loader?limit=100000' }
		]
	},
	postcss: [cssimport, cssnested, customProperties, autoprefixer, csswring],
	devServer: {
		contentBase: './build/',
		port: 1337,
		hot: true,
		inline: true
	}
};