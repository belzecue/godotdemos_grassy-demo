# Grassy Demo

![The final product](Result.gif)

## Inspiration

A few days ago [/u/Cadburylion](https://old.reddit.com/user/Cadburylion/) posted to [reddit asking for help](https://old.reddit.com/r/godot/comments/fjvu33/grass_via_adding_animatedsprite_child_nodes_every/) with performance on a patch of grass.
They received some helpful comments and [posted an update](https://old.reddit.com/r/godot/comments/flnzo6/updated_grass_prototype_thanks_to_everyone_here/) some days later.

I wanted to recreate this beautiful visual.

## Tutorial

There's a video version of the tutorial [here](youtu.be).

In short, here are the steps to follow:

1. Set up player character.
2. Make a grow animation for the grass.
3. Set up the grass with a Sprite of the full height and an AnimatedSprite of the growth.
4. On collision with the player, start the grow animation, on animation_finished switch back to full height Sprite.
5. Add swaying of grass via shader to the Sprite
6. Place instances of grass via script in a YSort (where the player should also be located)

## Credits

For the player character I used [this asset](https://lionheart963.itch.io/4-directional-character) by [Warren Clark](https://lionheart963.itch.io/).
