import ClientDashboard from '../views/client/ClientDashboard.vue'
import Questions from '../views/client/Questions.vue';

const clientMeta = { layout: 'empty', requiresAuth: true, role: 'client' };

const clientRoutes = [
  {
    path: '/client/client-dashboard',
    name: 'Cursos',
    component: ClientDashboard,
    meta: clientMeta,
  },
  {
    path: '/client/questions',
    name: 'Perguntas',
    component: Questions,
    meta: clientMeta,
  },
];

export default clientRoutes;