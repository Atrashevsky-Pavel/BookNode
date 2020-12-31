const db = require('../db');
class BookController {
    async createBook(req, res) {
        const {name, author, genre, year, download_link, buy_link, text, img } = req.body;
        const query = 'INSERT INTO `books` ' +
            "(`name`, `author`, `genre`, `year`, `download_link`, `buy_link`, `text`, `img`) " +
            "VALUES ('"+name+"', '"+author+"', '"+genre+"', '"+year+"', '"+download_link+"', '"+buy_link+"', '"+text+"', '"+img+"')";
        db.query(query, (error, results) => {
            if(error) {
                res.json(error)
            } else {
                res.json(results);
            }
        });
    }
    async getBook(req, res) {
        db.query('SELECT * FROM `books`', (error, results) => {
            if(error) {
                res.json(error)
            } else {
                res.json(results);
            }
        });
    }
    async updateBook(req, res) {
        const {id, name, author, genre, year, download_link, buy_link, text, img} = req.body;
        const query = "UPDATE `books` SET `name` = '"+name+"', `author` = '"+author+"', `genre` = '"+genre+"', `year` = '"+year+"', `download_link` = '"+download_link+"', `buy_link` = '"+buy_link+"', `text` = '"+text+ "', `img` = '"+img+"'  WHERE `books`.`id` = '"+id+"'";

        db.query(query, (error, results) => {
            if(error) {
                res.json(error)
            } else {
                res.json(results);
            }
        });
    }
    async deleteBook(req, res) {
        const {id} = req.body;
       db.query("DELETE FROM `books` WHERE `id` = '"+id+"'", (error, results) => {
           if(error) {
               res.json(error)
           } else {
               res.json(results);
           }
       })
    }
}

module.exports = new BookController();
