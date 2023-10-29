import { createApp } from 'vue'
import App from './App.vue'

import axios from 'axios'
import VueAxios from 'vue-axios'
axios.defaults.baseURL = 'http://localhost:8000/'
// Obtain the CSRF token
const csrfToken = getCookie('csrftoken'); // Assuming you're using a Vue.js cookie library

// Set the CSRF token in Axios headers
axios.defaults.headers.common['X-CSRFToken'] = csrfToken;

import router from './router'

import ViewUIPlus from 'view-ui-plus'
import 'view-ui-plus/dist/styles/viewuiplus.css'
import locale from 'view-ui-plus/dist/locale/en-US';

import common from './common';
import commonFn from './commonFn/commonFunctions';

const app = createApp(App);
app.mixin(common).mixin(commonFn);

app.use(VueAxios, axios).use(router).use(ViewUIPlus, {locale: locale}).mount('#app')

function getCookie(name) {
    const value = `; ${document.cookie}`;
    const parts = value.split(`; ${name}=`);
    if (parts.length === 2) return parts.pop().split(';').shift();
  }