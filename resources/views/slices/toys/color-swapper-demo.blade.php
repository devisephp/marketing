@section('template')
  <color-swapper :devise="devise"></color-swapper>
@endsection

@section('component')
<script>
  var component = {
    preview: ['{Bbg}'],
    description: 'Empty container with child slices',
    fields: {
      title: {
        label: 'Title',
        type: 'text'
      },
      copy: {
        label: 'Copy',
        type: 'wysiwyg'
      },
      circleSize: {
        label: 'Circle Size',
        type: 'number',
        default: {
          text: 50
        }
      }
    }
  }
</script>
@endsection