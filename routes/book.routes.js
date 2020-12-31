const Router = require('express');
const router = new Router();
const bookController = require('../controllers/book.controller');
const userController = require('../controllers/user.controller');
const likesController = require('../controllers/likes.controller');

router.post('/book', bookController.createBook);
router.get('/book', bookController.getBook);
router.put('/book', bookController.updateBook);
router.post('/book/delete', bookController.deleteBook);

router.post('/user', userController.createUser);
router.post('/user/check', userController.checkUser);

router.post('/likes', likesController.createLike);
router.post('/likes/get', likesController.getLikes);
router.post('/likes/delete', likesController.deleteLike);

module.exports = router;
