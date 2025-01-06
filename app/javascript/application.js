// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"
import '@popperjs/core'
import "bootstrap"
import "trix"
import "@rails/actiontext"

window.addEventListener("trix-file-accept", function(event) {
  event.preventDefault()
  alert("File attachment not supported!")
});

document.addEventListener("turbo:load", () => {
  var tagInput = document.querySelector('input[name="input-custom-dropdown"]');
  if (!tagInput) {
    console.warn("[Tagify]: Input element not found in DOM.");
    return;
  }
  
  console.log("Tagify input element found:", tagInput);
  if (tagInput) {
    var tagWhiteList = JSON.parse(tagInput.getAttribute("data-whitelist"))
    // var tagWhiteList = tagInput.getAttribute("data-whitelist")
    console.log(typeof tagWhiteList)


    console.log(tagWhiteList)
    console.log(Array.isArray(tagWhiteList))
  
    var tagify = new Tagify(tagInput, {
        // originalInputValueFormat: tagWhiteList => tagWhiteList.map(item => item.value).join(','),
        whitelist: tagWhiteList,
        dropdown: {
            classname: 'tags-look', // <- custom classname for this dropdown, so it could be targeted
            enabled: 0,             // <- show suggestions on focus
            closeOnSelect: false,    // <- do not hide the suggestions dropdown once an item has been selected
        }
    })
  }
})