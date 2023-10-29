<template>
  <div class="container-fluid">
    <div class="row ">
      <!-- IMAGE CONTAINER BEGIN -->
      <div class="col-lg-6 col-md-6 d-none d-md-block infinity-image-container"></div>
      <!-- IMAGE CONTAINER END -->

      <!-- FORM CONTAINER BEGIN -->
      <div class="col-lg-6 col-md-6 infinity-form-container">
        <div class="col-lg-9 col-md-12 col-sm-9 col-xs-12 infinity-form">
          <!-- Company Logo -->
          <div class="text-center mb-3 mt-5">
            <img style="width: 150px;" src="assets/images/medical-logo.png" width="150px">
          </div>
          <div class="text-center mb-4">
            <h4>Login into your account</h4>
          </div>
          <!-- Form -->
          <form class="px-3">
            <!-- Input Box -->
            <div class="form-input">
              <span><i class="fa fa-user"></i></span>
              <input v-model="user.username" type="text" name="" placeholder="UserName" tabindex="10" required>
            </div>
            <div class="form-input">
              <span><i class="fa fa-lock"></i></span>
              <input v-model="user.password" type="password" name="" placeholder="Password" required>
            </div>
            <div class="row mb-3">
              <!-- Remember Checkbox -->
              <div class="col-auto d-flex align-items-center">
                <div class="custom-control custom-checkbox">
                  <input type="checkbox" class="custom-control-input" id="cb1">
                  <label class="custom-control-label text-white" for="cb1">Remember me</label>
                </div>
              </div>
            </div>
            <!-- Login Button -->
            <div class="mb-3">
              <button @click.prevent="login()" type="submit" class="btn btn-block">Login</button>
            </div>
            <!-- <div class="text-right ">
              <a href="reset.html" class="forget-link">Forgot password?</a>
            </div>
            <div class="text-center mb-2">
              <div class="text-center mb-2 text-white">or login with</div>

              <a href="" class="btn btn-social btn-facebook">facebook</a>
              <a href="" class="btn btn-social btn-google">google</a>
              <a href="" class="btn btn-social btn-twitter">twitter</a>
            </div> -->
            <div class="text-center mb-5 text-white">Don't have an account?
              <router-link class="register-link" to="/register">Register here</router-link>
            </div>
          </form>
        </div>
      </div>
      <!-- FORM CONTAINER END -->
    </div>
  </div>
</template>

<script>
import { setToken, getToken, removeToken } from '.././tokenService'; // Import your token service

export default {
  name: 'login',
  data() {
    return {
      user: {
        username: "",
        password: "",
      }
    }
  },
  methods: {
    async login() {
      if (this.hasEmptyOrNullValues(this.user)) {
        this.i('No field should be empty!');
        return;
      }
      removeToken(getToken());
      setToken('token')

      const res = await this.callApiTokenLess(
        "post",
        "/auth/login/",
        this.user
      );

      if (res.status == 200) {
        const token = res.data.token;
        setToken(token);

        this.user = this.clearObjectValues(this.user);
        this.$router.push('/');
      }
    }
  },

  mounted() {
    // const res = this.callApi(
    //             "get",
    //             "/auth/authUser/"
    //           );

    //         console.log(res.data);
  }
}
</script>