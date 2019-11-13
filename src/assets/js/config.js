import axios from "axios"

axios.defaults.baseURL = "http://127.0.0.1:3000/"
//保存session 信息
axios.defaults.withCredentials = true;

var config = {
   axios : axios
}