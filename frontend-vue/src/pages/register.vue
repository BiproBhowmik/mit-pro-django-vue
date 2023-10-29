<template>
  <div class="container-fluid">
    <div class="row ">
      <!-- IMAGE CONTAINER BEGIN -->
      <div class="col-lg-6 col-md-6 d-none d-md-block infinity-image-container"></div>
      <!-- IMAGE CONTAINER END -->

      <!-- FORM CONTAINER BEGIN -->
      <div class="col-lg-6 col-md-6 infinity-form-container">
        <div class="col-lg-9 col-md-12 col-sm-8 col-xs-12 infinity-form">
          <!-- Company Logo -->
          <div class="text-center mb-3 mt-5">
            <img style="width: 150px;" src="assets/images/medical-logo.png" width="150px">
          </div>
          <div class="text-center mb-4">
            <h4>Create an account</h4>
          </div>
          <!-- Form -->
          <form class="px-3">
            <!-- Input Box -->
            <div class="form-input">
              <span><i class="fa fa-user-o"></i></span>
              <input v-model="user.username" type="text" name="" placeholder="UserName" tabindex="10" required>
            </div>
            <div class="form-input">
              <span><i class="fa fa-envelope-o"></i></span>
              <input v-model="user.email" type="email" name="" placeholder="Email Address" tabindex="10" required>
            </div>
            <div class="form-input">
              <span><i class="fa fa-lock"></i></span>
              <input v-model="user.password" type="password" name="" placeholder="Password" required>
            </div>
            <div class="form-input">
              <span><i class="fa fa-lock"></i></span>
              <input v-model="user.c_password" type="password" name="" placeholder="Confirm Password" required>
            </div>
            <!-- Register Button -->
            <div class="mb-3">
              <button @click.prevent="signup()" type="submit" class="btn btn-block">Register</button>
            </div>
            <!-- <div class="text-center mb-2">
              <div class="text-center mb-2 text-white">or register with</div>
              <a href="" class="btn btn-social btn-facebook">facebook</a>
              <a href="" class="btn btn-social btn-google">google</a>
              <a href="" class="btn btn-social btn-twitter">twitter</a>
            </div> -->
            <div class="text-center mb-5 text-white">Already have an account?
              <router-link class="login-link" to="/login">Login here</router-link>
            </div>
          </form>
        </div>
      </div>
      <!-- FORM CONTAINER END -->
    </div>
  </div>
</template>

<script>
import { getToken, removeToken } from '.././tokenService'; // Import your token service

export default {
  name: 'register',
  data() {
    return {
      user: {
        username: "",
        email: "",
        password: "",
        c_password: "",
      }
    }
  },
  methods: {
    async signup() {
      if (this.hasEmptyOrNullValues(this.user)) {
        this.i('No field should be empty!');
        return;
      }
      removeToken(getToken());

      const res = await this.callApiTokenLess(
        "post",
        "/auth/register/",
        this.user
      );
      if (res.status == 201) {
        this.user = this.clearObjectValues(this.user);
        this.$router.push('/login');
      }
    }
  },

  mounted() {
  }
}
</script>
