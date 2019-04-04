@section('template')
<div class="relative flex justify-center p-4" :style="gradientBackground">
  <div class="container mt-8 mb-8 md:mb-12 w-full md:w-4/5 flex flex-col items-start" :class="[devise.leftOrRight.value]">
    <div class="w-1/2 px-10">
      <h2>
        <span>@{{ devise.titleNotHighlighted.text }}</span>
        <span class="bg-black p-4 text-white" :style="hightlightedTextColor">@{{ devise.titleHighlighted.text }}</span>
      </h2>
      <div v-html="devise.copy.text" class="my-6 leading-loose"></div>
    </div>
    <div class="w-1/2 relative text-center flex flex-wrap">
      <slices :slices="slices" class="w-1/2 p-4"></slices>
    </div>
  </div>
  <div style="background: url('/imgs/patterns/diamonds.png')" class="absolute pin"></div>
</div>
@endsection


@section('component')
  <script>
    let component = {
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
          default: {
            text: 'In Context'
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
        backgroundColorLeft: {
          label: 'Background Color Left',
          type: 'color',
          default: {
            color: '#e8f9e8'
          }
        },
        backgroundColorRight: {
          label: 'Background Color Right',
          type: 'color',
          default: {
            color: '#f0f5b4'
          }
        },
      },
      computed: {
        gradientBackground: function () {
          return {
            background: 'linear-gradient(to right, '+ this.devise.backgroundColorLeft.color +', '+ this.devise.backgroundColorRight.color +')'
          }
        },
        hightlightedTextColor: function () {
          if (this.devise.leftOrRight.value === 'md:flex-row-reverse') {
            return {color: this.devise.backgroundColorRight.color}
          }
          return {color: this.devise.backgroundColorLeft.color}
        }
      }
    }
  </script>
@endsection