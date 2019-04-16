@section('template')
<div class="flex justify-center p-8 md:p-16">
  <div class="container mt-8 mb-8 md:mb-12 w-full md:w-4/5 flex flex-col md:flex-row items-start">
    <div class="w-full md:w-3/5 pr-8">
      <img class="mb-6" v-devise-image="{breakpoint: breakpoint, image: devise.topImage}">
      <div class="font-display text-pink w-full md:w-3/4 " v-if="devise.introduction.enabled && devise.introduction.text">
        <h1 v-if="devise.introductionSize.value == 'h1'" v-html="devise.introduction.text" class="text-xl md:text-3xl"></h1>
        <h2 v-if="devise.introductionSize.value == 'h2'" v-html="devise.introduction.text"></h2>
        <h3 v-if="devise.introductionSize.value == 'h3'" v-html="devise.introduction.text"></h3>
        <h4 v-if="devise.introductionSize.value == 'h4'" v-html="devise.introduction.text"></h4>
      </div>
      <template v-if="devise.copy.enabled">
        <div v-html="devise.copy.text" class="my-6 leading-loose text-white"></div>
      </template>
      <a 
        class="btn text-white bg-pink relative z-10" 
        :href="devise.link.href"
        :target="devise.link.target" 
        v-if="devise.link.enabled">
          @{{ devise.link.text }}
      </a>
      <a 
        class="btn text-white bg-pink relative z-10" 
        :href="devise.newButton.href"
        :target="devise.newButton.target" 
        v-if="devise.newButton.enabled">
          @{{ devise.newButton.text }}
      </a>
    </div>
    <div class="relative text-center">
      <img v-devise-image="{breakpoint: breakpoint, image: devise.sideImage}">
      {{-- <smoke class="absolute pin z-10" :color="this.devise.smokeColor.color"></smoke> --}}
    </div>
  </div>
</div>
@endsection


@section('component')
  <script>
    var component = {
      preview: ['{Bbg}'],
      description: 'Contains the content to a max width',
      fields: {
        newButton: {
          label: 'New Button',
          type: 'link',
          enabler: true
        },
        topImage: {
          type: 'image',
          label: 'Top Image'
        },
        introduction: {
          type: 'text',
          label: 'Introduction',
          enabler: true,
          default: {
            enabled: true
          }
        },
        introductionSize: {
          type: 'select',
          label: 'Intro Size',
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
        copy: {
          type: 'wysiwyg',
          label: 'Copy',
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
        },
        sideImage: {
          type: 'image',
          label: 'Side Image',
          default: {
            url: '/imgs/sidebar-interface.png'
          }
        },
        // smokeColor: {
        //   type: 'color',
        //   label: 'Smoke Color',
        //   default: {
        //     color: '#22292f'
        //   }
        // }
      }
    }
  </script>
@endsection