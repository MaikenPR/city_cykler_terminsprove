const db = require('../config/database').connect();

const Tilbud = function () {
    // console.log("hej");
    return new Promise((resolve, reject) => {
        db.execute(`
        SELECT 
            CONCAT(brand.navn, ' ', cykler.model) AS navn, 
            cykler.id, 
            cykler.billede, 
            cykler.pris, 
            cykler.tilbudspris
        FROM cykler 
        INNER JOIN brand ON fk_brand = brand.id
        WHERE (tilbudspris is NOT null) OR (tilbudspris != 0)  
        ORDER BY RAND() 
        LIMIT 3 `,
            (error, result) => {
                if (error) reject(error);
                resolve(result);
            });
    });
};

module.exports = Tilbud;