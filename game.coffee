undum.game.id = "ac196662-11ac-11e4-aaef-8b0f8bf3404a"
undum.game.version = "1.0"

undum.game.situations =
  intro:      new undum.SimpleSituation(
    """
    <p>
    Каждый год я прихожу на берег озера. Возле высокой <a href="./tree">сосны</a> лежит огромный камень.
    </p>
    """,
  actions:
    "tree": """<p>Дерево как дерево. Длинная ветка</p>"""
  ,
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
  )

undum.game.start = "intro"

undum.game.init = (character, system) ->
  character.qualities.time = 1
