import { createRouter, createWebHistory } from 'vue-router';
import authRoutes from './authRoutes';
import adminRoutes from './adminRoutes';
import clientRoutes from './clientRoutes';
import sharedRoutes from './sharedRoutes';
import NotFound from '../views/NotFound.vue'; // Crie essa página

// Combina todas as rotas
const routes = [
  ...authRoutes,
  ...adminRoutes,
  ...clientRoutes,
  ...sharedRoutes,
  {
    path: '/:pathMatch(.*)*',
    name: 'NotFound',
    component: NotFound,
    meta: { layout: 'empty' } // Define o layout como 'empty'
  }
];

const router = createRouter({
  history: createWebHistory(),
  routes,
});

// Guard de rota global
router.beforeEach((to, from, next) => {
  const isAuthenticated = true; // Simulação de autenticação (em um cenário real, verifique o token)
  const userRole = localStorage.getItem('userRole'); // Obtém o papel do usuário do localStorage

  if (to.meta.requiresAuth && !isAuthenticated) {
    next('/login'); // Redireciona para a página de login se não estiver autenticado
  } else if (to.meta.role && to.meta.role !== userRole) {
    next('/unauthorized'); // Redireciona para uma página de "não autorizado" se o role não corresponder
  } else {
    next(); // Permite o acesso à rota
  }
});

export default router;