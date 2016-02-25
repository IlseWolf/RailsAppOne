//enable user to uses star raking system like in _new_comment 
$(document).on('ready page:load', function(){
    $('.rating').raty( { path: '/assets', scoreName: 'comment[rating]' });
});

//Showing user 'rating score' in _comments 
$(document).on('ready page:load', function(){
    $('.rating').raty( { path: '/assets', scoreName: 'comment[rating]' });
    $('.rated').raty({ path: '/assets',
      readOnly: true,
      score: function() {
        return $(this).attr('data-score');
      }
    });
});