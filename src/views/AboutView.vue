<template>
  <div class="about center-items">
    <h1>This is an about page</h1>
    <h3>To use these global constants in components <b>template</b></h3>
    <span> for string sample use ==> <code> $constants('title') </code> </span>
    <span> for array sample use ==> <code> $constants('sampleArray')[0] </code> </span>
    <span> for simpleString use ==> <code> $constants('sampleObject').name </code> </span>
    <h3>To use these global constants in components <b>script</b></h3>
    <span><code> import { getCurrentInstance } from 'vue' </code></span>
    <span><code> const app = getCurrentInstance() </code></span>
    <span
      ><code
        ><nobr> const constants = app.appContext.config.globalProperties.$constants </nobr></code
      ></span
    >
    <span><code>console.log(constants('simpleString'))</code></span>
  </div>
</template>

<style>
@media (min-width: 1024px) {
  .about {
    min-height: 100vh;
    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: center;
  }
}
</style>
