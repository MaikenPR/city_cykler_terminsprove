const express = require('express');
const app = express();

const port = process.env.PORT || 8080;
app.set('port', port);



// CONFIG
//==================================================
require('./config/views')(app, express);
require('./config/parsing')(app);


// ROUTES
//==================================================
require('./routes/index')(app);



app.listen(port);
console.log(`8080 is the magic port http://localhost:${port}/`);