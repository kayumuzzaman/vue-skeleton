import { createApp } from 'vue'
import { createPinia } from 'pinia'

import App from './App.vue'
import router from './router'
import constants from './plugins/constantsPlugin'
// by importing this, we can use the global css in our components
import './assets/global.css'

const app = createApp(App)

app.use(createPinia())
app.use(router)
app.use(constants)
app.mount('#app')
