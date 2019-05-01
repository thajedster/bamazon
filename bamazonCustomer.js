var mysql = require("mysql");

var connection = mysql.createConnection({
    host: 'localhost',
    port: 3306,
    user: 'root',
    password: 'jedcheng',
    database: 'bamazon'
});

connection.connect(function (err) {
    if (err) throw err;
    console.log("connected as id " + connection.threadId + "\n")
    displayItems()
})

function displayItems() {
    console.log("All products...\n");
    var query = connection.query(
        "SELECT * FROM products", function (err, res) {
            console.log(res);

            connection.end();
        });
}