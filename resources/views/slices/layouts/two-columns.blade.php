@section('template')
<div class="flex justify-center">
  <div 
    class="container w-full flex flex-col md:flex-row" 
    :class="{
      'items-start': devise.alignTop.checked, 
      'items-center': !devise.alignTop.checked
    }">
    <slices :slices="slices" class="w-1/2"></slices>
  </div>
</div>

@endsection

@section('component')
<script>
  var component = {
    preview: ['{Bbg,Bbg}'],
    description: 'Two columns',
    fields: {
      alignTop: {
        type: 'checkbox',
        label: 'Align Top',
        default: {
          checked: false
        }
      }
    }
  }
</script>
@endsection