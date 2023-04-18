//Calender Carousel
$('.calender-carousel').owlCarousel({
    loop: false,
    margin: 15,
    nav: false,
    dots: false,
    autoWidth: true,
})

//tooltip
$(function () {
    $('[data-bs-toggle="tooltip"]').tooltip()
})

//Category filter
$(function () {

    var filterList = {

        init: function () {

            $('.service-listing').mixItUp({
                selectors: {
                    target: '.service-box',
                    filter: '.category-li'
                },
                load: {
                    filter: '.all'
                }
            });

        }

    };

    filterList.init();

});

//calander
$('#calendar').datepicker({
    inline: true,
    firstDay: 1,
    showOtherMonths: true,
    dayNamesMin: ['Sun', 'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat']
});

//timepicker
$('.time-picker').timepicker();

//toggle body class
$(".user-img").click(function () {
    $("body").toggleClass("overflow-hidden");
});

//pie chart

 google.charts.load('current', {'packages':['corechart']});

 google.charts.setOnLoadCallback(drawChart);

 function drawChart() {

   var data = new google.visualization.DataTable();
   data.addColumn('string', 'Topping');
   data.addColumn('number', 'Slices');
   data.addRows([
     ['Manicure', 12],
     ['Pedicure', 6],
     ['Waxing', 3],
     ['Eyelash', 3],
   ]);

   var options = {
                  'width':185,
                  'height':185};

   var chart = new google.visualization.PieChart(document.getElementById('chart_div'));
   chart.draw(data, options);
 }