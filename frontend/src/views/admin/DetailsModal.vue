<template>
  <!-- Fundo escuro com desfoque -->
  <div data-aos="fade-up" class="fixed inset-0 z-20 bg-gray-200 bg-opacity-50 backdrop-blur-md">
    <div class="p-8 bg-gray-200 min-h-screen rounded-xl h-full">
      <div class="flex justify-between items-center">
        <h1 class="text-3xl font-bold text-gray-800 mb-8">Dashboard de Desempenho</h1>

        <button
          class="relative inline-block font-medium group py-2 px-3 transition-transform duration-400 ease-out transform mb-3"
          @click="emit('close')">
          <span
            class="absolute inset-0 w-full h-full transition duration-400 ease-out transform bg-gray-600 scale-100 translate-x-0 translate-y-0 group-hover:scale-105 group-hover:translate-x-1 group-hover:translate-y-1">
          </span>
          <span class="absolute inset-0 w-full h-full bg-white border border-gray-600"></span>
          <span class="relative text-gray-600 text-lg">Voltar</span>
        </button>
      </div>

      <!-- Informações do Funcionário -->
      <div data-aos="fade-left" class="bg-white p-6 rounded-lg shadow-md mb-8">
        <h2 class="text-xl font-semibold text-gray-700 mb-4">Informações do Funcionário</h2>
        <div class="grid grid-cols-1 md:grid-cols-3 gap-4">
          <div>
            <p class="text-gray-600">Nome:</p>
            <p class="text-gray-800 font-medium">João Silva</p>
          </div>
          <div>
            <p class="text-gray-600">Cargo:</p>
            <p class="text-gray-800 font-medium">Desenvolvedor Front-end</p>
          </div>
          <div>
            <p class="text-gray-600">Departamento:</p>
            <p class="text-gray-800 font-medium">Tecnologia</p>
          </div>
        </div>
      </div>

      <div class="flex gap-8">
        <!-- Gráfico de Desempenho Mensal -->
        <div class="bg-white p-6 rounded-lg shadow-md mb-8 w-xl mx-auto">
          <h2 class="text-xl font-semibold text-gray-700 mb-4">Desempenho por Módulo</h2>
          <div class="flex items-end gap-4 h-64 border border-gray-300 p-4">
            <div v-for="(bar, index) in performanceData" :key="index" class="flex-1 flex flex-col items-center">
              <div data-aos="fade-up" class="w-10 bg-blue-500 transition-all duration-500"
                :style="`height: ${(bar.value / 100) * 180}px`"></div>

              <p class="text-gray-600 mt-2">{{ bar.month }}</p>
            </div>
          </div>
        </div>
        <!-- Métricas de Desempenho -->
        <div class="bg-white p-6 rounded-lg shadow-md mb-8 flex-1">
          <h2 class="text-xl font-semibold text-gray-700 mb-4">Métricas de Desempenho</h2>
          <div class="grid grid-cols-1 gap-2">
            <div class="bg-blue-50 p-4 rounded-lg">
              <p class="text-gray-600">Rendimento do curso</p>
              <p class="text-2xl font-bold text-blue-600">85%</p>
            </div>
            <div class="bg-green-50 p-4 rounded-lg">
              <p class="text-gray-600">Média</p>
              <p class="text-2xl font-bold text-green-600">92%</p>
            </div>
            <div class="bg-yellow-50 p-4 rounded-lg">
              <p class="text-gray-600">Feedback Positivo</p>
              <p class="text-2xl font-bold text-yellow-600">88%</p>
            </div>
            <!-- <div class="bg-red-50 p-4 rounded-lg">
              <p class="text-gray-600">Atrasos</p>
              <p class="text-2xl font-bold text-red-600">5%</p>
            </div> -->
          </div>
        </div>

      </div>

    </div>
  </div>
</template>

<script lang="ts">
export default {
  name: 'Dashboard',
};
</script>

<script setup lang="ts">
import { ref } from 'vue';

defineProps<{
  task: {
    id: number;
    title: string;
  };
}>();

const emit = defineEmits(['close']);

const performanceData = ref([
  { month: 'M - 1', value: 40 },
  { month: 'M - 2', value: 70 },
  { month: 'M - 3', value: 60 },
  { month: 'M - 4', value: 85 },
  { month: 'M - 5', value: 100 },
  { month: 'M - 6', value: 55 },
  { month: 'M - 7', value: 88 },
]);
</script>
