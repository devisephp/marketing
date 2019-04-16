<template>
  <div class="container">
    <div class="flex justify-between items-center px-8 py-4">
      <div>
        <img
          :src="imageSrc"
          width="100"
        >
      </div>
      <div class="text-sm md:text-lg font-sans uppercase flex flex-col">
        <a
          href="https://github.com/devisephp/cms"
          target="_blank"
          :class="{'text-black': pinned, 'text-white': !pinned}"
          class="mr-8 mb-2"
        >
          <github-icon></github-icon>
          <span class="text-sm md:text-base ml-2">Github</span>
        </a>
        <a
          href="https://devise.gitbook.io/cms/"
          target="_blank"
          class="mb-2"
          :class="{'text-black': pinned, 'text-white': !pinned}"
        >
          <document-icon></document-icon>
          <span class="text-sm md:text-base ml-2">Documentation</span>
        </a>
      </div>

    </div>
  </div>
</template>

<script>
export default {
  props: {
    pinned: {
      type: Boolean,
      default: false,
    },
  },
  computed: {
    imageSrc() {
      if (this.pinned) {
        return '/imgs/devise-logo-black.png';
      }
      return '/imgs/devise-logo-white.png';
    },
  },
};
</script>
