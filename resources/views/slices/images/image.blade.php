@section('template')
<div>

  <img v-if="devise.lazy.checked" v-devise-image.lazy="{image: devise.image, breakpoint: breakpoint}">
  <img v-else :src="devise.image.media.original">
</div>

@endsection

@section('component')
<script>
  var component = {
    preview: ['{I}'],
    description: 'Just an image... but a good one I\'ll bet',
    fields: {
      lazy: {
        label: 'Responsive?',
        type: 'checkbox',
        default: {
          checked: true
        }
      },
      image: {
        label: 'The image',
        type: 'image',
        editorLabel: true,
        sizes: {
          large: {
            w: 800,
            h: 400,
            breakpoints: ['desktop', 'largeDesktop', 'ultraWideDesktop']
          },
          small: {
            w: 400,
            h: 300,
            breakpoints: ['tablet', 'mobile']
          }
        }
      }
    }
  }
</script>
@endsection