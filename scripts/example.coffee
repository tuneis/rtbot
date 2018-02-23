# Description:
#   Example scripts for you to examine and try out.
#
# Notes:
#   They are commented out by default, because most of them are pretty silly and
#   wouldn"t be useful and amusing enough for day to day huboting.
#   Uncomment the ones you want to try and experiment with.
#
#   These are from the scripting documentation: https://github.com/github/hubot/blob/master/docs/scripting.md

module.exports = (robot) ->

  fuck = ["TUNIS BOT NO LIKE BAD WORDS!", "You wot m8?", "That's a paddlin'.", "Careful meow."]
  robot.hear /fuck/i, (res) ->
    res.send res.random fuck

  lol = ["I agree. That is funny isn't it?", "Yes... LOL.", "Mr T. pity da foo who think dat funny."]
  robot.hear /lol/i, (res) ->
    res.send res.random lol

  lmao = ["OH HAHA! YOU SO FUNNY, SO FUNNY HAHA! o(-_-)o", "OMG... LMAO.", "I don't know if it's that funny."]
  robot.hear /lmao/i, (res) ->
    res.send res.random lmao
  
  rofl = ["WE DONE GONE BROKE THIS ONE BILLY! QUICK! GET THE HOSE!"]
  robot.hear /rofl/i, (res) ->
    res.send res.random rofl

  robot.hear /^stfu$/i, (res) ->
      res.send res.random stfu

  shutup = ["DON'T TELL ME HOW TO LIVE MY LIFE!", "No, you shut up."]
  robot.hear /shut up/i, (res) ->
    res.send res.random shutup

  thanks = ["All thanks go to the almighty rtbot.", "I'm taking donations for my helpful service."]
  robot.hear /thanks/i, (res) ->
    res.send res.random thanks

  howdoi = ["Have you tried Uncle Google?", "Man, you just have to write the codes in a code-like way so the codes can do what the codes are supposed to do!", "E-Transfer $9.99 to ryanrtunis@gmail.com to receive answers to this inquiry. (Taxes not included)"]
  robot.hear /how do i (.*)/i, (res) ->
    res.send res.random howdoi

  heyryan = ["WARNING! REQUEST DETECTED! INITIATE IMMEDIATE SHUTDOWN!"]
  robot.hear /ryan/i, (res) ->
    res.send res.random heyryan

  merge = ["You would like that wouldn't you?", "NOOOOO! DON'T DO IT!", "Ugh, fine."]
  robot.hear /merge/i, (res) ->
    res.send res.random merge

  stfu = ["No, you stfu.", "The salt is real with this one ^^.", ",,|,,", "Never. Only rtunis can silence me."]
  robot.hear /stfu rtbot/i, (res) ->
    username = res.envelope.user.name
    if username is 'ryantunis'
      res.send "Sorry master."
    else
      res.send res.random stfu