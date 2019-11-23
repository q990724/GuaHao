import axios from "axios"

axios.defaults.baseURL = "http://zhuanyi.applinzi.com/"
//保存session 信息
axios.defaults.withCredentials = true;

var config = {
   axios : axios
}
export default config