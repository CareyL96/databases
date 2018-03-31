var db = require('../db');

module.exports = {
  messages: {
    get: function () {
      db.connect(function (err) {
        if (err) throw err;
        db.query(`SELECT Text 
                  FROM messages 
                  WHERE RoomID 
                  IN 
                  (SELECT RoomID 
                  FROM rooms 
                  WHERE Roomname = classname?????)`)
      });
    }, // a function which produces all the messages
    post: function () {

    } // a function which can be used to insert a message into the database
  },

  users: {
    // Ditto as above.
    get: function () {
      db.connect(function (err) {
        if (err) throw err;
        db.query(`SELECT Text 
                  FROM messages 
                  WHERE RoomID
                  IN 
                  (SELECT RoomID 
                  FROM rooms 
                  WHERE Roomname = classname?????)
                  AND UserID 
                  IN
                  (SELECT UserID
                  FROM users
                  WHERE Username = users????????`);
      });
    },
    post: function () {}
  }
};

