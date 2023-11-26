const db = require('../models/db');

// Obtener todos los lugares
module.exports.getLugares = (req, res) => {
  const query = 'SELECT lugar.Nombre_Lugar, lugar.Descripcion, lugar.image, MAX(comentario.opinion) AS opinion FROM lugar INNER JOIN comentario ON lugar.ID_Lugar = comentario.id_lugar GROUP BY lugar.Nombre_Lugar, lugar.Descripcion, lugar.image;'; // Asegúrate de que esta consulta coincida con tu tabla
  db.query(query, (err, results) => {
    if (err) {
      console.error(err);
      res.status(500).json({ error: 'Error al obtener datos de lugares' });
    } else {
      res.status(200).json(results);
    }
  });
};
