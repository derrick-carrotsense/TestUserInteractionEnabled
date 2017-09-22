# TestUserInteractionEnabled

From Apple docs:
> When set to false, touch, press, keyboard, and focus events intended for the view are ignored and removed from the event queue.

But it appears that when userInteractionEnabled is set to false, touch events are sent to views below.

## Demo

![alt text](https://github.com/derrick-carrotsense/TestUserInteractionEnabled/blob/master/view_block.gif "video")

#### isUserInteractionEnabled = true
- blocks touch events to any views underneath

#### isUserInteractionEnabled = false
- sends touch events to the view underneath
