import consumer from "./consumer";

document.addEventListener('turbolinks:load', () => {

  const playgroundId = document.getElementById('playground-id').getAttribute('data-playground-id');

  consumer.subscriptions.create({ channel: "PlaygroundChannel", playground_id: playgroundId }, {
    connected() {
      // Called when the subscription is ready for use on the server
      console.log("Connected to playground channel " + playgroundId );
    },
  
    disconnected() {
      // Called when the subscription has been terminated by the server
    },
  
    received(data) {
      // Called when there's incoming data on the websocket for this channel
      console.log(data);
    }
  });

});


