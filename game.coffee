converter = new Showdown.converter()

undum.game.id = "ac196662-11ac-11e4-aaef-8b0f8bf3404a"
undum.game.version = "1.0"

undum.game.situations =
  intro:      new undum.SimpleSituation(
    converter.makeHtml("""
    Первая луна июля. Каждый год я прихожу на берег [озера,](./lake) когда над ним начинает подниматься туман.

    На скалистом берегу, на метр выше воды, находится маленькая поляна, отгороженная большим камнем. Посреди неё стоит высокая сосна. Здесь я сажусь и [наблюдаю.](lake)
    """),
  actions:
    "lake":
      converter.makeHtml("""
      На самом деле это – затопленный карьер. Но сейчас в нём есть мелкая рыба, а на берегах растут сосны.

      Мне всё равно, даже если поодаль со всех сторон стоят высотные дома.
      """)
  ),

  lake: new undum.SimpleSituation(
    converter.makeHtml("""
    Туман сгущается, и, когда из-за города выходит луна, воды уже не видно.
    """),
  )

undum.game.start = "intro"

undum.game.init = (character, system) ->
  character.qualities.time = 1

###
  enter: (character, system, from) ->
    if character.qualities.time <= 2
      system.write(
        """
        <p>
        Her bright, blood red lips had caught my sight when I came in. But when you’re in my line of work, you learn to not let your glances show. She hesitated for a full five minutes, or however long it took for Elroy to mix my drink. She said, in a voice that betrayed nothing but polite inq’ry, perhaps the slightest hint of desperation, “Is this seat taken?”
        </p>
        """
      )
    else
      system.write(
       """
        <p>TBW</p>
        """
      )
###
