/**
 * 매칭 디테일
 */

const like = document.querySelector('.likeButton');
const heart = document.querySelector('.heart');
const matching = document.querySelector('.matching_Btn');

like.addEventListener('click', () => {
    if (heart.style.display != 'block') {
        heart.style.display = 'block';
        return;
    }
    heart.style.display = 'none';
});

// matching.addEventListener('mouseover', () => {
//     matching.style.color = 'yellow';
// });

// matching.addEventListener('mouseout' () => {
//     matching.style.color = "white";
// })

matching.addEventListener(
    'mouseover',
    function (event) {
        //highlight the mouseover target
        event.target.style.color = 'yellow';
    },
    false
);

matching.addEventListener(
    'mouseout',
    function (event) {
        // highlight the mouseout target
        event.target.style.color = 'white';
    },
    false
);
