@section('template')
<div class="relative flex justify-center p-4">
  <div class="container mt-8 mb-8 md:mb-12 w-full md:w-4/5 flex flex-col items-start" :class="[devise.leftOrRight.value]">
    <div class="w-1/2 px-10" :style="{color: devise.copyColor.color}">
      <h2>
        <span>@{{ devise.titleNotHighlighted.text }}</span>
        <span class="bg-black p-4 text-white" v-if="devise.titleHighlighted.enabled">@{{ devise.titleHighlighted.text }}</span>
      </h2>
      <div v-html="devise.copy.text" class="my-6 leading-loose"></div>
    </div>
    <div class="w-1/2 relative text-center flex flex-wrap">
      <slices :slices="slices" class="w-1/2 p-4"></slices>
    </div>
  </div>
</div>
@endsection


@section('component')
  <script>
    var component = {
      preview: ['{Bbg}'],
      description: 'Paragraph and a slot for child slices',
      fields: {
        leftOrRight: {
          label: 'Copy on Left or Right?',
          type: 'select',
          options: {
            'md:flex-row-reverse': 'Right',
            'md:flex-row': 'Left',
          },
          default: {
            value: 'md:flex-row-reverse'
          }
        },
        titleHighlighted: {
          label: 'Title Highlighted',
          type: 'text',
          enabler: true,
          default: {
            text: 'In Context',
            enabled: false
          }
        },
        titleNotHighlighted: {
          label: 'Title Not Highlighted',
          type: 'text',
          default: {
            text: 'Edit.'
          }
        },
        copy: {
          label: 'Primary Copy',
          type: 'wysiwyg'
        },
        copyColor: {
          label: 'Copy Color',
          type: 'color',
          default: {
            color: '#000000'
          }
        }
      },
      props: {
        backgroundColorLeft: {
          default: '#ffffff',
          type: String
        },
        backgroundColorRight: {
          default: '#ffffff',
          type: String
        }
      },
      computed: {
        hightlightedTextColor: function () {
          if (this.backgroundColorRight) {
            if (this.devise.leftOrRight.value === 'md:flex-row-reverse') {
              return { color: this.backgroundColorRight };
            }
            return { color: this.backgroundColorLeft };
          }
          return null;
        }
      }
    }
  </script>
@endsection