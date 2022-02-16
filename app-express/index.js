const express = require('express')
const app = express()
const jwt = require('jsonwebtoken')
const mysql = require('mysql')

const connexion = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: 'root',
    database: 'mspr'
})

connexion.connect(error => {
    if (error) throw error
    console.log('Connexion à la base de données réussie');
})

const auth = function (req, res, next) {
    try {
        const token = req.headers.authorization.split(' ')[1]
        const decodedToken = jwt.verify(token, 'RANDOM_SECRET_TOKEN')
        const user = decodedToken.user
        if (req.body.user && req.body.user !== user) {
            throw 'User incorrect'
        } else {
            next()
        }
    } catch (error) {
        res.status(401).json({error: error | 'Requête non authentifiée'})
    }
}

app.use((req, res, next) => {
    res.setHeader('Access-Control-Allow-Origin', '*')
    res.setHeader('Access-Control-Allow-Headers', 'Origin, X-Requested-With, Content, Accept, Content-type, Authorization')
    res.setHeader('Access-Control-Allow-Methods', 'GET, POST, PUT, DELETE, PATCH, OPTIONS')
    next()
})

app.use(express.json())

app.listen(8080, () => {
    console.log("Serveur à l'écoute");
})