import { ref } from 'vue';

export function useSidebar() {
  const isOpen = ref(true);

  const toggleSidebar = () => {
    isOpen.value = !isOpen.value;
  };

  return {
    isOpen,
    toggleSidebar,
  };
}