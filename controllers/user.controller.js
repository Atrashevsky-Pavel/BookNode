const db = require('../db');
class UserController {
    async createUser(req, res) {
        const {email, password} = req.body;
        const query = 'INSERT INTO `users` ' +
            "(`email`, `password`) " +
            "VALUES ('"+email+"', '"+password+"')";
        db.query(query, (error, results) => {
            if(error) {
                res.json(error)
            } else {
                res.json(results);
            }
        });
    }
    async checkUser(req, res) {
        const {email, password} = req.body;
        db.query("SELECT * FROM `users` WHERE `email` = '"+email+"' AND `password` = '"+password+"'",
            (error, results) => {
            if(error) {
                res.json(error)
            } else {
                res.json(results);
            }
        });
    }
}

module.exports = new UserController();
