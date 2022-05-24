const express = require('express');
const authController = require('../controllers/auth');
const depositController = require('../controllers/depositController');
const transferController = require('../controllers/transferController')

const router = express.Router();
          
router.post('/register', authController.register );
router.post('/login', authController.login );
router.get('/logout', authController.logout );


router.post("/deposit", (req, res) => {
    depositController.createDeposit(req, res);
  });

router.post("/transfer", (req, res) => {
  transferController.createTransfer(req, res);
});


module.exports = router;