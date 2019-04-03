<!doctype html>
<html lang="{{ app()->getLocale() }}">
  <head>
    @isset($page)
    {!! Devise::head($page) !!}
    @else
    {!! Devise::head() !!}
    @endif

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="csrf-token" content="{{ csrf_token() }}">

    @if(App::environment() == 'production' || App::environment() == 'staging' )
      <style><?php echo File::get( public_path( vuemix('/css/chunk-vendors.css', '/app') ) ) ?></style>
      <style><?php echo File::get( public_path( vuemix('/css/essentials.css', '/app') ) ) ?></style>
    @else
      <link rel="stylesheet" href="{{vuemix('/css/chunk-vendors.css', '/app')}}">
      <link rel="stylesheet" href="{{vuemix('/css/essentials.css', '/app')}}">
    @endif
  </head>

  <body>
    <div id="app">
        <div v-cloak>
          <devise>
            <div slot="on-top" v-if="currentPage.site.id !== 4">
              {{-- <app-navigation inline-template>
                <div class="border-b border-grey fixed bg-white z-50 w-full">
                  @include('partials.desktop-navigation')
                  @include('partials.mobile-navigation')
                </div>
              </app-navigation>
              <div id="navigation-spacer"></div> --}}
            </div>

            <div slot="static-content">
                @yield('content')
            </div>

            <div slot="on-bottom" v-if="currentPage.site.id !== 4">
              {{-- @include('partials.footer') --}}
            </div>
          </devise>
        </div>
    </div>

    <script rel="prefetch" src="{{vuemix('/js/chunk-vendors.js', '/app')}}"></script>
    <script rel="prefetch" src="{{vuemix('/js/app.js', '/app')}}"></script>

    @if(Auth::user())
      <script src="/devise/styles.js"></script>
    @endif

    <noscript id="deferred-styles">
      <link rel="stylesheet" href="{{vuemix('/css/global.css', '/app')}}">
    </noscript>

    <script>
      var loadDeferredStyles = function() {
        var addStylesNode = document.getElementById("deferred-styles");
        var replacement = document.createElement("div");
        replacement.innerHTML = addStylesNode.textContent;
        document.body.appendChild(replacement)
        addStylesNode.parentElement.removeChild(addStylesNode);
      };
      var raf = requestAnimationFrame || mozRequestAnimationFrame ||
          webkitRequestAnimationFrame || msRequestAnimationFrame;
      if (raf) raf(function() { window.setTimeout(loadDeferredStyles, 0); });
      else window.addEventListener('load', loadDeferredStyles);
    </script>
  </body>
</html>