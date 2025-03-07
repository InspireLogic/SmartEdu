<template>
  <div class="bg-white rounded-lg shadow-md overflow-hidden">
    <img :src="course.image" :alt="course.title" class="w-full h-48 object-cover">
    <div class="p-4">
      <h3 class="text-xl font-semibold mb-2">{{ course.title }}</h3>
      <p class="text-gray-600 mb-4">{{ course.description }}</p>
      <div class="flex justify-between items-center">
        <span class="text-sm text-gray-500">{{ course.status }}</span>
        <button class="bg-blue-500 text-white px-4 py-2 rounded hover:bg-gray-600">
          {{ course.status === 'Em andamento' ? 'Continuar' : 'Assistir' }}
        </button>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  props: {
    course: {
      type: Object,
      required: true
    }
  }
}
</script>