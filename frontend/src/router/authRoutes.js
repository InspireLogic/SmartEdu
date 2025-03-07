import Login from '../views/auth/Login.vue'

const authRoutes = [
  {
    path: '/',
    redirect: '/login', // Redireciona a raiz para a página de login
  },
  {
    path: '/login',
    name: 'Login',
    component: Login,
    meta: { layout: 'empty' }, // Usa o EmptyLayout
  },
];

export default authRoutes;