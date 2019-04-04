/**
 * First we will load all of this project's JavaScript dependencies which
 * includes Vue and other libraries. It is a great starting point when
 * building robust, powerful web applications using Vue and Laravel.
 */
import Vue from 'vue';

// Devise requires a bus, vue-router and vuex. We initialize these in your application
// so that both apps can share the same store and router. All devise vuex
// is namespaced under the "devise" namespace.
import { sync } from 'vuex-router-sync';

// Devise
import Devise from 'devisephp-interface';

// Vuex, Router, Bus
import store from './store';
import router from './router';
import EventBus from './event-bus';

// dynamic import component
Vue.component('smoke', () => import(/* webpackChunkName: "app-ui" */ './components/Smoke.vue'));
Vue.component('check-icon', () => import(/* webpackChunkName: "app-ui" */ 'vue-feather-icons/icons/CheckSquareIcon'));
Vue.component('hash-icon', () => import(/* webpackChunkName: "app-ui" */ 'vue-feather-icons/icons/HashIcon'));
Vue.component('document-icon', () => import(/* webpackChunkName: "app-ui" */ 'vue-feather-icons/icons/FileIcon'));
Vue.component('images-icon', () => import(/* webpackChunkName: "app-ui" */ 'vue-feather-icons/icons/ImageIcon'));
Vue.component('clock-icon', () => import(/* webpackChunkName: "app-ui" */ 'vue-feather-icons/icons/ClockIcon'));
Vue.component('link-icon', () => import(/* webpackChunkName: "app-ui" */ 'vue-feather-icons/icons/Link2Icon'));
Vue.component('droplet-icon', () => import(/* webpackChunkName: "app-ui" */ 'vue-feather-icons/icons/DropletIcon'));
Vue.component('dropdown-icon', () => import(/* webpackChunkName: "app-ui" */ 'vue-feather-icons/icons/ClipboardIcon'));
Vue.component('type-icon', () => import(/* webpackChunkName: "app-ui" */ 'vue-feather-icons/icons/TypeIcon'));

Vue.config.productionTip = false;

require('./bootstrap');

window.bus = EventBus;
sync(store, router);
Vue.use(Devise, {
  store,
  router,
  bus: window.bus,
  options: {
    adminClass: '',
  },
});

// eslint-disable-next-line no-unused-vars
const app = new Vue({
  el: '#app',
  router,
  mounted() {
    this.appLoaded();
  },
  methods: {
    appLoaded() {
      window.bus.$on('devise-loaded', () => { });
    },
  },
});
