var express = require('express');
var router = express.Router();
var db = require('../db/queries')

/* GET home page. */
router.get('/', function(req, res, next) {
  res.render('index', { title: 'Express' });
});
// router.get('/beers', db.getBeers)
router.get('/beers', db.getBeers);
router.get('/beers/:name', db.getABeer);
router.delete('/beers/:id',db.deleteBeer);
// router.post('/',db.createBeer);
// })
router.get('/wines', db.getWines);
router.get('/wines/:name',db.getOneWine);
router.delete('/wines/:id',db.deleteWine);
// router.post('/',db.createWine);

router.get('/waters', db.getWaters);
router.get('/waters/:name', db.getOneWater);
router.delete('/waters/:id',db.deleteWater);
// router.post('/',db.createWaters);

router.get('/food', db.getFood)



module.exports = router;
