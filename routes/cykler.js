const db = require('../config/database').connect();
const Tilbud = require('../services/tilbud');
const Kontakt = require('../services/kontakt');
const Cykel = require('../services/cykler');

module.exports = function (app) {
    app.get('/cykler', async (req, res) => {
        // console.log('Hej med dig');
        try {
            const treTilbud = await Tilbud.getTreRand();
            const kontakt = await Kontakt();
            const cykel_kat = await Cykel.getKategorier();
            // console.log(cykel_kat[0].navn);
            res.render('pages/cykler', {
                'page': { 'title': 'Cykler' },
                'tilbud': treTilbud,
                'kontakt': kontakt,
                'cykel_kat': cykel_kat
            });

        } catch (error) {
            res.send(error);
        }
    });

    app.get('/cykler/kategori/:id', async (req, res) => {
        // console.log(req.params.id);
        const treTilbud = await Tilbud.getTreRand();
        const kontakt = await Kontakt();
        const cykler = await Cykel.getCyklerByKat(req.params.id);
        // console.log(cykler);
        res.render('pages/cyklerByKat', {
            'page': { 'title': 'Cykler' },
            'tilbud': treTilbud,
            'kontakt': kontakt,
            'cykel': cykler
        });

    })
}