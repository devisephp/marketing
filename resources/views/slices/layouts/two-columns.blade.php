@section('template')
<div class="flex justify-center">
  <div class="container w-full flex flex-col md:flex-row items-center">
    <slices :slices="slices" class="w-1/2"></slices>
  </div>
</div>

@endsection

@section('component')
<script>
  var component = {
    preview: ['{Bbg,Bbg}'],
    description: 'Two columns',
  }
</script>
@endsection