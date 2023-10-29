/*
Author: Bipro Bhowmik Joy
*/

import { createStore } from "vuex";
// import axios from 'axios';

const store = createStore({
    state: {
        testData : 'Joy0005',

        // VITE_PARENT_ID: 3,
        // VITE_PARENT_SOFTWARE: 'http://localhost:8000',

        authUser:false
    },

    getters: {
        
        getAuthUser: state => {
            return state.authUser;
        },
    },

    mutations: {
        setAuthUser (state, items){
            state.authUser = items;
        },
        
        srtTestData (state, items){
            state.testData = items;
        },
    },

    actions: {
        // LoadSessionData({commit}){
        //     axios
        //         .get('/user/getSessionData')
        //         .then(response => {
        //             // console.log("Session Data"+JSON.stringify(response.data));
        //             commit('setSissionData',response.data);
        //             // dispatch('Loadtab_registrations_info', "Bipro");
        //         })
        //         .catch((response) =>{
        //             console.log(response.message);
        //         });

        // },
    }
})

export default store;