zz<template>
  <div class="flex h-screen">
    <ClientSidebar />

    <div class="flex-1 flex flex-col overflow-hidden">
      <Header />
      <!--Conteúdo Dinâmico-->
      <main data-aos="fade-up" class="flex-1 overflow-x-hidden overflow-y-auto bg-zinc-200">
        <div class="mx-auto px-2 py-6">
          <div class="container mx-auto p-6">
            <h1 class="text-3xl font-bold mb-8">Meus Cursos</h1>
            <div class="flex gap-10">
              <!-- Seção: Em andamento -->
              <section class="flex-1 mb-12 border border-gray-400 bg-white hover:bg-gray-100 rounded-2xl p-8">
                <div class="flex justify-center gap-8 items-center cursor-pointer group"
                  @click="toggleSection('emAndamento')">
                  <h2
                    class="text-2xl font-semibold text-gray-800 group-hover:text-blue-600 transition-colors duration-200 pb-1">
                    Em andamento
                  </h2>
                  <span class="text-gray-600 transform transition-transform duration-300"
                    :class="{ 'rotate-180': isSectionOpen.emAndamento }">
                    {{ isSectionOpen.emAndamento ? '▲' : '▼' }}
                  </span>
                </div>
                <div class="overflow-hidden transition-all duration-500 ease-in-out" :style="{
                  maxHeight: isSectionOpen.emAndamento ? `${contentHeight.emAndamento}px` : '0',
                  opacity: isSectionOpen.emAndamento ? '1' : '0'
                }" ref="emAndamentoContent">
                  <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-10 mt-4">
                    <div v-for="course in cursosEmAndamento" :key="course.id" class="relative">
                      <CourseCard :course="course" />
                      <!-- Barra de progresso -->
                      <div class="w-full bg-gray-200 rounded-full h-2 mt-4">
                        <div class="bg-blue-600 h-2 rounded-full" :style="{ width: `${course.progress}%` }"></div>
                      </div>
                    </div>
                  </div>
                </div>

              </section>
              <!-- <div class="bg-gray-200 border border-gray-300 rounded-2xl p-10">
                <h1 class="text-3xl font-bold mb-8">Progresso geral</h1>
                <div class="relative w-34 h-34 mx-auto">
                  <div class="absolute w-full h-full rounded-full bg-gradient-to-r from-blue-500 to-green-500"></div>
                  <div
                    class="absolute w-20 h-20 rounded-full bg-white top-1/2 left-1/2 transform -translate-x-1/2 -translate-y-1/2">
                  </div>
                  <div class="absolute w-full h-full flex justify-center items-center">
                    <span class="text-2xl font-bold">75%</span>
                  </div>
                </div>
              </div> -->
            </div>

            <!-- Seção: Concluídos -->
            <section class="mb-12 border border-gray-400 bg-white hover:bg-gray-200 rounded-2xl p-8">
              <div class="flex justify-center gap-8 items-center cursor-pointer group"
                @click="toggleSection('concluidos')">
                <h2
                  class="text-2xl font-semibold text-gray-800 group-hover:text-blue-600 transition-colors duration-200 pb-1">
                  Concluídos
                </h2>
                <span class="text-gray-600 transform transition-transform duration-200"
                  :class="{ 'rotate-180': isSectionOpen.concluidos }">
                  {{ isSectionOpen.concluidos ? '▲' : '▼' }}
                </span>
              </div>
              <div class="overflow-hidden transition-all duration-500 ease-in-out" :style="{
                maxHeight: isSectionOpen.concluidos ? `${contentHeight.concluidos}px` : '0',
                opacity: isSectionOpen.concluidos ? '1' : '0'
              }" ref="concluidosContent">
                <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-10 mt-4">
                  <CourseCard v-for="course in cursosConcluidos" :key="course.id" :course="course" />
                </div>
              </div>
            </section>

            <!-- Seção: A iniciar -->
            <section class="mb-12 border border-gray-400 bg-white hover:bg-gray-200 rounded-2xl p-8">
              <div class="flex justify-center gap-8 items-center cursor-pointer group"
                @click="toggleSection('aIniciar')">
                <h2
                  class="text-2xl font-semibold text-gray-800 group-hover:text-blue-600 transition-colors duration-200 pb-1">
                  A iniciar
                </h2>
                <span class="text-gray-600 transform transition-transform duration-200"
                  :class="{ 'rotate-180': isSectionOpen.aIniciar }">
                  {{ isSectionOpen.aIniciar ? '▲' : '▼' }}
                </span>
              </div>
              <div class="overflow-hidden transition-all duration-500 ease-in-out" :style="{
                maxHeight: isSectionOpen.aIniciar ? `${contentHeight.aIniciar}px` : '0',
                opacity: isSectionOpen.aIniciar ? '1' : '0'
              }" ref="aIniciarContent">
                <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-10 mt-4">
                  <CourseCard v-for="course in cursosAIniciar" :key="course.id" :course="course" />
                </div>
              </div>
            </section>
          </div>
        </div>
      </main>
    </div>
  </div>

</template>

<script>
import Header from '../../components/Header.vue';
import ClientSidebar from './ClientSidebar.vue';
import CourseCard from './CourseCard.vue';

export default {
  components: {
    CourseCard,
    ClientSidebar,
    Header
  },
  data() {
    return {
      isSectionOpen: {
        emAndamento: true,
        concluidos: true,
        aIniciar: true,
      },
      contentHeight: {
        emAndamento: 0,
        concluidos: 0,
        aIniciar: 0,
      },
      cursos: [
        // Cursos em andamento
        {
          id: 1,
          title: 'Curso de Vue.js',
          description: 'Aprenda Vue.js do zero ao avançado.',
          image: '/vue.png',
          status: 'Em andamento',
          progress: 60, // Progresso em porcentagem
        },
        {
          id: 2,
          title: 'Curso de React',
          description: 'Aprenda React e do zero.',
          image: '/react.png',
          status: 'Em andamento',
          progress: 30, // Progresso em porcentagem
        },
        {
          id: 3,
          title: 'Curso de Tailwind CSS',
          description: 'Domine o Tailwind CS.',
          image: '/tailwind.png',
          status: 'Em andamento',
          progress: 80, // Progresso em porcentagem
        },
        {
          id: 4,
          title: 'Curso de Node.js',
          description: 'Aprenda backend.',
          image: '/node.png',
          status: 'Em andamento',
          progress: 80,
        },
        {
          id: 5,
          title: 'Curso de TypeScript',
          description: 'Aprenda TypeScript.',
          image: '/typescript.jpg',
          status: 'Em andamento',
          progress: 80,
        },
        {
          id: 6,
          title: 'Curso de Python',
          description: 'Domine Python.',
          image: '/python.png',
          status: 'Em andamento',
          progress: 80,
        },
        {
          id: 7,
          title: 'Curso de Flutter',
          description: 'Desenvolva apps mobile.',
          image: '/flutter.png',
          status: 'Em andamento',
          progress: 80,
        },

        // Cursos concluídos
        {
          id: 11,
          title: 'Curso de HTML e CSS',
          description: 'Crie páginas web.',
          image: '/html.png',
          status: 'Concluído',
        },
        {
          id: 12,
          title: 'Curso de JavaScript',
          description: 'Domine JavaScript.',
          image: '/js.png',
          status: 'Concluído',
        },
        {
          id: 13,
          title: 'Curso de Git e GitHub',
          description: 'Aprenda a versionar seu código.',
          image: '/git.png',
          status: 'Concluído',
        },
        {
          id: 14,
          title: 'Curso de SQL',
          description: 'Domine SQL.',
          image: '/sql.png',
          status: 'Concluído',
        },
        {
          id: 15,
          title: 'Curso de UX/UI Design',
          description: 'Aprenda a criar interfaces intuitivas e bonitas.',
          image: '/ux-ui.png',
          status: 'Concluído',
        },
        {
          id: 16,
          title: 'Curso de Figma',
          description: 'Domine o Figma para design de interfaces.',
          image: '/figma.png',
          status: 'Concluído',
        },

        // Cursos a iniciar
        {
          id: 21,
          title: 'Curso de Machine Learning',
          description: 'Aprenda os fundamentos de Machine Learning.',
          image: '/ml.png',
          status: 'A iniciar',
        },
        {
          id: 22,
          title: 'Curso de AWS',
          description: 'Domine a nuvem da Amazon Web Services.',
          image: '/aws.png',
          status: 'A iniciar',
        },
        {
          id: 23,
          title: 'Curso de Kubernetes',
          description: 'Aprenda a orquestrar containers com Kubernetes.',
          image: '/kubernetes.png',
          status: 'A iniciar',
        },
        {
          id: 24,
          title: 'Curso de Rust',
          description: 'Aprenda Rust, a linguagem de programação moderna.',
          image: '/rust.png',
          status: 'A iniciar',
        },
        {
          id: 25,
          title: 'Curso de Blockchain',
          description: 'Aprenda os fundamentos de Blockchain.',
          image: '/blockchain.png',
          status: 'A iniciar',
        },
      ],
    };
  },
  computed: {
    cursosEmAndamento() {
      return this.cursos.filter((curso) => curso.status === 'Em andamento');
    },
    cursosConcluidos() {
      return this.cursos.filter((curso) => curso.status === 'Concluído');
    },
    cursosAIniciar() {
      return this.cursos.filter((curso) => curso.status === 'A iniciar');
    },
  },
  methods: {
    toggleSection(section) {
      this.isSectionOpen[section] = !this.isSectionOpen[section];
      this.$nextTick(() => {
        this.calculateContentHeight(section);
      });
    },
    calculateContentHeight(section) {
      if (this.isSectionOpen[section]) {
        this.contentHeight[section] = this.$refs[`${section}Content`].scrollHeight;
      } else {
        this.contentHeight[section] = 0;
      }
    },
  },
  mounted() {
    // Calcular a altura inicial do conteúdo
    this.calculateContentHeight('emAndamento');
    this.calculateContentHeight('concluidos');
    this.calculateContentHeight('aIniciar');
  },
};
</script>
