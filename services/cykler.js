const db = require('../config/database').connect();

const Cykel = function () { };

//CREATE

Cykel.createOne = function (brand, billede, model, beskrivelse, pris, kategori, tilbudspris) {
    if (tilbudspris == "") {
        tilbudspris = null;
    }
    return new Promise(async (resolve, reject) => {
        db.execute(`
        INSERT INTO cykler
        SET
            cykler.fk_brand = ?,
            cykler.billede = ?,
            cykler.model = ?,
            cykler.beskrivelse = ?,
            cykler.pris = ?,
            cykler.fk_kategori = ?,
            cykler.tilbudspris = ?
        `, [brand, billede, model, beskrivelse, pris, kategori, tilbudspris], (err, result) => {
                if (err) reject(err);
                // console.log("TEST 1", result);
                resolve(true);
            })
    })
}


//READ
Cykel.getAll = function () {
    return new Promise((resolve, reject) => {
        db.execute(`
        SELECT 
            cykler.id,
            brand.navn AS brand,
            cykler.model,
            cykler.billede,
            cykler.beskrivelse,
            cykler.pris,
            kategori.navn AS kategori
        FROM cykler
        INNER JOIN brand ON fk_brand = brand.id
        INNER JOIN kategori ON fk_kategori = kategori.id
        `,
            (error, result) => {
                if (error) reject(error);
                resolve(result);
            });
    });
}

//UPDATE
Cykel.updateOne = function (brand, billede, model, beskrivelse, pris, kategori, tilbudspris){
    return new Promise((resolve, reject) => {
        db.execute(`
        UPDATE cykler 
        SET
            cykler.fk_brand = ?,
            cykler.billede = ?,
            cykler.model = ?,
            cykler.beskrivelse = ?,
            cykler.pris = ?,
            cykler.fk_kategori = ?,
            cykler.tilbudspris = ?
        WHERE id = ?
        `, [brand, billede, model, beskrivelse, pris, kategori, tilbudspris], (error, result) => {
            if(error) reject(error);
            resolve();
        })
    })
}

//DELETE
Cykel.deleteOne = function (id) {
    return new Promise((resolve, reject) => {
        db.execute('DELETE FROM cykler WHERE id = ?', [id], (error) => {
            if (error) reject(error);
            resolve();
        });
    });
};

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
                if (error) reject(error);
                resolve(result);
            });
    });
}

Cykel.getCyklerByKat = function (id) {
    return new Promise((resolve, reject) => {
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
            (error, result) => {
                if (error) reject(error);
                resolve(result);
            });
    });
};

Cykel.getOneById = function (id) {
    return new Promise((resolve, reject) => {
        db.execute(`
        SELECT 
            cykler.id,
            brand.navn AS brand,
            cykler.model,
            cykler.billede,
            cykler.beskrivelse,
            cykler.pris,
            kategori.navn AS kategori
        FROM cykler
        INNER JOIN brand ON fk_brand = brand.id
        INNER JOIN kategori ON fk_kategori = kategori.id
        WHERE cykler.id = ?
        `, [id],
            (error, result) => {
                if (error) reject(error);
                resolve(result);
            });
    });
}

Cykel.getBrand = function () {
    return new Promise((resolve, reject) => {
        db.execute(`
        SELECT
            brand.id,
            brand.navn
        FROM brand
        `, (error, result) => {
                if (error) reject(error);
                resolve(result);
            });
    });
};

module.exports = Cykel;