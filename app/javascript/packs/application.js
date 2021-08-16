// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"

Rails.start()
Turbolinks.start()
ActiveStorage.start()


//= require jquery3
//= require popper
//= require bootstrap

//   $(function () {
//     $('#sidebar-wrapper .dropdown-submenu').hide();
//     $('#sidebar-wrapper .dropdown').append('<a href="#" class="dropdown-icon"><span class="caret"></span></a>');

//     $('#sidebar-wrapper .dropdown-icon').click(function () {
//           $(this).closest('.dropdown').find('.dropdown-submenu').first().slideToggle();
//     });

//     var active = '#sidebar-wrapper .active';
//     $(active).parents('.dropdown').addClass('parent');
//     $('#sidebar-wrapper .active .dropdown-submenu, #sidebar-wrapper .parent .dropdown-submenu').show();
// });
