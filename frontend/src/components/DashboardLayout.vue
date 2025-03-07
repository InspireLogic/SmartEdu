<script setup>
import Sidebar from './Sidebar.vue'
import Header from './Header.vue'
</script>

<template>
  <div class="flex h-screen">
    <Sidebar />

    <div class="flex-1 flex flex-col overflow-hidden">
      <Header />
      <!--Conteúdo Dinâmico-->
      <main class="flex-1 overflow-x-hidden overflow-y-auto bg-gray-200">
        <div class="mx-auto px-2 py-6">
          <slot />
        </div>
      </main>
    </div>
  </div>
</template>

