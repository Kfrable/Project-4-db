var promise = require('bluebird');
var options = { promiseLib: promise };
var pgp = require('pg-promise')(options);
// SET UP THE DATABASE
var connectionString = process.env.DATABASE_URL||'postgres://localhost:5432/beverage_index';
var db = pgp(connectionString);
// AXIOS
let axios = require('axios');


function getBeers(req, res, next) {
    db.any('SELECT * FROM beers')
      // .then((data) => { res.json({ allMovies: data}); })
      .then((data) => { res.status(200).json({ beers: data}); })
      .catch((err) => { return next(err); });
}

function getABeer(req,res,next){
	let item = req.params.name
	db.one('SELECT * FROM beers WHERE name = $1 ' , item )
	.then((data) => { res.status(200).json({ beers: data}); })
     .catch((err) => { return next(err); });
}

function deleteBeer(req,res,next) {
	let byebye =parseInt(req.params.id)
	db.any('delete from beers where id = $1', byebye)
}

// function createBeer(req,res,next){
// 	console.log(req.body)
// 	db.none('insert into beers(name,)' + 'values(${name})',
// 		req.body)
// 	.then(function(data){
// 		 res.redirect('comments')
		
// 	})
	
// }

function getWines(req, res, next) {
    db.any('SELECT * FROM wines')
      
      .then((data) => { res.status(200).json({ wines: data}); })
      .catch((err) => { return next(err); });
}

function getOneWine(req,res,next){
	let item = req.params.name
	db.one('SELECT * FROM wines WHERE name = $1 ' , item )
	.then((data) => { res.status(200).json({ wine: data}); })
     .catch((err) => { return next(err); });
}

function deleteWine(req,res,next) {
	let byebye =parseInt(req.params.id)
	db.any('delete from wines where id = $1', byebye)
}



function getWaters(req,res,next){
	db.one('SELECT * FROM waters ')
	.then((data) => { res.status(200).json({ waters: data}); })
     .catch((err) => { return next(err); });
}

function getOneWater(req,res,next){
	let item = req.params.name
	db.one('SELECT * FROM waters WHERE name = $1 ' , item )
	.then((data) => { res.status(200).json({ water: data}); })
     .catch((err) => { return next(err); });
}

function deleteWater(req,res,next) {
	let byebye =parseInt(req.params.id)
	db.any('delete from waters where id = $1', byebye)
}

function getFood(req,res,next){
	db.one('SELECT * FROM food_pairings ')
	.then((data) => { res.status(200).json({ foods: data}); })
     .catch((err) => { return next(err); });
}



module.exports = {
	getBeers:getBeers,
	getWines:getWines,
	getABeer:getABeer,
	getWaters:getWaters,
	getFood:getFood,
	getOneWine:getOneWine,
	getOneWater:getOneWater,
	deleteBeer:deleteBeer,
	deleteWine:deleteWine,
	deleteWater:deleteWater
	

}