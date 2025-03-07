<script setup>
import { ref } from 'vue'
import { useSidebar } from '../utils/useSidebar'

const { isOpen, toggleSidebar } = useSidebar()
const activeClass = ref('bg-rose-500 bg-opacity-25 text-white border-white py-5')
const inactiveClass = ref('border-gray-800 text-gray-500 hover:bg-gray-200 hover:bg-opacity-25 hover:text-gray-700')

const routes = ref([
  { name: 'Dashboard', path: '/admin/admin-dashboard', icon: '/icons/3.svg' },
  { name: 'Forum', path: '/admin/forum', icon: '/icons/2.svg' },
])
</script>

<template>
  <div class="flex min-h-screen">
    <!-- Sidebar -->
    <div
      :class="[
        'w-64 bg-gray-900 transition-all duration-300 ease-in-out',
        isOpen ? 'translate-x-0' : '-translate-x-full'
      ]"
      class="flex-shrink-0 fixed inset-y-0 left-0 z-30"
    >
      <div class="flex items-center justify-center mt-8">
        <span class="text-xl font-semibold text-white">SmartEdu</span>
      </div>

      <nav class="mt-10">
        <router-link
          v-for="route in routes"
          :key="route.name"
          class="flex items-center px-6 py-2 mt-4 duration-200 border-l-4"
          :class="$route.name === route.name ? activeClass : inactiveClass"
          :to="route.path"
        >
          <img :src="route.icon" alt="Ícone" class="w-7 h-7" />
          <span class="mx-4">{{ route.name }}</span>
        </router-link>
      </nav>
    </div>

    <!-- Conteúdo principal -->
    <div
      class="flex-1 transition-all duration-300 ease-in-out"
      :style="{ 'margin-left': isOpen ? '16rem' : '0' }"
    >
      <slot></slot>
    </div>

    <!-- Botão para abrir/fechar a sidebar -->
    <button
      @click="toggleSidebar"
      class="fixed bottom-4 left-4 z-40 p-2 text-white bg-gray-800 rounded"
    >
      <svg xmlns="http://www.w3.org/2000/svg" class="h-6 w-6" fill="none" viewBox="0 0 24 24" stroke="currentColor">
        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M4 6h16M4 12h16M4 18h16" />
      </svg>
    </button>
  </div>
</template>