import { mapGetters } from 'vuex';
export default {
    computed: {
        ...mapGetters({
            authInfo:'getAuthUser',
        }),
    },

    methods: {
        /**
         * @author Bipro Bhowmik Joy
         * @param {*} method, call method
         * @param {*} url , api url
         * @param {*} dataObj, payload
         */
        hasEmptyOrNullValues(obj) {
            for (const key in obj) {
                if (obj[key] === "" || obj[key] === null) {
                    return true;
                }
            }
            return false;
        },

        clearObjectValues(obj) {
            for (const key in obj) {
                obj[key] = "";
            }

            return obj;
        }
        
    }
}
