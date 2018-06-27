const db = require('../config/database').connect();
const Tilbud = require('../services/tilbud');

module.exports = function (app) {
	app.get('/admin_index', async (req, res) => {
		try{
            const alleTilbud = await Tilbud.getAll();
             res.render('pages/admin_index', {
                'page': { 'title': 'Admin' },
                'alleTilbud': alleTilbud
            });
        } catch(error){
            res.send(error);
        }
    });
};

