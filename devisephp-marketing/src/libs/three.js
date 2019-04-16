import * as THREE from 'three';
// build/three.js from node_module/three
window.THREE = THREE;
require('three/examples/js/controls/OrbitControls.js');
require('three/examples/js/loaders/GLTFLoader.js');
require('three/examples/js/objects/Sky.js');

export default THREE;
