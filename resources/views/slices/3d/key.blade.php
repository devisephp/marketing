@section('template')
<div class="relative">
  <div class="absolute"
    <key 
      :show-model="devise.showModel.value" 
      :enable-controls="devise.enableControls.checked" 
      :show-grid="devise.showGrid.checked" 
      :show-light-helpers="devise.showLightHelpers.checked" 
      :ambient-color="devise.ambientLightColor.color">
    </key>
  </div>
</div>
@endsection

@section('component')
<script>
  var component = {
    preview: ['{Bbg}'],
    description: 'Empty container with child slices',
    fields: {
      showModel: {
        type: 'select',
        label: 'Show Model',
        options: {
          key: 'Key',
          dumpster: 'Dumpster',
          toolchest: 'Tool Chest',
        },
        default: {
          value: 'key'
        }
      },
      showGrid: {
        type: 'checkbox',
        label: 'Show Grid',
        default: {
          checked: false
        }
      },
      enableControls: {
        type: 'checkbox',
        label: 'Enable Controls',
        instructions: 'Allows you to move around the model with your mouse',
        default: {
          checked: false
        }
      },
      showLightHelpers: {
        type: 'checkbox',
        label: 'Show Light Helpers',
        default: {
          checked: false
        }
      },
      ambientLightColor: {
        type: 'color',
        label: 'Ambient Lighting Color',
        default: {
          color: '#404040'
        }
      }
    }
  }
</script>
@endsection