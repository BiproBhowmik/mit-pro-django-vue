<template>
  <nav class="navbar navbar-expand-lg navbar-light bg-light">
    <div class="container-fluid">
      <a class="navbar-brand" href="#">Navbar</a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
        aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav">
          <li class="nav-item">
            <a class="nav-link active" aria-current="page" href="#">Home</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">Features</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">Pricing</a>
          </li>
          <li class="nav-item">
            <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">Disabled</a>
          </li>
          <li class="nav-item">
            <Button @click="logout()" type="error">Logout</Button>
          </li>
        </ul>
      </div>
    </div>
  </nav>
</template>

<script>
import { getToken, removeToken } from '.././tokenService'; // Import your token service

export default {
  name: 'navbar',
  data() {
    return {
    }
  },
  methods: {
    async logout() {
      removeToken(getToken());

      const res = await this.callApiTokenLess(
        "get",
        "/auth/logout/"
      );
      if (res.status == 200) {
        this.$router.push('/login');
      }
    }
  },

  mounted() {
  }
}
</script>

<style scoped></style>