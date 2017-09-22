// Turbolinks - To disable remove the next two lines.
// https://github.com/turbolinks/turbolinks
import Turbolinks from 'turbolinks';
Turbolinks.start();

// Require https://github.com/rails/jquery-ujs
import 'jquery-ujs';

// import Hello from './components/Hello.vue';
import ContactsView from './components/ContactsView.vue';

// Import this if you wish to use CSS in your .vue files.
// See section below for more information.
// import "vueify/lib/insert-css";


let App = {
  init() {
    let root;

    $(document).on("turbolinks:load", () => {
      root = new Vue({
        el: '#root',
        components: {
          'contacts-view': ContactsView
        }
      })
    });

    $(document).on("turbolinks:before-render", () => {
      root.$destroy();
    });
  }
}

module.exports = App;
