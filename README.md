This is a multi-function postprocess shader for [GZDoom 3.2.5+](https://zdoom.org/) that supports various effects which can be combined together. They are mostly based on a 3d simplex (perlin) noise function such as texture distortion and tint, in addition to some trippy effects like lerping the hue, saturation, or value.

Texture distortion, subtraction, and tint:

![Nukage shader](https://eliot.s3.amazonaws.com/media/doom/nukage.gif)

HSV shift animation:

![HSV shift animation](https://eliot.s3.amazonaws.com/media/doom/animhsv.gif)

The root of this repo can be loaded as a `-file` by GZDoom, or you can use a pk3 from the releases section.

# CVars / Uniforms

Shader uniforms can be controlled from ZScript or using CVars. Here are the available CVars for tweaking the uniforms:

| CVar | Default | Description |
|:-----|:--------|:------------|
|`timescale`|`0.005`| how quickly to run the noise permutations |
|`scale `|`1`| uniform scale (zoom) of 2d noise plane |
|`distortion`|`0.05`|How much to distort texture. `0` means no distorition. Values higher than about `0.3` will make the game unplayable but look cool...|
|`subtractive`|`0.25`|amount of color to subtract (darken) the screen by based on noise function, `0` means no subtraction.|
|`animh`|`true`|Animate hue?|
|`anims`|`true`|Animate saturation?|
|`animv`|`true`|Animate value?|
|`tintr`|`0`|Red channel additive tint|
|`tintg`|`0`|Green channel additive tint|
|`tintb`|`0`|Blue channel additive tint|