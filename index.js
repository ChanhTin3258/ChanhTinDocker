const express = require('express');
const app = express();
const port = 3000;

app.get('/', (req, res) => {
  res.send('<h1>Hello</h1><p>Đây là một ứng dụng Node.js cơ bản được chạy trong container.</p>');
});

app.listen(port, () => {
  console.log(`Server is running at http://localhost:${port}`);
});
