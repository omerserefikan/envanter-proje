const db = require('../db/mysql_connect'); 
const Envanter = {
    hepsiniGetir: async () => {
        const [rows] = await db.execute("SELECT * FROM envanter");
        return rows;
    },

    ekle: async (cihaz_adi, durum, zimmetli_kisi) => {
        const sql = "INSERT INTO envanter (cihaz_adi, durum, zimmetli_kisi) VALUES (?, ?, ?)";
        return await db.execute(sql, [cihaz_adi, durum, zimmetli_kisi]);
    },

    istatistikGetir: async () => {
        const sql = "SELECT durum, COUNT(*) as sayi FROM envanter GROUP BY durum";
        const [rows] = await db.execute(sql);
        return rows;
    },

    sil: async (id) => {
        const sql = "DELETE FROM envanter WHERE id = ?";
        return await db.execute(sql, [id]);
    },

    getSonEklenenler: async () => {
        const sql = "SELECT * FROM envanter ORDER BY id DESC LIMIT 5";
        const [rows] = await db.execute(sql);
        return rows;
    }
};

module.exports = Envanter;