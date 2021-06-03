Email.send({
    Host : "smtp.yourisp.com",
    Username : "hoangvuong1225@gmail.com",
    Password : "Hoangvuong1",
    To : 'hoangvuong1225@gmail.com',
    From : "hoangvuong1225@gmail.com",
    Subject : "This is the subject",
    Body : "And this is the body"
}).then(
  message => alert(message)
);