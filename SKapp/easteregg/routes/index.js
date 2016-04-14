var express = require('express');
var router = express.Router();

/* GET home page. */
router.get('/', function(req, res, next) {
  res.render('books/index');
});

// Get indv book page
router.get('/1', function(req, res, next) {
  res.render('books/show');
});


// GET repeater index page
router.get('/repeat', function(req, res, next) {
  res.render('repeaters/index');
});
// GET indv repeater page
router.get('/repeat/1', function(req, res, next) {
  res.render('repeaters/show');
});


router.get('')
module.exports = router;

