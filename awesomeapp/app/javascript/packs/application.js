import Rails from "@rails/ujs"
import * as ActiveStorage from "@rails/activestorage"
import "channels"
import "stylesheets/application"
import "stylesheets/directives"

// fontawesome 5

import '@fortawesome/fontawesome-free/js/fontawesome'
import '@fortawesome/fontawesome-free/js/brands'

Rails.start()
ActiveStorage.start()
