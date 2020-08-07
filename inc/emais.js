var conn = require("./db");

module.exports = {

    getEmails(){

        return new Promise((resolve, reject)=>{
            conn.query(`
                SELECT * from tb_emails ORDER BY email
            `, (err, results)=>{
                if(err){
                    reject(err);
                }else{
                    resolve(results);
                }

            });


        });

    },

    delete(id){

        return new Promise((resolve, reject)=>{
            conn.query(`
                DELETE FROM tb_emails WHERE id = ?
            `,[
                id
            ],(err, results)=>{

                if(err){
                    reject(err);
                }else{
                    resolve(results);
                }
            });

        });

    },
    save(req){

        return new Promise((resolve, reject)=>{
            if(!req.fields.email){
                reject("Digite um e-mail");
              }else{
            
                conn.query(`
                  INSERT INTO tb_emails (email) VALUES(?)
                `,[
                  req.fields.email
                ], (err, results)=>{

                  if(err){
                    reject(err.message);
                  }else{
                      resolve(results);
                  }
            
            
                });
            
            
              }



        });


    }

};