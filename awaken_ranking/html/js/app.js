$(document).ready(() => {
    window.addEventListener('message', event => {
        let action = event.data.action;
        let pos = event.data.pos;
        let count_poolcue = event.data.count_poolcue;
        let count_machete = event.data.count_machete;
        let count_bottle = event.data.count_bottle;
        let count_knuckle = event.data.count_knuckle;
        if (action === 'start-weapon') {
            selectWeaponPhase(event.data.pos, event.data.count_poolcue, event.data.count_machete, event.data.count_bottle, event.data.count_knuckle);
            $('.to-select').data('pos', pos);
            $('.to-select').data('count_poolcue', count_poolcue);
            $('.to-select').data('count_machete', count_machete);
            $('.to-select').data('count_bottle', count_bottle);
            $('.to-select').data('count_knuckle', count_knuckle);

        }

    });
    $('.close-button').click(function() {
        $('.selectWeaponPhase').fadeOut();
        NUICallback('focusoff', {});
    });

    $('.to-select').click(function() {
        let weapon = $(this).data('weapon');
        let pos = $(this).data('pos');
        let count_poolcue = $(this).data('count_poolcue');
        let count_machete = $(this).data('count_machete');
        let count_bottle = $(this).data('count_bottle');
        let count_knuckle = $(this).data('count_knuckle');

        $('.selectWeaponPhase').fadeOut();

        NUICallback('selectWeapon', {
            weapon: weapon,
            pos: pos,
            count_poolcue: count_poolcue,
            count_machete: count_machete,
            count_bottle: count_bottle,
            count_knuckle: count_knuckle
        });
    });
});