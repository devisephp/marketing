<template>
  <div>
    <div>
      <div id="container"></div>
    </div>
  </div>
</template>

<script>
import {
  BloomEffect, EffectComposer, EffectPass, RenderPass,
} from 'postprocessing';
import THREE from '../libs/three';

export default {
  name: 'Key',
  props: {
    showModel: {
      type: String,
      default: 'key',
    },
    enableControls: {
      type: Boolean,
      default: false,
    },
    showGrid: {
      type: Boolean,
      default: false,
    },
    showLightHelpers: {
      type: Boolean,
      default: false,
    },
    ambientColor: {
      type: String,
    },
  },
  watch: {
    ambientColor(newValue) {
      this.light1.color.setStyle(newValue);
      this.light2.color.setStyle(newValue);
      this.light3.color.setStyle(newValue);
      this.light4.color.setStyle(newValue);
      this.ambientLight.color.setStyle(newValue);
    },
    showModel(newValue) {
      this.hideAllModels();
      this.unhideModel(newValue);
    },
  },
  data() {
    return {
      camera: null,
      controls: null,
      composer: null,
      clock: new THREE.Clock(),
      scene: null,
      renderer: null,
      mesh: null,
      helper: null,
      ambientLight: null,
      light1: null,
      light2: null,
      light3: null,
      light4: null,
      garage: null,
      modelNameIndex: 0,
      modelNames: [
        'key',
        'dumpster',
        'toolchest',
      ],
      threeDeeModels: {},
      scale: 10,
      key: null,
      toolchest: null,
      dumpster: null,
      then: 0,
    };
  },
  methods: {
    init() {
      const container = document.getElementById('container');

      this.camera = new THREE.PerspectiveCamera(
        45,
        container.clientWidth / container.clientHeight,
        0.01,
        3000,
      );
      this.camera.position.z = 100;
      this.camera.position.y = 100;
      this.camera.position.x = 150;

      this.scene = new THREE.Scene();

      this.renderer = new THREE.WebGLRenderer({ antialias: true, alpha: true });
      this.renderer.setSize(container.clientWidth, container.clientHeight);
      container.appendChild(this.renderer.domElement);

      this.composer = new EffectComposer(this.renderer);
      const bloomPass = new EffectPass(this.camera, new BloomEffect({
        resolutionScale: 0.5,
        distinction: 4.0,
      }));
      bloomPass.renderToScreen = true;

      this.composer.addPass(new RenderPass(this.scene, this.camera));
      this.composer.addPass(bloomPass);

      this.controls = new THREE.OrbitControls(
        this.camera,
        this.renderer.domElement,
      );
      this.controls.screenSpacePanning = true;

      this.ambientLight = new THREE.AmbientLight(0x404040); // soft white light
      this.scene.add(this.ambientLight);
    },
    animate() {
      requestAnimationFrame(this.animate);
      // Anything after to animate

      this.render();
    },
    render(now) {
      const time = Date.now() * 0.0005;

      // Animate lights
      this.light2.position.x = Math.cos(time * 0.3) * 30;
      this.light2.position.y = Math.sin(time * 0.5) * 40;
      this.light2.position.z = Math.sin(time * 0.7) * 30;
      this.light3.position.x = Math.sin(time * 0.7) * 30;
      this.light3.position.y = Math.cos(time * 0.3) * 40;
      this.light3.position.z = Math.sin(time * 0.5) * 30;
      this.light4.position.x = Math.sin(time * 0.3) * 30;
      this.light4.position.y = Math.cos(time * 0.7) * 40;
      this.light4.position.z = Math.sin(time * 0.5) * 30;

      if (this.key) {
        this.camera.lookAt(this.key.position);
        this.key.rotation.z += 0.02;
      }

      if (this.dumpster) {
        this.camera.lookAt(this.dumpster.position);
        this.dumpster.rotation.z += 0.02;
      }

      if (this.toolchest) {
        this.camera.lookAt(this.toolchest.position);
        this.toolchest.rotation.z += 0.02;
      }

      this.helper.visible = this.showGrid;
      this.controls.enabled = this.enableControls;

      this.light1.traverse((child) => {
        if (child instanceof THREE.Mesh) {
          child.visible = this.showLightHelpers;
        }
      });

      this.light2.traverse((child) => {
        if (child instanceof THREE.Mesh) {
          child.visible = this.showLightHelpers;
        }
      });

      this.light3.traverse((child) => {
        if (child instanceof THREE.Mesh) {
          child.visible = this.showLightHelpers;
        }
      });

      this.light4.traverse((child) => {
        if (child instanceof THREE.Mesh) {
          child.visible = this.showLightHelpers;
        }
      });
      this.composer.render(this.clock.getDelta());
    },
    addLight() {
      this.ambientLight = new THREE.AmbientLight(0xffffff);
      this.ambientLight.position.set(10, 50, 0);
      this.scene.add(this.ambientLight);

      const sphere = new THREE.SphereBufferGeometry(0.5, 16, 8);

      this.light1 = new THREE.PointLight(0xff0040, 2, 1000);
      this.light1.add(
        new THREE.Mesh(sphere, new THREE.MeshBasicMaterial()),
      );
      this.light1.position.set(20, 50, 0);
      this.scene.add(this.light1);
      this.light2 = new THREE.PointLight(0x0040ff, 2, 1000);
      this.light2.position.set(20, 50, 0);
      this.light2.add(
        new THREE.Mesh(sphere, new THREE.MeshBasicMaterial({ color: 0x0040ff })),
      );
      this.scene.add(this.light2);
      this.light3 = new THREE.PointLight(0x80ff80, 2, 1000);
      this.light3.position.set(0, 75, 0);
      this.light3.add(
        new THREE.Mesh(sphere, new THREE.MeshBasicMaterial({ color: 0x80ff80 })),
      );
      this.scene.add(this.light3);
      this.light4 = new THREE.PointLight(0xffaa00, 2, 1000);
      this.light4.position.set(0, 50, 0);
      this.light4.add(
        new THREE.Mesh(sphere, new THREE.MeshBasicMaterial({ color: 0xffaa00 })),
      );
      this.scene.add(this.light4);
    },
    addHelper() {
      this.helper = new THREE.GridHelper(160, 10);
      this.helper.position.set(0, 0, 0);
      this.scene.add(this.helper);
    },
    loadModels() {
      if (typeof this.modelNames[this.modelNameIndex] !== 'undefined') {
        const modelName = this.modelNames[this.modelNameIndex];
        const loader = new THREE.GLTFLoader().setPath('/models/slice-demo/');

        loader.load(`${modelName}.glb`, (gltf) => {
          gltf.scene.traverse((child) => {
            if (child.isMesh) {
              child.scale.set(this.scale, this.scale, this.scale);
              this.threeDeeModels[modelName] = child;
            }
          });

          this.modelNameIndex += 1;
          this.loadModels();
        });
      } else {
        this.onModelLoadComplete();
      }
    },
    hideAllModels() {
      this.key.visible = false;
      this.dumpster.visible = false;
      this.toolchest.visible = false;
    },
    unhideModel(model) {
      this[model].visible = true;
    },
    onModelLoadComplete() {
      this.buildScene();
      this.hideAllModels();
      this.unhideModel('key');
    },
    buildScene() {
      // console.log(this.threeDeeModels["floor"]);
      // Floor
      this.key = this.threeDeeModels.key.clone();
      // model.scale.set(26, 30, 10);
      this.key.position.set(0, 50, 0);
      this.scene.add(this.key);

      this.dumpster = this.threeDeeModels.dumpster.clone();
      // model.scale.set(26, 30, 10);
      this.dumpster.position.set(0, 50, 0);
      this.dumpster.scale.set(1, 1, 1);
      this.scene.add(this.dumpster);

      this.toolchest = this.threeDeeModels.toolchest.clone();
      // model.scale.set(26, 30, 10);
      this.toolchest.position.set(0, 50, 0);
      this.toolchest.rotation.z = 180;
      this.scene.add(this.toolchest);
    },
  },
  mounted() {
    this.init();
    this.addLight();

    this.addHelper();

    this.loadModels();

    this.animate();
  },
};
</script>

<style>
body {
  padding: 0;
  margin: 0;
}

#container {
  width: 100%;
  height: 600px;
}
</style>
