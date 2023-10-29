// import { mapActions, mapGetters } from 'vuex';
import { mapGetters } from 'vuex';
import axios from 'axios';
import { getToken } from './tokenService';
// import { Vue } from 'vue';
// import Vue from 'vue';
// import moment from 'moment';

// Vue.filter('dateFormat', function (value) {
//   if (!value) return ''
//   return moment(value).format("YYYY-MM-DD")
// });


export default {
    computed: {
        ...mapGetters({
            authInfo:'getAuthUser',
        }),
    },

    methods: {
        hasEmptyOrNullValues(obj) {
            for (const key in obj) {
                if (obj[key] === "" || obj[key] === null) {
                    return true; // Return true if any key has an empty string or null value
                }
            }
            return false; // Return false if all keys have valid values
        },
        /**
         * @author Bipro Bhowmik Joy
         * @param {*} method, call method
         * @param {*} url , api url
         * @param {*} dataObj, payload
         */
        async callApiTokenLess(method, url, dataObj) {
            try {
                let data = await axios({
                    headers: {
                        'Accept': 'application/json',
                        'Content-Type': 'application/json',
                    },
                    method: method,
                    url:  url,
                    data: dataObj
                })
                return data

            } catch (e) {
                let res = e.response;
                if (res.status == 404 || res.status == 401) {
                //   if(res.data.message) this.i(res.data.message)
                }
                // else if (res.status == 422 || res.status == 400) {
                //     // for (let e of res.data.messages) {
                //     //     this.i(e)
                //     // }
                // }
                else if(res.data.non_field_errors.length)
                {
                    res.data.non_field_errors.forEach(element => {
                        this.i(element);
                    });
                }
                // else{
                //    this.swr();
                // }
                return res;

            }
        },
        async callApi(method, url, dataObj) {
            try {

                const token = getToken();

                // Set the token in the Axios header
                if (token) {
                    axios.defaults.headers.common['Authorization'] = `token ${token}`;
                }

                let data = await axios({
                    headers: {
                        'Accept': 'application/json',
                        'Content-Type': 'application/json',
                    },
                    method: method,
                    url:  url,
                    data: dataObj
                })
                return data

            } catch (e) {
                let res = e.response;
                if (res.status == 404 || res.status == 401) {
                //   if(res.data.message) this.i(res.data.message)
                }
                // else if (res.status == 422 || res.status == 400) {
                //     // for (let e of res.data.messages) {
                //     //     this.i(e)
                //     // }
                // }
                else if(res.data.non_field_errors.length)
                {
                    res.data.non_field_errors.forEach(element => {
                        this.i(element);
                    });
                }
                // else{
                //    this.swr();
                // }
                return res;

            }
        },

        async getAuthUser()
        {
            const res = await this.callApi(
                "get",
                "/auth/authUser/"
              );
              
            return res;
        },

        // configuration(){
        //     this.$Notice.config({
        //         top: 60,
        //         duration: 3
        //     });
        // },

        i(msg, i = 'Hey!') {
            // this.configuration();
            this.$Notice.info({
                title: i,
                desc: msg
            });
        },
        s(msg, i = 'Great!') {
            // this.configuration();
            this.$Notice.success({
                title: i,
                desc: msg
            });
        },
        w(msg, i = 'Hi!') {
            // this.configuration();
            this.$Notice.warning({
                title: i,
                desc: msg
            });
        },

        e(msg, i = 'Oops!') {
            // this.configuration();
            this.$Notice.error({
                title: i,
                desc: msg
            });
        },
        swr() {
            this.$Notice.error({
                title: 'Oops',
                desc: 'Something went wrong, please try again later'
            });
        },
        ns(title) {
            this.$Message.success(title);
        },
        ni(title) {
            this.$Message.info(title);
        },
        nw(title) {
            this.$Message.warning(title);
        },
        ne(title) {
            this.$Message.error(title);
        },
        nswr() {
            this.$Message.error('Something went wrong, please try again later');
        },

    }
}
