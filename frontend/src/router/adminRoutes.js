import AdminDashboard from '../views/admin/AdminDashboard.vue';
import Forum from '../views/admin/Forum.vue';

const adminMeta = { layout: 'default', requiresAuth: true, role: 'admin' };

const adminRoutes = [
  {
    path: '/admin/admin-dashboard',
    name: 'Dashboard',
    component: AdminDashboard,
    meta: adminMeta,
  },
  {
    path: '/admin/forum',
    name: 'Forum',
    component: Forum,
    meta: adminMeta,
  },
];

export default adminRoutes;