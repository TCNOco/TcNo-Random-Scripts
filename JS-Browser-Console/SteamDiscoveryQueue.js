// Unfortunately I don't remember the origin of this script, but it's super useful.
// https://store.steampowered.com/explore/

// Define a function called "Queue" that takes a single argument, x
var Queue = function(x) {
    // Log the current value of x to the console
    console.log('Current queue: ' + ++x);

    // Send a POST request to generate a new discovery queue on the Steam store website
    jQuery.post('https://store.steampowered.com/explore/generatenewdiscoveryqueue', {
        sessionid: g_sessionID,
        queuetype: 0
    }).done(function(data) {
        // When the POST request is successful, create an array to hold multiple POST requests
        var requests = [];

        // Loop through each item in the queue returned by the POST request
        for (var i = 0; i < data.queue.length; i++) {
            // Create a new POST request for each item in the queue, to remove it from the queue
            requests.push(jQuery.post('https://store.steampowered.com/app/10', {
                appid_to_clear_from_queue: data.queue[i],
                sessionid: g_sessionID
            }));
        }

        // When all of the POST requests have completed, check if we've reached the maximum number of iterations (3)
        // If not, call the Queue function again with an incremented value of x
        // If we have reached the maximum number of iterations, reload the page
        jQuery.when.apply(jQuery, requests).done(function() {
            if (x < 3) {
                Queue(x);
            } else {
                window.location.reload();
            }
        });
    });
};

// Call the Queue function with an initial value of 0 to start the process
Queue(0);
