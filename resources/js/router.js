import { createRouter, createWebHistory } from 'vue-router'

import Login from './components/Login.vue'
import Register from './components/Register.vue'
import Dashboard from './components/Dashboard.vue'

const routes= [
    {
        path: '/',
        name: 'login',
        component: Login,
       
    },
    {
        path: '/register',
        name: 'register',
        component: Register,
       
    },
    {
        path: '/dashboard',
        name: 'dashboard',
        component: Dashboard,
        
    },
];


export default createRouter({
    history: createWebHistory(),
    routes
})