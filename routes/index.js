const db = require('../config/database').connect();

module.exports = function (app) {
	app.get('/', (req, res) => {
		res.render('pages/index', { 'page': { 'title': 'Forside' } });
	});
};