import flatpickr from "flatpickr";

flatpickr(".datepicker", {
  minDate: "today",
  altInput: true,
  altFormat: "F j, Y",
  dateFormat: "Y-m-d",
});
