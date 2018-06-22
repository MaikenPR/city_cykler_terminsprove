const db = require('../config/database').connect();
const Tilbud = require('../services/tilbud');
const Kontakt = require('../services/kontakt');

module.exports = function (app) {
	app.get('/', async (req, res) => {
		try{
            const tilbud = await Tilbud();
            const kontakt = await Kontakt();
            res.render('pages/index', { 'page': { 'title': 'Forside' }, 
                'content': {'tilbud': tilbud }, 
                'footer': {'kontakt': kontakt} });
        } catch(error){
            res.send(error);
        }
    });
};

//Jeg havde lavet et tilbud-route men man kan ikke lave et route til en partial