const sharedRoutes = [
  {
    path: '/unauthorized',
    name: 'Unauthorized',
    component: () => import('../views/shared/Unauthorized.vue'),
    meta: { layout: 'empty' }, // Usa o EmptyLayout
  },
];

export default sharedRoutes;