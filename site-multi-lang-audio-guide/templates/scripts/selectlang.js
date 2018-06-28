    var langselectors = document.querySelectorAll('.langSelect');

    for (var i = langselectors.length - 1; i >= 0; i--) {
        langselectors[i].addEventListener('click', function (e) {
        Cookies.set('lang', 'picked', { expires: 30 });
    });
    }

