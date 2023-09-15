import * as allConstants from '../utils/constants/constants'

var constants = {
  install(Vue) {
    Vue.config.globalProperties.$constants = (key) => {
      const globalProperties = {
        ...allConstants
      }
      return globalProperties[key] || ''
    }
  }
}

export default constants
