const db = require('../models/db');
const jwt = require('jsonwebtoken');

module.exports.register = (req, res) => {
    const { email, password, firstName, lastName } = req.body;

    // Actualiza la consulta SQL para incluir nombre_us
    const insertQuery = 'INSERT INTO usuario (nombre_us, correo_us, contraseña) VALUES (?, ?, ?)';

    try {
        db.query(insertQuery, [firstName + ' ' + lastName, email, password, ], (err, result) => {
            if (err) {
                res.send(err);
            } else {
                const token = jwt.sign({email}, 'Stack', {
                    expiresIn: '1m',
                });
                res.send({ success: true, token, message: 'Registration successful' });
            }
        });
    } catch (error) {
        console.error(error);
        res.status(500).send('Error en el registro de usuario');
    }
};