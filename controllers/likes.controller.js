const db = require('../db');
class LikesController {
    async createLike(req, res) {
        const {user_id, book_id} = req.body;
        const query = 'INSERT INTO `likes` ' +
            "(`user_id`, `book_id`) " +
            "VALUES ('"+user_id+"', '"+book_id+"')";
        db.query(query, (error, results) => {
            if(error) {
                res.json(error)
            } else {
                res.json(results);
            }
        });
    }
    async getLikes(req, res) {
        const {id} = req.body;
        db.query("SELECT * FROM `likes` WHERE `user_id` = '"+id+"'", (error, results) => {
            if(error) {
                res.json(error)
            } else {
                res.json(results);
            }
        });
    }
    async deleteLike(req, res) {
        const {id} = req.body;
        db.query("DELETE FROM `likes` WHERE `id` = '"+id+"'", (error, results) => {
            if(error) {
                res.json(error)
            } else {
                res.json(results);
            }
        })
    }
}

module.exports = new LikesController();
