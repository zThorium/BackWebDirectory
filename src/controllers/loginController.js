const db = require('../models/db');
const jwt = require('jsonwebtoken');

module.exports.login = (req, res) => {
    const { username, password } = req.body;

    const consult = 'SELECT * FROM usuario WHERE correo_us = ? AND contraseña = ?';

    try {
        db.query(consult, [username, password], (err, result) => {
            if (err) {
                res.send(err);
            } else {
                if (result.length > 0) { // Corrección: `length` en lugar de `lenght`
                    const token = jwt.sign({username}, "Stack", {
                        expiresIn: '1m'
                    });
                    res.send({token});
                } else {
                    console.log(result);
                    res.send({ message: 'Email erroneo' });
                }
            }
        });
    } catch (error) {
        // Manejo de errores si ocurre un error en el bloque `try`
    }
}


