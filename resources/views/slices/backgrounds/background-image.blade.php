@section('template')
<div v-devise-image.background.lazy="devise.image.url" class="bg-cover">
  @slices
</div>
@endsection


@section('component')
  <script>
    var component = {
      preview: ['{I}'],
      description: 'Background Image with Children slices',
      fields: {
        image: {
          type: 'image',
          label: 'Background Image',
          default: {
            url: '/imgs/backgrounds/red-blur.jpg'
          }
        }
      }
    }
  </script>
@endsection