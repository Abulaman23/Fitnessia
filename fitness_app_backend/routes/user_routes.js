const router = require('express').Router(); //express router
const UserController = require('../controller/user_controller');

router.post('/register', UserController.register);
router.post('/login', UserController.login);

module.exports = router;
