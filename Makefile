all:
	lessc style.less >style.css
	coffee -c game.coffee
