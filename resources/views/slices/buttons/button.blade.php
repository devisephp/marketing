@section('template')
<div>
  <a 
    :href="devise.link.permalink" 
    :target="devise.link.target" 
    class="btn" 
    :style="{
      backgroundColor: devise.backgroundColor.color,
      color: devise.color.color
    }">
      @{{ devise.link.text }}
    </a>
</div>
@endsection

@section('component')
<script>
  var component = {
    preview: ['{Bbg}'],
    description: 'Empty container with child slices',
    fields: {
      link: {
        label: 'Link',
        type: 'link'
      },
      backgroundColor: {
        label: 'Background Color',
        type: 'color'
      },
      color: {
        label: 'Text Color',
        type: 'color'
      },
    }
  }
</script>
@endsection