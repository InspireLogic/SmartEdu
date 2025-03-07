<template>
  <div data-aos="fade-up" class="min-h-screen rounded-xl lg:px-5">

    <h1 data-aos="fade-right" class="text-3xl font-bold mx-auto px-8 text-gray-800 py-6">Fórum de Perguntas</h1>

    <!-- Conteúdo Principal -->
    <main class="container mx-auto flex gap-8 px-4">
      <!-- Lista de Perguntas -->
      <div class="flex-1">
        <!-- Pergunta 1 -->
        <div
          class="bg-white p-6 rounded-xl shadow-sm hover:shadow-md hover:scale-102 duration-300 ease-linear transition-shadow-2xl mb-6">
          <div class="flex items-center mb-4">
            <div class="text-gray-600 mr-6">
              <span class="block text-center text-lg font-semibold">15</span>
              <span class="text-sm text-gray-500">votos</span>
            </div>
            <div class="text-gray-600 mr-6">
              <span class="block text-center text-lg font-semibold">5</span>
              <span class="text-sm text-gray-500">respostas</span>
            </div>
            <div class="text-gray-600">
              <span class="block text-center text-lg font-semibold">120</span>
              <span class="text-sm text-gray-500">visualizações</span>
            </div>
          </div>
          <h2 class="text-xl font-semibold text-gray-800 mb-2 hover:text-blue-600 transition-colors">
            Como usar Vue.js com Tailwind CSS?
          </h2>
          <p class="text-gray-500 mb-4">Por <span class="text-gray-700 font-medium">João Silva</span></p>
          <div class="flex space-x-2">
            <span class="bg-gray-100 text-gray-700 text-sm px-3 py-1 rounded-full">vuejs</span>
            <span class="bg-gray-100 text-gray-700 text-sm px-3 py-1 rounded-full">tailwindcss</span>
          </div>
        </div>

        <!-- Pergunta 2 -->
        <div class="bg-white p-6 rounded-xl shadow-sm hover:shadow-md transition-shadow mb-6">
          <div class="flex items-center mb-4">
            <div class="text-gray-600 mr-6">
              <span class="block text-center text-lg font-semibold">10</span>
              <span class="text-sm text-gray-500">votos</span>
            </div>
            <div class="text-gray-600 mr-6">
              <span class="block text-center text-lg font-semibold">3</span>
              <span class="text-sm text-gray-500">respostas</span>
            </div>
            <div class="text-gray-600">
              <span class="block text-center text-lg font-semibold">90</span>
              <span class="text-sm text-gray-500">visualizações</span>
            </div>
          </div>
          <h2 class="text-xl font-semibold text-gray-800 mb-2 hover:text-blue-600 transition-colors">
            Qual a melhor forma de aprender JavaScript?
          </h2>
          <p class="text-gray-500 mb-4">Por <span class="text-gray-700 font-medium">Maria Oliveira</span></p>
          <div class="flex space-x-2">
            <span class="bg-gray-100 text-gray-700 text-sm px-3 py-1 rounded-full">javascript</span>
            <span class="bg-gray-100 text-gray-700 text-sm px-3 py-1 rounded-full">learning</span>
          </div>
        </div>
        <!-- Pergunta 1 -->
        <div class="bg-white p-6 rounded-xl shadow-sm hover:shadow-md transition-shadow mb-6">
          <div class="flex items-center mb-4">
            <div class="text-gray-600 mr-6">
              <span class="block text-center text-lg font-semibold">15</span>
              <span class="text-sm text-gray-500">votos</span>
            </div>
            <div class="text-gray-600 mr-6">
              <span class="block text-center text-lg font-semibold">5</span>
              <span class="text-sm text-gray-500">respostas</span>
            </div>
            <div class="text-gray-600">
              <span class="block text-center text-lg font-semibold">120</span>
              <span class="text-sm text-gray-500">visualizações</span>
            </div>
          </div>
          <h2 class="text-xl font-semibold text-gray-800 mb-2 hover:text-blue-600 transition-colors">
            Como usar Vue.js com Tailwind CSS?
          </h2>
          <p class="text-gray-500 mb-4">Por <span class="text-gray-700 font-medium">João Silva</span></p>
          <div class="flex space-x-2">
            <span class="bg-gray-100 text-gray-700 text-sm px-3 py-1 rounded-full">vuejs</span>
            <span class="bg-gray-100 text-gray-700 text-sm px-3 py-1 rounded-full">tailwindcss</span>
          </div>
        </div>

        <!-- Pergunta 2 -->
        <div class="bg-white p-6 rounded-xl shadow-sm hover:shadow-md transition-shadow mb-6">
          <div class="flex items-center mb-4">
            <div class="text-gray-600 mr-6">
              <span class="block text-center text-lg font-semibold">10</span>
              <span class="text-sm text-gray-500">votos</span>
            </div>
            <div class="text-gray-600 mr-6">
              <span class="block text-center text-lg font-semibold">3</span>
              <span class="text-sm text-gray-500">respostas</span>
            </div>
            <div class="text-gray-600">
              <span class="block text-center text-lg font-semibold">90</span>
              <span class="text-sm text-gray-500">visualizações</span>
            </div>
          </div>
          <h2 class="text-xl font-semibold text-gray-800 mb-2 hover:text-blue-600 transition-colors">
            Qual a melhor forma de aprender JavaScript?
          </h2>
          <p class="text-gray-500 mb-4">Por <span class="text-gray-700 font-medium">Maria Oliveira</span></p>
          <div class="flex space-x-2">
            <span class="bg-gray-100 text-gray-700 text-sm px-3 py-1 rounded-full">javascript</span>
            <span class="bg-gray-100 text-gray-700 text-sm px-3 py-1 rounded-full">learning</span>
          </div>
        </div>

      </div>

      <!-- Barra Lateral -->
      <div class="w-1/4">
        <div class="bg-white p-6 rounded-xl shadow-sm">
          <h3 class="text-lg font-semibold text-gray-800 mb-4">Estatísticas</h3>
          <ul class="space-y-3">
            <li class="text-gray-600">
              <span class="font-medium">Perguntas:</span> 123
            </li>
            <li class="text-gray-600">
              <span class="font-medium">Respostas:</span> 456
            </li>
            <li class="text-gray-600">
              <span class="font-medium">Usuários:</span> 789
            </li>
          </ul>
        </div>
      </div>
    </main>
  </div>
</template>

<script>
export default {
  name: "Forum",
};
</script>