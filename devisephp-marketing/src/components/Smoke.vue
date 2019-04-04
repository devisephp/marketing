<template>
  <div>
    <canvas
      ref="smokeCanvas"
      class="absolute pin"
    ></canvas>
  </div>
</template>

<script>
import SmokeMachine from '@bijection/smoke';

const tinycolor = require('tinycolor2');

export default {
  name: 'Smoke',
  props: {
    color: {
      required: true,
      type: String,
    },
    generators: {
      default: 2,
      type: Number,
    },
  },
  data() {
    return {
      animationLoop: null,
      canvas: null,
      ctx: null,
      height: 0,
      width: 0,
    };
  },
  mounted() {
    this.canvas = this.$refs.smokeCanvas;
    this.ctx = this.canvas.getContext('2d');

    this.setCanvasSize();
    this.startParty();
  },
  methods: {
    setCanvasSize() {
      const height = this.$el.offsetHeight;
      const width = this.$el.offsetWidth;
      this.canvas.height = height;
      this.canvas.width = width;
      this.height = height;
      this.width = width;
    },
    startParty() {
      const color = tinycolor(this.color);
      const rgbColor = color.toRgb();
      const party = SmokeMachine(this.ctx, [rgbColor.r, rgbColor.g, rgbColor.b]);

      party.start(); // start animating

      this.animationLoop = setInterval(() => {
        party.stop();

        for (let i = 0; i < this.generators; i += 1) {
          const xRatio = i / this.generators;
          party.addSmoke(this.width * xRatio, this.height * 2, 50);
        }

        for (let i = 0; i < 10; i += 1) {
          party.step(10); // pretend 10 ms pass and rerender
        }

        setTimeout(() => {
          party.start();
        }, 1000);
      }, 1000);
    },
  },
  watch: {
    color() {
      clearInterval(this.animationLoop);
      this.startParty();
    },
  },
};
</script>
