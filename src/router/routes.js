import HomeView from '../views/HomeView.vue'
import UserDetails from '../components/users/UserDetails.vue'
import UserList from '../components/users/UserList.vue'

export default [
  {
    path: '/',
    name: 'home',
    component: HomeView
  },
  {
    path: '/about',
    name: 'about',
    component: () => import('../views/AboutView.vue')
  },
  {
    path: '/users',
    name: 'users',
    component: UserList
  },
  {
    path: '/user/:userId',
    name: 'user',
    component: UserDetails,
    props: true
  }
]
