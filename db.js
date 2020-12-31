const mysql = require("mysql2");

const connection = mysql.createConnection({
    host: "localhost",
    user: "mysql",
    port: 3306,
    database: "books",
    password: "mysql"
});
connection.connect(function(err){
    if (err) {
        return console.error("Ошибка: " + err.message);
    }
    else{
        console.log("Подключение к серверу MySQL успешно установлено");
    }
});
module.exports = connection;
