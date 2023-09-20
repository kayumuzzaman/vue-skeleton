import axios from 'axios'

const axiosClient = axios.create({
  baseURL: 'https://jsonplaceholder.typicode.com'
})

export const getUsers = () => {
  return axiosClient.get('/users')
}

export const getUser = (userId) => {
  return axiosClient.get(`/users/${userId}`)
}
