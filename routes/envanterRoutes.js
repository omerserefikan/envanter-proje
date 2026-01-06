const express = require('express');
const router = express.Router();
const envanterController = require('../controllers/envanterController');

router.get('/', envanterController.getDashboard);

router.get('/envanter', envanterController.getEnvanterSayfasi);

router.post('/envanter/ekle', envanterController.cihazEkle);

router.get('/envanter/sil/:id', envanterController.cihazSil);

module.exports = router;