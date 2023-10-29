import { createWebHistory, createRouter } from 'vue-router';

import dLayout from './layouts/default.vue'
import nLayout from './layouts/none.vue'

import home from './pages/index.vue';
import login from './pages/login.vue';
import register from './pages/register.vue';

// import store from './store'

const routes = [
    {
        path : '/',
        name : 'Home',
        component : dLayout,
        redirect: '/',
        children: [
            {
                path : '/',
                name : 'Home',
                component : home
            },
        ],
    },

    {
        path : '/login',
        name : 'Login',
        component : nLayout,
        redirect: '/login',
        children: [
            {
                path : '/login',
                name : 'login',
                component : login
            },
            {
                path : '/register',
                name : 'register',
                component : register
            },
        ],
    }
    

];

const router = createRouter({
    history: createWebHistory(),
    routes
});


// router.beforeEach((to,from) =>{
//     if(to.meta.requiresAuth && store.getters.getToken == 0){
//         return { name : 'Login'}
//     }
//     if(to.meta.requiresAuth == false && store.getters.getToken != 0){
//         return { name : 'Dashboard'}
//     }
// })

export default router;