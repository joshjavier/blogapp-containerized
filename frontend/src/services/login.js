import axios from './apiClient'
const baseURL = '/login'

const login = async (credentials) => {
  const response = await axios.post(baseURL, credentials)
  return response.data
}

export default { login }
