<script setup>
import { computed } from 'vue'
import { useRouter } from 'vue-router'

const defaultLayout = 'default'

const { currentRoute } = useRouter()

const layout = computed(function() {
  return `${currentRoute.value.meta.layout || defaultLayout}-layout`
})
</script>

<template>
  <component :is="layout">
    <router-view />
  </component>
</template>
