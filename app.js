const express = require('express');
const bodyParser = require('body-parser');
const path = require('path');
const envanterRoutes = require('./routes/envanterRoutes'); // Routes dosyamız

const app = express();

// View Engine ayarı (EJS)
app.set('view engine', 'ejs');
app.set('views', path.join(__dirname, 'views'));

// Middleware
app.use(bodyParser.urlencoded({ extended: false }));
app.use(express.static(path.join(__dirname, 'public'))); // Statik dosyalar için

// Rotaları kullan
app.use('/', envanterRoutes);

// Sunucuyu başlat
const PORT = 3000;
app.listen(PORT, () => {
    console.log(`Sunucu http://localhost:${PORT} adresinde çalışıyor...`);
});