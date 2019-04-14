@section('template')
<div>
  <div :class="{'text-center': devise.alignContentCenter.checked}">
    @slices
  </div>
</div>

@endsection

@section('component')
<script>
  var component = {
    preview: ['{Bbg}'],
    description: 'Empty container with child slices',
    fields: {
      alignContentCenter: {
        label: 'Align Content Center',
        type: 'checkbox',
      },
    }
  }
</script>
@endsection