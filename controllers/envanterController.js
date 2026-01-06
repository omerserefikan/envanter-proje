const Envanter = require('../models/envanterModel');

exports.getDashboard = async (req, res) => {
    try {
        const istatistikler = await Envanter.istatistikGetir();
        const sonEklenenler = await Envanter.getSonEklenenler();
        
        let toplam = 0;
        let arizali = 0;
        let kullanımda = 0;

        istatistikler.forEach(item => {
            toplam += item.sayi;
            if(item.durum === 'Arızalı') arizali = item.sayi;
            if(item.durum === 'Kullanımda') kullanımda = item.sayi;
        });

        res.render('index', { 
            istatistikler, 
            toplam, 
            arizali, 
            kullanımda,
            sonEklenenler 
        });
    } catch (error) {
        res.status(500).send("Hata oluştu.");
    }
};
exports.getEnvanterSayfasi = async (req, res) => {
    try {
        const cihazlar = await Envanter.hepsiniGetir();
        
        res.render('envanter', { cihazlar: cihazlar });
    } catch (error) {
        console.error("Envanter sayfası yüklenirken hata oluştu:", error);
        res.status(500).send("Sunucu Hatası");
    }
};

exports.cihazEkle = async (req, res) => {
    try {
        const { cihaz_adi, durum, zimmetli_kisi } = req.body;
        
        await Envanter.ekle(cihaz_adi, durum, zimmetli_kisi);
        
        res.redirect('/envanter');
    } catch (error) {
        console.error("Veri eklenirken hata oluştu:", error);
        res.status(500).send("Veri eklenemedi.");
    }
};

exports.cihazSil = async (req, res) => {
    try {
        const id = req.params.id; 
        await Envanter.sil(id);
        res.redirect('/envanter'); 
    } catch (error) {
        console.error("Silme işlemi sırasında hata:", error);
        res.status(500).send("Cihaz silinemedi.");
    }
};