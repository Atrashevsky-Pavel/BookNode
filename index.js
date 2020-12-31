const express = require('express');
const bookRouter = require('./routes/book.routes');
const PORT = process.env.PORT || 8000;

const app = express();
const cors = require('cors');
app.use(cors());
app.use(express.json());
app.use('/api', bookRouter);
app.listen(PORT, () => {
   console.log(`server port work ${PORT}`);
});
