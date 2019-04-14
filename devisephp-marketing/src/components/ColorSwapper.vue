<template>
  <div
    class="flex justify-center p-16"
    style="transition: all 1s;"
    :style="{backgroundColor: backgroundColor}"
  >
    <div class="container mt-8 mb-8 md:mb-12 w-full flex flex-col md:flex-row items-center">
      <div class="w-1/2 px-10">
        <h2 class="font-display mb-8">{{ devise.title.text }}</h2>
        <div
          class="leading-loose"
          v-html="devise.copy.text"
        ></div>
      </div>
      <div class="w-1/2 text-center">
        <h3 class="mb-4">What is a slice?</h3>
        <p class="mb-10 leading-normal font-sans">
          Oh... well, this whole {{ color }} area is a slice. This is actually a
          VueJS component that is also controlled by the database. Try clicking
          one of the circles below and see what happens. Here you go.
        </p>
        <div class="flex justify-center">
          <div
            class="rounded-full bg-pink cursor-pointer mx-4"
            @click="color = 'pink'"
            :style="{
            width: devise.circleSize.text + 'px',
            height: devise.circleSize.text + 'px',
          }"
          ></div>
          <div
            class="rounded-full bg-blue cursor-pointer mx-4"
            @click="color = 'blue'"
            :style="{
            width: devise.circleSize.text + 'px',
            height: devise.circleSize.text + 'px',
          }"
          ></div>
          <div
            class="rounded-full bg-orange cursor-pointer mx-4"
            @click="color = 'orange'"
            :style="{
            width: devise.circleSize.text + 'px',
            height: devise.circleSize.text + 'px',
          }"
          ></div>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  data() {
    return {
      color: 'pink',
    };
  },
  computed: {
    backgroundColor() {
      if (this.color === 'pink') {
        return '#ffbbca';
      } if (this.color === 'blue') {
        return '#6cb2eb';
      }
      return '#fcd9b6';
    },
  },
};
</script>
