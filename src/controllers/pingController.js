const db = require('../models/db')
module.exports.ping = (req, res) => {
    const consult = "SELECT * FROM usuario";

    try {
        db.query(consult, (err, results) => {
            if (err) {
                console.error("Error en la consulta:", err);
                res.status(500).json({ error: "Error en la consulta" });
            } else {
                console.log(results);
                res.status(200).json(results);
            }
        });
    } catch (e) {
        console.error("Error en el bloque try-catch:", e);
        res.status(500).json({ error: "Error en el bloque try-catch" });
    }
}


