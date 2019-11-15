//创建mysql连接池
const mysql = require('mysql');
var pool = mysql.createPool({
  //host: 'w.rdc.sae.sina.com.cn',
  host : '127.0.0.1',
  //user: '5mo40j3no1',
  user:'root',
  port : 3306,
  //password: '42iwkx2my400jyw5k1h5hz522lw2340m33lhw51i',
  password:'',
  database: 'app_zhuanyi',
  connectionLimit: 20 
});
//把创建好的连接池导出
module.exports = pool;




