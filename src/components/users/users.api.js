import { axiosinstance } from '../../helper/AxiosInstance'
export const getUsers = () => {
  return axiosinstance.get('/users')
}

export const getUser = (userId) => {
  return axiosinstance.get(`/users/${userId}`)
}
