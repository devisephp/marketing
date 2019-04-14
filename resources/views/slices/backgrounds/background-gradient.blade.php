@section('template')
<div class="relative" :style="gradientBackground">
  <div class="relative z-20">
    <slices 
      :slices="slices" 
      :background-color-left="devise.backgroundColorLeft.color" 
      :background-color-right="devise.backgroundColorRight.color">
    </slices>
  </div>
  <div 
    style="background: url('/imgs/patterns/diamonds.png')" 
    class="absolute pin z-10">
  </div>
</div>
@endsection


@section('component')
  <script>
    var component = {
      preview: ['{Bbg}'],
      description: 'Background Gradient',
      fields: {
        backgroundColorLeft: {
          label: 'Background Color Left',
          type: 'color',
          default: {
            color: '#e8f9e8'
          }
        },
        backgroundColorRight: {
          label: 'Background Color Right',
          type: 'color',
          default: {
            color: '#f0f5b4'
          }
        },
      },
      computed: {
        gradientBackground: function () {
          return {
            background: 'linear-gradient(to right, '+ this.devise.backgroundColorLeft.color +', '+ this.devise.backgroundColorRight.color +')'
          }
        }
      }
    }
  </script>
@endsection