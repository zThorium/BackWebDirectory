const express = require('express');
const router = express.Router();
const { ping } = require('../controllers/pingController');
const { login } = require('../controllers/loginController');
const { register } = require('../controllers/registerController');
const { getLugares } = require('../controllers/lugaresController');

router.get('/ping', ping);

router.post('/login', login);

router.post('/register', register);

router.get('/lugares', getLugares);

module.exports = router;