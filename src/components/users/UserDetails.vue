<template>
  <div class="center-items">
    <h1>User Details</h1>
    <div v-if="user">
      <h2>{{ user.name }}</h2>
      <p>Email: {{ user.email }}</p>
      <p>Phone: {{ user.phone }}</p>
    </div>
    <div v-else>
      <p>Loading user data...</p>
    </div>
  </div>
</template>

<script setup>
import { ref, onMounted } from 'vue'
import { getUser } from './users.api'
import { useRoute } from 'vue-router'

const user = ref(null)
const userId = useRoute().params.userId

const fetchUser = async () => {
  try {
    const response = await getUser(userId)
    user.value = response.data
  } catch (error) {
    console.error('Error fetching user data:', error)
  }
}

onMounted(() => {
  fetchUser()
})
</script>
