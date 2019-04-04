@section('template')
<div class="flex items-start text-left ">
  <component :is="devise.icon.value + '-icon'" class="text-2xl w-1/5"></component>
  <div class="pl-4 w-4/5">
    <h4 class="mb-2 class-display">@{{ devise.title.text }}</h4>
    <div class="leading-normal text-sm">@{{ devise.copy.text }}</div>
  </div>
</div>
@endsection


@section('component')
  <script>
    let component = {
      preview: ['{Bbg}'],
      description: 'Feature description with icons',
      fields: {
        icon: {
          label: 'Icon',
          type: 'select',
          options: {
            'check': 'Checkbox',
            'droplet': 'droplet',
            'document': 'Document',
            'images': 'Images',
            'clock': 'Clock',
            'link': 'Link',
            'hash': 'hash',
            'dropdown': 'Dropdown',
            'type': 'Type',
          },
          default: {
            value: 'check'
          }
        },
        title: {
          label: 'Title',
          type: 'text',
          editorLabel: true,
          default: {
            text: 'Feature Title'
          }
        },
        copy: {
          label: 'Copy',
          type: 'textarea'
        },
      }
    }
  </script>
@endsection