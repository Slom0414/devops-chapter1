const express = require("express");
const app = express();

// 端口可以用环境变量控制，方便 dev/test/prd 区分
const PORT = process.env.PORT || 8080;
const APP_ENV = process.env.APP_ENV || "local";

app.use(express.json());

app.get("/hello", (req, res) => {
    const name = req.query.name || "world";
    res.json({
        message: `Hello, ${name}!`,
        env: APP_ENV,
    });
});


// 启动
app.listen(PORT, () => {
    console.log(`API server running on port ${PORT}, env=${APP_ENV}`);
});
