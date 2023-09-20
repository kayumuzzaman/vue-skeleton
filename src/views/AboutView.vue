<template>
  <div class="about">
    <h1>This is an about page</h1>
  </div>
</template>

<style>
.about {
  line-height: 1.5;
  max-height: 100vh;
  text-align: center;
  margin-top: 2rem;
}

@media (min-width: 1024px) {
  .about {
    min-height: 100vh;
    display: flex;
    align-items: center;
  }
}
</style>
