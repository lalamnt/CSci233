const {Pool}= require("pg")
const express = require("express")
const app = express(); 
app.use(express.json())

const pool= new Pool({
	"user": "postgres",
	"password": "password",
	"host": "localhost",
	"port": 5432,
	"database": "online_store"
})

app.get("/", (req, res) => res.sendFile(`${__dirname}/home.html`))
app.get("/info", (req, res) => res.sendFile(`${__dirname}/info.html`))

app.get("/products1", async (req, res) => {
	var rows=  await readProducts1(); 
	res.setHeader("content-type", "application/json")
	res.send(JSON.stringify(rows))
})

app.get("/prices1", async (req, res) => {
	var rows=  await readPrices1(); 
	res.setHeader("content-type", "application/json")
	res.send(JSON.stringify(rows))
})

app.get("/products2", async (req, res) => {
	var rows=  await readProducts2(); 
	res.setHeader("content-type", "application/json")
	res.send(JSON.stringify(rows))
})

app.get("/products3", async (req, res) => {
	var rows=  await readProducts3(); 
	res.setHeader("content-type", "application/json")
	res.send(JSON.stringify(rows))
})

app.get("/products4", async (req, res) => {
	var rows=  await readProducts4(); 
	res.setHeader("content-type", "application/json")
	res.send(JSON.stringify(rows))
})

app.get("/products5", async (req, res) => {
	var rows=  await readProducts5(); 
	res.setHeader("content-type", "application/json")
	res.send(JSON.stringify(rows))
})

app.get("/products6", async (req, res) => {
	var rows=  await readProducts6(); 
	res.setHeader("content-type", "application/json")
	res.send(JSON.stringify(rows))
})

app.get("/prices2", async (req, res) => {
	var rows=  await readPrices2(); 
	res.setHeader("content-type", "application/json")
	res.send(JSON.stringify(rows))
})

app.get("/prices3", async (req, res) => {
	var rows=  await readPrices3(); 
	res.setHeader("content-type", "application/json")
	res.send(JSON.stringify(rows))
})

app.get("/prices4", async (req, res) => {
	var rows=  await readPrices4(); 
	res.setHeader("content-type", "application/json")
	res.send(JSON.stringify(rows))
})

app.get("/prices5", async (req, res) => {
	var rows=  await readPrices5(); 
	res.setHeader("content-type", "application/json")
	res.send(JSON.stringify(rows))
})

app.get("/prices6", async (req, res) => {
	var rows=  await readPrices6(); 
	res.setHeader("content-type", "application/json")
	res.send(JSON.stringify(rows))
})

app.listen(8080, () => console.log("Web server is listening on port 8080..."))

start()
async function start() {
	await connect();
} 


async function connect() {
	try {
		await pool.connect();
	}
	catch (e) {
		console.error(`Failed to connect ${e}`)
	}
}

async function readProducts1() {
	try {
		var results= await pool.query("select item_name from products where item_id= 1")
		return results.rows;
	}
	catch(e) {
		return [];
	}
}
async function readProducts2() {
	try {
		var results= await pool.query("select item_name from products where item_id= 2")
		return results.rows;
	}
	catch(e) {
		return [];
	}
}
async function readProducts3() {
	try {
		var results= await pool.query("select item_name from products where item_id= 20")
		return results.rows;
	}
	catch(e) {
		return [];
	}
}
async function readProducts4() {
	try {
		var results= await pool.query("select item_name from products where item_id= 4")
		return results.rows;
	}
	catch(e) {
		return [];
	}
}
async function readProducts5() {
	try {
		var results= await pool.query("select item_name from products where item_id= 5")
		return results.rows;
	}
	catch(e) {
		return [];
	}
}
async function readProducts6() {
	try {
		var results= await pool.query("select item_name from products where item_id= 9")
		return results.rows;
	}
	catch(e) {
		return [];
	}
}

async function readPrices1() {
	try {
		var results= await pool.query("select price from products where item_id =1")
		return results.rows;
	}
	catch(e) {
		return [];
	}
}
async function readPrices2() {
	try {
		var results= await pool.query("select price from products where item_id =2")
		return results.rows;
	}
	catch(e) {
		return [];
	}
}
async function readPrices3() {
	try {
		var results= await pool.query("select price from products where item_id =20")
		return results.rows;
	}
	catch(e) {
		return [];
	}
}
async function readPrices4() {
	try {
		var results= await pool.query("select price from products where item_id =4")
		return results.rows;
	}
	catch(e) {
		return [];
	}
}
async function readPrices5() {
	try {
		var results= await pool.query("select price from products where item_id =5")
		return results.rows;
	}
	catch(e) {
		return [];
	}
}
async function readPrices6() {
	try {
		var results= await pool.query("select price from products where item_id =9")
		return results.rows;
	}
	catch(e) {
		return [];
	}
}

