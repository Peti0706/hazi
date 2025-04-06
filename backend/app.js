const express=  require('express');
const mysql= require('mysql2');
const cors= require('cors');
const bodyParser= require('body-parser');
const app= express();
const port= 3000;
app.use(cors());
app.use(bodyParser.json());

const db= mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: '',
    database: 'prognyelvek'
});

db.connect((err)=>{
    if(err){
        console.log(err);
    }
    else{
        console.log("Sikeres csatlakozas");
    }
});


app.get('/prognyelvek', (req, res)=>{
    db.query('SELECT nyelvek.id,nyelvek.nev,nyelvek.leiras,kategoriak.nev as kategorianev FROM nyelvek INNER JOIN kategoriak on nyelvek.kategoriaid=kategoriak.id', (err, result)=>{
        if(err){
            console.log(err);
        }
        else{
            res.json(result);
        }
    });
});

app.put('/prognyelvek/:id', (req, res)=>{
    const {id}= req.params;
    const {nev}= req.body;
  
    db.query('UPDATE nyelvek SET nev=? WHERE id=?', [nev, id], (err, result)=>{
        if(err){
            console.log(err);
        }
        else{
            res.json({uzenet:"Sikeres frissités!"});
        }
    });
});

app.post("/prognyelvek",(req,res)=>{
    const {nev, leiras, kategoriaid}= req.body;
    db.query('INSERT INTO nyelvek (nev,leiras,kategoriaid) VALUES (?,?,?)', [nev, leiras, kategoriaid], (err, result)=>{
        if(err){
            console.log(err);
        }
        else{
            res.json({uzenet:"Sikeres beszuras!"});
        }
    });
});


app.delete('/prognyelvek/:id', (req, res)=>{
const {id}= req.params;
db.query('DELETE FROM nyelvek WHERE id=?', [id], (err, result)=>{
    if(err){
        console.log(err);
    }
    else{
        res.json({uzenet:"Sikeres torles!"});
    }
});
});



app.listen(port, ()=>{
    console.log("A szerver fut");
})