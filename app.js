require('dotenv').config();
const express = require('express');
const app = express();
const exphbs = require('express-handlebars');

const port = process.env.PORT || 4000;

// parse application/x-www-form-urlencoded
app.use(express.urlencoded({ extended: true }));

// parse application/json
app.use(express.json());

// Static files
app.use(express.static('public'));

// Templating engine Handlebars
//app.engine('hbs', exphbs.engine( {extname: '.hbs'} ));
//app.set('view engine', 'hbs');
const handlebars = exphbs.create({extname: '.hbs'});
app.engine('.hbs', handlebars.engine);
app.set('view engine', '.hbs');

const routes = require('./server/routes/user');
app.use('/', routes);

app.listen(port, () => {
  console.log(`Server is listening on port: ${port}`);
})
