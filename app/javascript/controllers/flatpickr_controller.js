import { Controller } from "@hotwired/stimulus"
import flatpickr from "flatpickr";
// Connects to data-controller="flatpickr"
export default class extends Controller {
  // retrieve the targets from the DOM
  static targets = [ 'startDateInput', 'endDateInput' ]
  // On controller's connection, call the flatpickr
  // function in order to build the calendars
//   connect() {
//     flatpickr(this.startDateInputTarget, {
//       mode: 'range',
//       "plugins": [new rangePlugin({ input: this.endDateInputTarget})]
// }) }

  connect() {
    flatpickr(".datepicker", {
      // mode: 'range',
      // "plugins": [new rangePlugin({ input: this.endDateInputTarget})]
}) }
}
