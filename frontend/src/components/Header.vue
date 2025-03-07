<script setup lang="ts">
import { ref } from 'vue'

const dropdownOpen = ref(false)

</script>

<template>
  <header class="flex justify-around pr-30 py-5 bg-gray-900">
    <div class="flex items-center gap-10">
      <!-- <button class="text-gray-500 lg:hidden px-10" @click="isOpen = true">
        <svg class="w-6 h-6" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
          <path d="M4 6H20M4 12H20M4 18H11" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
        </svg>
      </button> -->
      
      <div class="relative">
        <span class="absolute inset-y-0 left-0 flex items-center pl-3">
          <img src="/icons/search.svg" alt="Dashboard" class="w-6 h-6" />
        </span>
        <input class="w-32 sm:w-64 px-10 py-2 bg-gray-300 rounded-full focus:ring-amber-400" type="text" placeholder="Pesquisar">
      </div>
    </div>
    
    <div class="flex items-center gap-10">
      <button class="text-gray-600">
        <svg class="w-8 h-8" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
          <path d="M15 17H20L18.6 15.6C18.2 15.2 18 14.7 18 14.2V11C18 8.4 16.3 6.2 14 5.3V5C14 3.9 13.1 3 12 3C10.9 3 10 3.9 10 5V5.3C7.7 6.2 6 8.4 6 11V14.2C6 14.7 5.8 15.2 5.4 15.6L4 17H9M15 17V18C15 19.7 13.7 21 12 21C10.3 21 9 19.7 9 18V17M15 17H9" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
        </svg>
      </button>
      
      <div class="relative">
        <button class="w-10 h-10 shadow-xl rounded-full" @click="dropdownOpen = !dropdownOpen">
          <img class="object-cover rounded-full w-full h-full" src="https://images.unsplash.com/photo-1528892952291-009c663ce843?auto=format&fit=crop&w=296&q=80" alt="Avatar">
        </button>
        
        <transition enter-active-class="transition duration-150 ease-out transform" enter-from-class="scale-95 opacity-0" enter-to-class="scale-100 opacity-100" leave-active-class="transition duration-150 ease-in transform" leave-from-class="scale-100 opacity-100" leave-to-class="scale-95 opacity-0">
          <div v-show="dropdownOpen" class="text-lg absolute right-0 p-3 mt-2 w-48 bg-gray-200 rounded-xl shadow-xl text-center z-100">
            <a href="#" class="block px-4 py-2 text-gray-700 hover:bg-gray-600 hover:text-white rounded-full">Profile</a>
            <a href="#" class="block px-4 py-2 text-gray-700 hover:bg-gray-600 hover:text-white rounded-full">Products</a>
            <router-link to="/" class="block px-4 py-2 text-gray-700 hover:bg-gray-600 hover:text-white rounded-full">Log out</router-link>
          </div>
        </transition>
      </div>
    </div>
  </header>
</template>
