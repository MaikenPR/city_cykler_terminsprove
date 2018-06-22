const db = require('../config/database').connect();
const Tilbud = require('../services/tilbud');

module.exports = function (app){
    app.get('/cykler', async (req, res) => {
		try{
			const tilbud = await Tilbud();
            res.render('pages/cykler', { 'page': { 'title': 'Cykler' }, 'content': {'tilbud': tilbud } });
        } catch(error){
            res.send(error);
        }
	});
}