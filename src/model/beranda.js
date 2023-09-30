const { Connection } = require("../helper/DBUtil");
const fs = require('fs')
class Beranda {
  #connection = null;
  constructor() {
    this.#setConnetion();
  }

  async #setConnetion() {
    this.#connection = await Connection.getConnection();
  }


  allBeranda = (result) => {
    const query = `select id, image1, judul, sub_judul, content, logo from beranda `
    this.#connection.query(query, (err, res) => {
      if (err) {
        return result(err, null);
      }

      // Jika data tidak ada
      if (!res.length) {
        return result({kind: 'NOT_FOUND'}, null);
      }

      const data = {
        data: res
      } 

      return result(err, data);
    });

  };

  updateBeranda = (beranda, result) => {
    const query = `update beranda set judul = ?, sub_judul = ?, content = ? where id = ? `
    this.#connection.query(query, [beranda.judul, beranda.sub_judul, beranda.content, beranda.id], (err, res) => {
     
      if (err) {
        return result(err, null);
      }
      
      if(res.changedRows === 0){
        return result({kind: 'NO_CHANGED'}, null);
      }
      
      return result(null, beranda);
    });

  };

  updateimage1ById = (beranda, result) => {
    const query1 = `select image1 from beranda where id = ?`
    const query2 = `update beranda set image1 = null where id = ? `
    this.#connection.query(query1, [beranda.id], (err, res1) => {
      if (err) {
        return result(err, null);
      } else if(res1[0] !== undefined) {

        if(res1[0].image1 !== null) {
          try {
            fs.unlinkSync(res1[0].image1)
          } catch (error) {
            fs.unlinkSync(beranda.image1)
            this.#connection.query(query2, [beranda.id])
            return result(error, null)
          }
          
        }
        const query = `update beranda set image1 = ? where id = ? `
        this.#connection.query(query, [beranda.image1, beranda.id], (err, res) => {
        
          if (err) {
            return result(err, null);
          }
          
          return result(null, beranda);
        });
      } else{
        fs.unlinkSync(beranda.image1)
        return result({kind: 'UNKNOWN_ID'}, null)
      }

    })
  };

  updateLogo = (beranda, result) => {
    const query1 = `select logo from beranda where id = ?`
    const query2 = `update beranda set logo = null where id = ? `
    this.#connection.query(query1, [beranda.id], (err, res1) => {
      if (err) {
        return result(err, null);
      } else if(res1[0] !== undefined) {

        if(res1[0].logo !== null) {
          try {
            fs.unlinkSync(res1[0].logo)
          } catch (error) {
            fs.unlinkSync(beranda.logo)
            this.#connection.query(query2, [beranda.id])
            return result(error, null)
          }
          
        }
        const query = `update beranda set logo = ? where id = ? `
        this.#connection.query(query, [beranda.logo, beranda.id], (err, res) => {
        
          if (err) {
            return result(err, null);
          }
          
          return result(null, beranda);
        });
      } else{
        fs.unlinkSync(beranda.logo)
        return result({kind: 'UNKNOWN_ID'}, null)
      }

    })
  };

}

module.exports = { Beranda };
