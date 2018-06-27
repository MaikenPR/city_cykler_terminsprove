module.exports = function (app){
    require('./index')(app);
    require('./cykler')(app);
    require('./cykler')(app);
    require('./admin_index')(app);
    require('./admin_cykler')(app);
    require('./admin_retCykel')(app);
};