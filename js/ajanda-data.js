$(document).ready(function () {

    $('#calendar').fullCalendar({
        header: {
            left: 'prev,next today',
            center: 'title',
            right: 'month,agendaWeek,agendaDay,listWeek'
        },
        defaultDate: '2018-06-12',
        navLinks: true, // can click day/week names to navigate views

        weekNumbers: true,
        weekNumbersWithinDays: true,
        weekNumberCalculation: 'ISO',

        editable: true,
        eventLimit: true, // allow "more" link when too many events
        events: [{
                title: 'Tüm gün aktivitesi',
                start: '2018-06-01'
            },
            {
                title: 'Uzun Olay',
                start: '2018-06-07',
                end: '2018-06-10'
            },
            {
                id: 999,
                title: 'Etkinlik 2',
                start: '2018-06-09T16:00:00'
            },
            {
                id: 999,
                title: 'Etkinlik 3',
                start: '2018-06-16T16:00:00'
            },
            {
                title: 'Plan B',
                start: '2018-06-11',
                end: '2018-06-13'
            },
            {
                title: 'Görüşme',
                start: '2018-06-12T10:30:00',
                end: '2018-06-12T12:30:00'
            },
            {
                title: 'Öğle yemeği',
                start: '2018-06-12T12:00:00'
            },
            {
                title: 'Görüşme',
                start: '2018-06-12T14:30:00'
            },
            {
                title: 'Gülümse Saat',
                start: '2018-06-12T17:30:00'
            },
            {
                title: 'Görüşme',
                start: '2018-06-12T20:00:00'
            },
            {
                title: 'Doğum günü parti',
                start: '2018-06-13T07:00:00'
            },
            {
                title: 'Google tıkla',
                url: 'http://google.com/',
                start: '2018-06-28'
            }
        ]
    });

});