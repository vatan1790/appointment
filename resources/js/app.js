require('./bootstrap');
import { createApp } from 'vue'
import App from './components/Home.vue'
import VueGoogleCharts from 'vue-google-charts'

//import router
import router from './router'

//import Bootstrap, Popper, jQuery
// import 'bootstrap/dist/css/bootstrap.css'

const app = createApp(App)

//use vue router
app.use(router)
app.use(VueGoogleCharts)

app.mount('#app')