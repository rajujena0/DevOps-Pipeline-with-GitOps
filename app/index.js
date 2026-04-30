const express = require("express");
const app = express();

app.get("/", (req, res) => {
  res.send("DevOps Project by Raju jena is currently Running 🚀");
});

app.listen(3000, '0.0.0.0', () => console.log("Server running"));
