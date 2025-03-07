<template>
  <div data-aos="fade-left" class="flex items-center justify-center min-h-screen bg-gray-100">
    <div class="relative flex flex-col m-6 space-y-8 bg-white shadow-2xl rounded-2xl md:flex-row md:space-y-0">
      <!-- Imagem à esquerda -->
      <div class="relative">
        <img :src="image" alt="Imagem" class="w-[470px] h-full hidden rounded-l-2xl md:block object-cover" />
      </div>

      <!-- Formulário de login -->
      <div class="flex flex-col justify-center p-8 md:p-14">
        <span class="mb-3 text-4xl font-bold">Bem-vindo ao SmartEdu</span>
        <span class="font-light text-gray-400 mb-8">
          Por favor, insira seus dados
        </span>

        <div class="py-4">
          <label class="mb-2 text-md block">Email</label>
          <input type="email" v-model="email"
            class="w-full p-2 border border-gray-300 rounded-md placeholder:font-light placeholder:text-gray-500"
            placeholder="Digite seu email" />
        </div>

        <div class="py-4">
          <label class="mb-2 text-md block">Senha</label>
          <input type="password" v-model="password"
            class="w-full p-2 border border-gray-300 rounded-md placeholder:font-light placeholder:text-gray-500"
            placeholder="Digite sua senha" />
        </div>

        <div class="flex justify-between w-full py-4">
          <label class="flex items-center">
            <input type="checkbox" v-model="rememberMe" class="mr-2" />
            <span class="text-md">Lembrar do meu login</span>
          </label>
          <a href="#" class="font-bold text-md text-blue-600 hover:underline">Esqueceu a senha?</a>
        </div>

        <button
          class="w-full bg-black text-white p-2 rounded-lg mb-6 hover:bg-white hover:text-black hover:border hover:border-gray-300"
          @click="login">
          Entrar
        </button>

        <button
          class="w-full border border-gray-300 text-md p-2 rounded-lg mb-6 flex items-center justify-center hover:bg-black hover:text-white"
          @click="loginWithGoogle">
          <img :src="googleIcon" alt="Google" class="w-6 h-6 mr-2" />
          Entrar com Google
        </button>

        <div class="text-center text-gray-400">
          Não tem uma conta?
          <a href="#" class="font-bold text-black hover:underline">Cadastre-se</a>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
import { ref } from "vue";
import { useRouter } from "vue-router";
import image from "/image.jpg"; // Importação da imagem
import googleIcon from "/icons/google.svg"; // Ícone do Google

export default {
  setup() {
    const router = useRouter();
    const email = ref("");
    const password = ref("");
    const rememberMe = ref(false);

    // Simulação de usuários (admin e cliente)
    const users = [
      {
        email: "admin",
        password: "admin",
        role: "admin",
      },
      {
        email: "cliente",
        password: "cliente",
        role: "client",
      },
    ];

    function login() {
      if (email.value && password.value) {
        // Verifica se o email e a senha correspondem a um usuário
        const user = users.find(
          (u) => u.email === email.value && u.password === password.value
        );

        if (user) {
          // Armazena o papel do usuário no localStorage
          localStorage.setItem("userRole", user.role);

          // Redireciona com base no papel (role) do usuário
          if (user.role === "admin") {
            router.push("/admin/admin-dashboard");
          } else if (user.role === "client") {
            router.push("/client/client-dashboard");
          }
        } else {
          alert("Credenciais inválidas! Verifique seu email e senha.");
        }
      } else {
        alert("Preencha todos os campos!");
      }
    }

    function loginWithGoogle() {
      alert("Autenticação com Google ainda não implementada.");
    }

    return {
      email,
      password,
      rememberMe,
      image,
      googleIcon,
      login,
      loginWithGoogle,
    };
  },
};
</script>

<style scoped>
/* Estilos personalizados (se necessário) */
</style>