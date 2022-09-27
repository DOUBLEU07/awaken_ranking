function NUICallback(type, args) {
    fetch(`https://${GetParentResourceName()}/${type}`, {
        method: 'POST',
        headers: {
            'Content-Type': 'application/json; charset=UTF-8',
        },
        body: JSON.stringify(args)
    }).then(() => {})
}

function selectWeaponPhase(pos, count_poolcue, count_machete, count_bottle, count_knuckle) {
    if (pos === 'first') {
        $('[data-weapon="WEAPON_POOLCUERANKING"].to-select').find('span').text(count_poolcue);
        $('[data-weapon="WEAPON_MACHETERANKING"].to-select').find('span').text(count_machete);
        $('[data-weapon="WEAPON_BOTTLERANKING"].to-select').find('span').text(count_bottle);
        $('[data-weapon="WEAPON_KNUCKLERANKING"].to-select').find('span').text(count_knuckle);

        setTimeout(() => {
            $('.selectWeaponPhase').fadeIn();
            $('.selectWeaponPhase').css('display', 'flex');
        }, 350);
    } else if (pos === 'two') {
        $('[data-weapon="WEAPON_POOLCUERANKING"].to-select').find('span').text(count_poolcue);
        $('[data-weapon="WEAPON_MACHETERANKING"].to-select').find('span').text(count_machete);
        $('[data-weapon="WEAPON_BOTTLERANKING"].to-select').find('span').text(count_bottle);
        $('[data-weapon="WEAPON_KNUCKLERANKING"].to-select').find('span').text(count_knuckle);

        setTimeout(() => {
            $('.selectWeaponPhase').fadeIn();
            $('.selectWeaponPhase').css('display', 'flex');
        }, 350);
    } else if (pos === 'three') {
        $('[data-weapon="WEAPON_POOLCUERANKING"].to-select').find('span').text(count_poolcue);
        $('[data-weapon="WEAPON_MACHETERANKING"].to-select').find('span').text(count_machete);
        $('[data-weapon="WEAPON_BOTTLERANKING"].to-select').find('span').text(count_bottle);
        $('[data-weapon="WEAPON_KNUCKLERANKING"].to-select').find('span').text(count_knuckle);

        setTimeout(() => {
            $('.selectWeaponPhase').fadeIn();
            $('.selectWeaponPhase').css('display', 'flex');
        }, 350);
    } else if (pos === 'four') {
        $('[data-weapon="WEAPON_POOLCUERANKING"].to-select').find('span').text(count_poolcue);
        $('[data-weapon="WEAPON_MACHETERANKING"].to-select').find('span').text(count_machete);
        $('[data-weapon="WEAPON_BOTTLERANKING"].to-select').find('span').text(count_bottle);
        $('[data-weapon="WEAPON_KNUCKLERANKING"].to-select').find('span').text(count_knuckle);

        setTimeout(() => {
            $('.selectWeaponPhase').fadeIn();
            $('.selectWeaponPhase').css('display', 'flex');
        }, 350);
    } else if (pos === 'five') {
        $('[data-weapon="WEAPON_POOLCUERANKING"].to-select').find('span').text(count_poolcue);
        $('[data-weapon="WEAPON_MACHETERANKING"].to-select').find('span').text(count_machete);
        $('[data-weapon="WEAPON_BOTTLERANKING"].to-select').find('span').text(count_bottle);
        $('[data-weapon="WEAPON_KNUCKLERANKING"].to-select').find('span').text(count_knuckle);

        setTimeout(() => {
            $('.selectWeaponPhase').fadeIn();
            $('.selectWeaponPhase').css('display', 'flex');
        }, 350);
    } else if (pos === 'six') {
        $('[data-weapon="WEAPON_POOLCUERANKING"].to-select').find('span').text(count_poolcue);
        $('[data-weapon="WEAPON_MACHETERANKING"].to-select').find('span').text(count_machete);
        $('[data-weapon="WEAPON_BOTTLERANKING"].to-select').find('span').text(count_bottle);
        $('[data-weapon="WEAPON_KNUCKLERANKING"].to-select').find('span').text(count_knuckle);

        setTimeout(() => {
            $('.selectWeaponPhase').fadeIn();
            $('.selectWeaponPhase').css('display', 'flex');
        }, 350);
    } else if (pos === 'seaven') {
        $('[data-weapon="WEAPON_POOLCUERANKING"].to-select').find('span').text(count_poolcue);
        $('[data-weapon="WEAPON_MACHETERANKING"].to-select').find('span').text(count_machete);
        $('[data-weapon="WEAPON_BOTTLERANKING"].to-select').find('span').text(count_bottle);
        $('[data-weapon="WEAPON_KNUCKLERANKING"].to-select').find('span').text(count_knuckle);

        setTimeout(() => {
            $('.selectWeaponPhase').fadeIn();
            $('.selectWeaponPhase').css('display', 'flex');
        }, 350);
    } else if (pos === 'eight') {
        $('[data-weapon="WEAPON_POOLCUERANKING"].to-select').find('span').text(count_poolcue);
        $('[data-weapon="WEAPON_MACHETERANKING"].to-select').find('span').text(count_machete);
        $('[data-weapon="WEAPON_BOTTLERANKING"].to-select').find('span').text(count_bottle);
        $('[data-weapon="WEAPON_KNUCKLERANKING"].to-select').find('span').text(count_knuckle);

        setTimeout(() => {
            $('.selectWeaponPhase').fadeIn();
            $('.selectWeaponPhase').css('display', 'flex');
        }, 350);
    } else if (pos === 'nine') {
        $('[data-weapon="WEAPON_POOLCUERANKING"].to-select').find('span').text(count_poolcue);
        $('[data-weapon="WEAPON_MACHETERANKING"].to-select').find('span').text(count_machete);
        $('[data-weapon="WEAPON_BOTTLERANKING"].to-select').find('span').text(count_bottle);
        $('[data-weapon="WEAPON_KNUCKLERANKING"].to-select').find('span').text(count_knuckle);

        setTimeout(() => {
            $('.selectWeaponPhase').fadeIn();
            $('.selectWeaponPhase').css('display', 'flex');
        }, 350);
    }
}