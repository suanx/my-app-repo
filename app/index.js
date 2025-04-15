const express = require('express');
const app = express();
const port = 3000;

// Basic route
app.get('/', (req, res) => {
  res.send('Hello, world! This is my app!');
});

app.listen(port, () => {
  console.log(`App running on port ${port}`);
});
