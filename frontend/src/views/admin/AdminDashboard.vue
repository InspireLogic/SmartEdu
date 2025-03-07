<template>
  <div data-aos="fade-up" class="flex min-h-screen">
    <main class="flex-1 px-8">
      <h1 data-aos="fade-left" class="text-3xl font-bold mx-auto p-4 text-gray-800 py-6">Funcionários</h1>
      <div class="rounded-xl  shadow-md shadow-300">
        <table class="rounded-xl w-full border-collapse bg-white">
          <thead>
            <tr class=" bg-gray-300 text-gray-800 text-md">
              <th class="p-5 text-left rounded-tl-lg">Matrícula</th>
              <th class="p-5 text-left">Nome</th>
              <th class="p-5 text-left">Cargo</th>
              <th class="p-5 text-left">Status do Curso</th>
              <th class="p-5 text-center rounded-tr-lg">Mais detalhes</th>
            </tr>
          </thead>
          <tbody>
            <tr v-for="task in tasks" :key="task.id" class="border-b border-gray-200 text-md text-gray-900 cursor-pointer
              hover:scale-101 duration-300 ease-linear transition-shadow-2xl hover:text-black hover:bg-gray-300">
              <td class="p-4">{{ task.matricula }}</td>
              <td class="p-4">{{ task.client }}</td>
              <td class="p-4">{{ task.title }}</td>
              <td class="p-4">
                <span :class="task.completed
                  ? 'bg-green-200 text-gray-800 px-3 py-1 rounded-lg'
                  : 'bg-red-200 text-gray-800 px-3 py-1 rounded-lg'">
                  {{ task.completed ? 'Concluído' : 'Em andamento' }}
                </span>
              </td>
              <td class="p-4 text-c">
                  <img  @click="openDetails(task)"  src="/icons/see.svg" alt="Ícone" class="w-7 h-7 mx-auto rounded-full m-2" />
              </td>
            </tr>
          </tbody>
        </table>
      </div>

      <!-- Modal de Detalhes -->
      <DetailsModal v-if="selectedTask" :task="selectedTask" @close="selectedTask = null" />
    </main>
  </div>
</template>

<script setup>
import { ref } from "vue";
import DetailsModal from "./DetailsModal.vue"; // Importando o modal

const tasks = ref([
  { id: 1, matricula: "2023101", client: "Luana Mendes", title: "Analista de Dados", completed: false },
  { id: 2, matricula: "2023102", client: "Rafael Costa", title: "Gerente de Projetos", completed: true },
  { id: 3, matricula: "2023103", client: "Isabela Nunes", title: "Desenvolvedor Front-end", completed: false },
  { id: 4, matricula: "2023104", client: "Pedro Alves", title: "Coordenador de Marketing", completed: true },
  { id: 5, matricula: "2023105", client: "Clara Santos", title: "Especialista em RH", completed: true },
  { id: 6, matricula: "2023106", client: "Marcelo Ribeiro", title: "Analista de Sistemas", completed: false },
  { id: 7, matricula: "2023107", client: "Ana Beatriz", title: "Assistente Administrativo", completed: true },
  { id: 8, matricula: "2023108", client: "Diego Lima", title: "Engenheiro de Software", completed: false },
  { id: 9, matricula: "2023109", client: "Fernanda Gomes", title: "Gerente de Vendas", completed: true },
  { id: 10, matricula: "2023110", client: "Gustavo Vieira", title: "Consultor Financeiro", completed: false }
]);

const selectedTask = ref(null);

const openDetails = (task) => {
  selectedTask.value = task;
};
</script>
