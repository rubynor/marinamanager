// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

// Oppgave:
// Bør implementeres basert på hvor mange piers man har,
// hvor mange berths man har. Hver celle bør være clickable,
// slik at man får opp hvilken båt som ligger der nå, eller om plassen er ledig.
// $(document).on('turbolinks:load', draw);
//
// function draw() {
//   var canvas = document.getElementById("canvas1");
//   var ctx = canvas.getContext("2d");
//   var totBerths = 6;
//   var sides = 1;
//   var width = 100;
//   var height = 60;
//   canvas.addEventListener('click', handleClick);
//
//   function getMousePos(c, evt) {
//     var rect = canvas.getBoundingClientRect();
//     return {
//       x: evt.clientX - rect.left,
//       y: evt.clientY - rect.top
//     };
//   }
//
//   function handleClick(e) {
//     var pos = getMousePos(canvas, e);
//     posx = pos.x;
//     posy = pos.y;
//
//     if (posx > 0 && posx < width && posy > 0 && posy < height) {
//       console.log("Båtplass 1")
//
//     } else console.log(posx + " " + posy);
//   }
//
//   ctx.lineWidth = 5;
//   ctx.beginPath();
//
//   if (sides == 1) {
//     for (i = 0; i <= totBerths; i++) {
//         ctx.moveTo(50, 0);
//         ctx.lineTo(50, 50 * i);
//         ctx.lineTo(0, 50 * i);
//         ctx.stroke();
//       }
//   }
//
//   if (sides == 2) {
//     // Første kolonne
//     for (i = 0; i <= (totBerths / 2); i++) {
//       ctx.moveTo(width, 0 * i);
//       ctx.lineTo(width, height * i);
//       ctx.moveTo(0, height * i);
//       ctx.lineTo(width, height * i);
//       ctx.stroke();
//     }
//
//     // Andre kolonne
//     for (i = 0; i <= (totBerths / 2); i++) {
//       ctx.moveTo(width, 0)
//       ctx.lineTo(width, height * i);
//       ctx.lineTo(width * 2, height * i);
//       ctx.stroke();
//     }
//   }
//
// }
