import axios from 'axios'

export const axiosinstance = axios.create({
  baseURL: 'https://jsonplaceholder.typicode.com',
  timeout: 600000
})
