const db = require('../config/database').connect();

const Cykel = function () {};

Cykel.getKategorier = function () {

    return new Promise((resolve, reject) => {
        db.execute(`
        SELECT 
            id,
            navn,
            billede
        FROM kategori
        LIMIT 6`,
            (error, result) => {
                if(error) reject(error);
                resolve(result);
            });
    });
}

Cykel.getCyklerByKat = function(id){
    return new Promise ((resolve, reject) => {
        db.execute(`
        SELECT 
            CONCAT(brand.navn, ' ', cykler.model) AS navn,
            cykler.id,
            cykler.billede,
            cykler.beskrivelse,
            cykler.pris
        FROM cykler
        INNER JOIN brand ON fk_brand = brand.id
        WHERE fk_kategori = ?
        LIMIT 3
        `, [id], 
        (error, result) =>{
            if(error) reject(error);
            resolve(result);
        });
    });
};

module.exports = Cykel;