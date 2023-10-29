<template>
    <div v-if="show">
        <navbar></navbar>
        

        <!-- <div class="container"> -->
        <router-view></router-view>
        <!-- </div> -->

        <footer class="d-flex design  flex-wrap justify-content-between align-items-center py-3 my-4 border-top">
            <div class="container">
                <div class="row">
                    <div class="col-md-4 d-flex align-items-center">
                        <a href="/" class="mb-3 me-2 mb-md-0 text-body-secondary text-decoration-none lh-1">
                            <svg class="bi" width="30" height="24">
                                <use xlink:href="#bootstrap"></use>
                            </svg>
                        </a>
                        <span class="mb-3 mb-md-0 text-body-secondary">© 2023 Company, Inc</span>
                    </div>

                    <ul class="nav col-md-4 justify-content-end list-unstyled d-flex">
                        <li class="ms-3"><a class="text-body-secondary" href="#"><i class="fa fa-facebook-official"
                                    aria-hidden="true"></i></a></li>
                        <li class="ms-3"><a class="text-body-secondary" href="#"><i class="fa fa-twitter"
                                    aria-hidden="true"></i></a>
                        </li>
                        <li class="ms-3"><a class="text-body-secondary" href="#"><i class="fa fa-google"
                                    aria-hidden="true"></i></a>
                        </li>
                    </ul>
                </div>
            </div>
        </footer>
    </div>
</template>
  
<script>
import navbar from '../components/navbar.vue';
export default {
    name: 'default',
    components: {
        navbar
    },
    data() {
        return {
            show: false
        }
    },
    async beforeMount() {
        var authUser = await this.getAuthUser();
        if (authUser && authUser.status == 200) {
            this.show = true;
        }
        else {
            this.show = false;
            this.$router.push('/login');
            // this.e(authUser.message);
        }
    }
}
</script>

<style></style>
  