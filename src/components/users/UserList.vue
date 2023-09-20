<template>
  <div class="center-items">
    <h1>Users List</h1>
    <ul style="text-align: left">
      <li v-for="user in userList" :key="user.id" style="list-style-type: none">
        <RouterLink :to="{ name: 'user', params: { userId: user.id } }">{{ user.name }}</RouterLink>
      </li>
    </ul>
  </div>
</template>

<script setup>
import { ref, onMounted } from 'vue'
import { getUsers } from './users.api'

const userList = ref([])

const fetchUsers = async () => {
  try {
    const response = await getUsers()
    userList.value = response.data
  } catch (error) {
    console.error('Error fetching user data:', error)
  }
}

onMounted(() => {
  fetchUsers()
})
</script>
