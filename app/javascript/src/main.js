import { createApp } from 'vue'

import App from '@/components/books/app.vue'
import router from './router'


export default() => {
  document.addEventListener('DOMContentLoaded',() =>
{

  const app = createApp(App)
  app.use(router)
  app.mount('#appp')


})
}
