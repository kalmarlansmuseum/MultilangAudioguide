var nextButton = document.getElementById("nextButton");


Amplitude.init({
              "bindings": {
                37: 'prev',
                39: 'next',
                32: 'play_pause'
              },
              "songs": [
                  {
                      "name": config.title,
                      //"artist": "Artist Name",
                      //"album": "Album Name",
                      "url": config.audio,
                      "cover_art_url": config.cover
                  }
              ],
              "callbacks": {
                           'song_change': function(){
                              nextButton.classList.add("uk-animation-shake");
                              setTimeout('nextButton.classList.remove("uk-animation-shake")', 2000);
                           }
                       }
            });


/*
Handles a click on the song played progress bar.
*/

document.getElementById('song-played-progress').addEventListener('click', function( e ){
  var offset = this.getBoundingClientRect();
  var x = e.pageX - offset.left;
  Amplitude.setSongPlayedPercentage( ( parseFloat( x ) / parseFloat( this.offsetWidth) ) * 100 );
});