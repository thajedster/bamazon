var mysql = require("mysql");
var inquirer = require("inquirer");

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

            userprompt();
            //connection.end();
        });
};

function userprompt() {
    inquirer.prompt({
        type: "input",
        name: "purchase",
        message: "please enter in the id number of the product you want to purchase.",
        validate: function (value) {
            if (isNaN(value) === false) {
                return true;
            }
            return false;
        }
    })
        .then(function (answer) {
            var query = connection.query(`SELECT * FROM products WHERE item_id = ${answer.purchase}`, function (err, data) {
                if (err) throw err;
                console.log(data)
                connection.end();
                //askQuantity();
            })
        })
}

