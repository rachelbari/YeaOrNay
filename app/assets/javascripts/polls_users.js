$(document).on('turbolinks:load', function() {

        var yeaPoll = function(poll_id){
            $.ajax({
                    url: '/polls_users' ,
                    type: 'POST',
                    data: {
                        polls_users: {
                            poll_id: poll_id,
                            yea: true,
                            nay: false,
                        }
                    },
                    success: function(result)   {

                        console.log("yeapoll");
          
                    },
                    error: function(err)    {
                        console.log(err);
                    }
            }); 
        };

        var nayPoll = function(poll_id){
            $.ajax({
                    url: '/polls_users' ,
                    type: 'POST',
                    data: {
                        polls_user: {
                            poll_id: poll_id,
                            nay: true,
                            yea: false,
                        }
                    },
                    success: function(result)   {

                    },
                    error: function(err)    {
                        console.log(err);
                    }
            }); 
        };


        $('.yea-button').click(function(e){
                    e.preventDefault()

                    var poll_id = (this.id.slice(8))
                    console.log(poll_id);
                    yeaPoll(poll_id);
          });

});