@section('template')
  <div class="relative w-full min-h-threequarterscreen flex flex-col items-center bg-abs-black bg-center bg-no-repeat bg-cover" :style="{backgroundImage:'url(\'' + devise.image.url + '\')'}">
    <div class="h-10 w-full absolute pin-b" :style="computedStyle"></div>
  </div>
@endsection

@section('component')
  <script>
    let component = {
      preview: ['{I}'],
      description: 'Hero with a static image',
      fields: {
        image: {
          label: 'Field',
          type: 'image',
          default: {
            url: '/imgs/static-hero.jpg'
          }
        },
        colorTop: {
          label: 'Bottom Gradient Top Color',
          type: 'color',
          default: {
            color: 'rgba(0,0,0,0)'
          }
        },
        colorBottom: {
          label: 'Bottom Gradient Bottom Color',
          type: 'color',
          default: {
            color: '#000000'
          }
        }
      },
      computed: {
        computedStyle: function () {
          return {
            background: 'linear-gradient('+ this.devise.colorTop.color +', '+ this.devise.colorBottom.color +')'
          }
        }
      }
    }
  </script>
@endsection