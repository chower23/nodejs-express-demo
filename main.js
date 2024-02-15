const _ = require('lodash');
const express = require('express');

const app = express();
app.listen(8080, () => {
    console.info(`Express server is ready on port 8080`);
});