<script setup>
import { useCounterStore } from '../stores/counter'
import { storeToRefs } from 'pinia'

const { count } = storeToRefs(useCounterStore())
const { increment, decrement } = useCounterStore()
</script>

<template>
  <div class="counter center-items">
    <button @click.prevent="decrement">Decrement</button>
    <h1>{{ count }}</h1>
    <button @click.prevent="increment">Increment</button>
  </div>
</template>

<style scoped>
@media (min-width: 1024px) {
  .counter {
    min-height: 100vh;
    display: flex;
    align-items: center;
  }
}
</style>
