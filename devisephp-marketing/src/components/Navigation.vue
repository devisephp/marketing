<template>
  <div>
    <div
      class="fixed pin-l pin-r"
      style="z-index:9999"
    >
      <headroom
        @pin="pinned = true"
        @top="pinned = false"
      >
        <div
          class="text-black"
          :class="{'bg-white shadow':  pinned}"
        >
          <inner-navigation :pinned="pinned"></inner-navigation>
        </div>
      </headroom>
    </div>
  </div>
</template>

<script>
import { headroom } from 'vue-headroom';

import InnerNavigation from './InnerNavigation.vue';

export default {
  components: {
    headroom,
    InnerNavigation,
  },
  data() {
    return {
      pinned: false,
    };
  },
};
</script>
