@section('template')
  <div class="container mt-8 mb-8 md:mb-12 w-full md:w-4/5 flex flex-col items-center text-center">
    <div class="uppercase" v-if="devise.title.enabled && devise.title.text">
      <h1 v-if="devise.titleSize.value == 'h1'" v-html="devise.title.text"></h1>
      <h2 v-if="devise.titleSize.value == 'h2'" v-html="devise.title.text"></h2>
      <h3 v-if="devise.titleSize.value == 'h3'" v-html="devise.title.text"></h3>
      <h4 v-if="devise.titleSize.value == 'h4'" v-html="devise.title.text"></h4>
    </div>
    <template v-if="devise.introduction.enabled">
      <div v-html="devise.introduction.text" class="mt-6 w-full md:w-3/4 leading-loose"></div>
    </template>
    <a class="btn btn-2xs text-white bg-black relative z-10" style="top:-2.5em" :href="devise.link.href"
       :target="devise.link.target" v-if="devise.link.enabled">@{{ devise.link.text }}</a>
  </div>
@endsection


@section('component')
  <script>
    let component = {
      preview: ['{Bbg}'],
      description: 'Contains the content to a max width',
      fields: {
        topImage: {
          type: 'image',
          label: 'Top Image'
        },
        title: {
          type: 'text',
          label: 'Title',
          editorLabel: true,
          enabler: true,
          default: {
            enabled: true
          }
        },
        titleSize: {
          type: 'select',
          label: 'Title Size',
          allowNull: true,
          options: {
            h1: 'H1',
            h2: 'H2',
            h3: 'H3',
            h4: 'H4',
          },
          default: {
            value: 'h1'
          }
        },
        introduction: {
          type: 'wysiwyg',
          label: 'Introduction',
          enabler: true,
          default: {
            enabled: true
          }
        },
        link: {
          type: 'link',
          label: 'Link',
          enabler: true,
          default: {
            enabled: false,
          }
        }
      }
    }
  </script>
@endsection