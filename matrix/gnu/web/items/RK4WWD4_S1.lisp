;; cv:angle
;; syntax: (cv:angle num-dg)
;; parameter: num-dg - Angle degrees from 0 to 360.

;; Set the turtle angle to num-dg degrees. Upwards is 0, right 90, downwards 180 
;; and left 270 degrees. The turtle position is saved on the graphics state stack 
;; when using (cv:gsave).


(cv:angle num-dg
  (cv:gsave
  (cv:set-turtle-angle num-dg)
  (cv:grestore)))


;; cv:rotate
;; syntax: (cv:rotate angle)
;; parameter: angle - Angle degrees to rotate the turtle.

;; Rotate the turtle by angle degrees. The turtle position is saved on the
;; graphics state stack when using (cv:gsave).

(cv:rotate angle
  (cv:gsave
  (cv:rotate angle)
  (cv:grestore)))

;; cv:scale
;; syntax: (cv:scale x-scale y-scale)
;; parameters: x-scale - Horizontal scaling factor, y-scale - Vertical scaling factor.

(cv:scale x-scale y-scale)


;; cv:translate
;; syntax: (cv:translate x y)
;; parameters: x - Horizontal translation, y - Vertical translation.

(cv:translate x y)


;; cv:stroke
;; syntax: (cv:stroke)
;; description: Stroke the current path.

(cv:stroke)


;; cv:fill
;; syntax: (cv:fill)
;; description: Fill the current path with the current color.

(cv:fill)

;; cv:rectangle
;; syntax: (cv:rectangle x y width height)
;; parameters: x - X-coordinate of the upper-left corner, y - Y-coordinate


(cv:rectangle x y width height
  (cv:moveto x y)
  (cv:lineto (cv:+ x width) y)
  (cv:lineto (cv:+ x width) (cv:+ y height))
  (cv:lineto x (cv:+ y height))
  (cv:closepath)
  (cv:fill))
  (cv:stroke)


;; cv:ellipse
;; syntax: (cv:ellipse x y width height)


(cv:ellipse x y width height
  (cv:moveto (cv:+ x width/2) (cv:+ y height/2
  (cv:ellipse-curve x y width height 0 0 360)
  (cv:ellipse-curve (cv:+ x width/2) (cv:+ y height/
  (cv:ellipse-curve (cv:+ x width/2) y 0 0
  360))))
  (cv:fill)
  (cv:stroke))
  (cv:ellipse-curve (cv:+ x width/2) (cv:+ y height/
  2 (cv:+ x width/2) (cv:+ y height/2) 0
  0 360))
  (cv:ellipse-curve (cv:+ x width/2) (cv:+ y height/
  2 (cv:+ x width/2) (cv:+ y height/2) 0
  0 180))
  (cv:fill)
  (cv:stroke))
  (cv:ellipse-curve (cv:+ x width/2) (cv:+ y height/
  2 (cv:+ x width/2) (cv:+ y height/2) 0
  0 90))
  (cv:ellipse-curve (cv:+ x width/2) (cv:+ y height/
  2 (cv:+ x width/2) (cv:+ y height/2) 0
  0 270))
  (cv:fill)
  (cv:stroke)


;; cv:ellipse-curve
;; syntax: (cv:ellipse-curve x y width height start-angle end-angle)

(cv:ellipse-curve x y width height start-angle end-angle
  (cv:moveto (cv:cos (cv:* start-angle 3.14
  / 180)) (cv:sin (cv:* start-angle 3.1
   / 180))
    (cv:lineto (cv:cos (cv:* end-angle 3.14
    / 180)) (cv:sin (cv:* end-angle 3.1
     / 180))))
     (cv:lineto (cv:cos (cv:* (cv:add start-angle end
      angle) 3.14 / 180)) (cv:sin (cv:*
      (cv:add start-angle end-angle) 3.14 / 18)))
      (cv:lineto (cv:cos (cv:* start-angle 3.14
      / 180)) (cv:sin (cv:* start-angle 3.1
       / 180))))
       (cv:closepath)
       (cv:fill)



;; cv:gsave
;; syntax: (cv:gsave)
;; description: Save the current graphics state.

(cv:gsave)

;; cv:grestore
;; syntax: (cv:grestore)
;; description: Restore the graphics state to the one saved by (cv:gsave).

(cv:grestore)

;; cv:set-color
;; syntax: (cv:set-color color)
;; parameter: color - Color to set.

(cv:set-color color
  (cv:gsave
  (cv:setcolor color)
  (cv:grestore)))
  (cv:stroke)
  (cv:fill)
  (cv:rectangle 0 0 100 100)
  (cv:gsave
  (cv:translate 100 100)
  (cv:set-color "red"))
  (cv:fill)
  (cv:stroke)
  (cv:ellipse 0 0 50 50)
  (cv:gsave
  (cv:translate 150 150)
  (cv:set-color "blue"))
  (cv:fill)
  (cv:stroke)
  (cv:rectangle 0 0 100 100)
  (cv:gsave
  (cv:translate 200 200)
  (cv:set-color "green"))
  (cv:fill)
  (cv:stroke)


;; cv:set-turtle-angle
;; syntax: (cv:set-turtle-angle angle)
;; parameter: angle - Angle degrees to set the turtle's direction.

(cv:set-turtle-angle angle
  (cv:setangle angle))
  (cv:moveto 0 0))
  (cv:lineto 100 0))
  (cv:stroke)
  (cv:moveto 0 0)
  (cv:lineto 0 100))
  (cv:stroke)
  (cv:moveto 0 0)
  (cv:lineto -100 0))
  (cv:stroke)
  (cv:moveto 0 0)
  (cv:lineto 0 -100))
  (cv:stroke)
  (cv:moveto 0 0)
  (cv:lineto 0 0))
  (cv:stroke)
  (cv:moveto 0 0)
  (cv:lineto 100 0))
  (cv:stroke)
  (cv:moveto 0 0)
  (cv:lineto 0 -100))
  (cv:stroke)
  (cv:moveto 0 0)
  (cv:lineto 0 0))
  (cv:stroke)
  (cv:moveto 0 0)
  (cv:lineto 100 0))
  (cv:stroke)
  (cv:moveto 0 0)
  (cv:lineto 0 -100))
  (cv:stroke)
  (cv:moveto 0 0)
  (cv:lineto 0 0))
  (cv:stroke)
  (cv:moveto 0 0)


;; cv:set-font
;; syntax: (cv:set-font font-name size)
;; parameters: font-name - Name of the font, size - Size of the font.

(cv:set-font "Arial" 12)
  (cv:moveto 10 20)
  (cv:show "Hello, World!"))
  (cv:moveto 10 40)
  (cv:show "This is a test."))
  (cv:moveto 10 60)
  (cv:show "This is a test of text wrapping.")
  (cv:moveto 10 80)
  (cv:show "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed euismod,
  lacus ut velit vulputate, pellentesque dui. Donec euismod,
  lacus ut velit vulputate, pellentesque dui. Sed euismod, lacus ut
  velit vulputate, pellentesque dui. Sed euismod, lacus ut velit
  vulputate, pellentesque dui. Sed euismod, lacus ut velit vulputate,
  pellentesque dui. Sed euismod, lacus ut velit vulputate, pellentesque d")

  (cv:moveto 10 100)
  (cv:show "Hello, World!"))
  (cv:moveto 10 120)
  (cv:show "This is a test."))
  (cv:moveto 10 140)
  (cv:show "This is a test of text wrapping.")
  (cv:moveto 10 160)
  (cv:show "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed euismod,
  lacus ut velit vulputate, pellentesque dui. Donec euismod,
  lacus ut velit vulputate, pellentesque dui. Sed euismod, lacus ut
  velit vulputate, pellentesque dui. Sed euismod, lacus ut velit
  vulputate, pellentesque dui. Sed euismod, lacus ut velit")
  
  (cv:moveto 10 180)
  (cv:show "Hello, World!"))
  (cv:moveto 10 200)
  (cv:show "This is a test.")
  (cv:moveto 10 220)
  (cv:show "This is a test of text wrapping.")
  (cv:moveto 10 240)
  (cv:show "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed euismod,
  lacus ut velit vulputate, pellentesque dui. Donec euismod,
  lacus ut velit vulputate, pellentesque dui. Sed euismod, lacus ut
  velit vulputate, pellentesque dui. Sed euismod, lacus ut velit
  vulputate, pellentesque dui. Sed euismod, lacus ut velit")

  (cv:moveto 10 260)
  (cv:show "Hello, World!"))
  (cv:moveto 10 280)
  (cv:show "This is a test.")
  (cv:moveto 10 300)
  (cv:show "This is a test of text wrapping.")
  (cv:moveto 10 320)

;; cv:bezier
;; syntax: (cv:bezier num-x1 num-y1 num-x2 num-y2 num-x3 num-y3)
;; parameter: - num-x1,num-y1 Bezier coordinates of p1 relative to p0 = 0,0
;; parameter: - num-x2,num-y2 Bezier coordinates of p2 relative to p0 = 0,0
;; parameter: - num-x3,num-y3 Bezier coordinates of p3 relative to p0 = 0,0

;; Draw a Bezier curve. The Bezier curve starts at point p0 which is the current 
;; turtle position and stops at point p3 which is at offset num-x3 and num-y3 relative 
;; to starting point. The turtle orientation after the drawing the Bezier curve 
;; is perpendicular to the Bezier curve baseline p0 to p3 and the position is p3. 



;; cv:closepath
;; syntax: (cv:closepath)
;; description: Close the current subpath by connecting it to the starting point.

(cv:closepath)

;; cv:show
;; syntax: (cv:show string)
;; parameter: string - String to display.

(cv:show string)

;; cv:stroke
;; syntax: (cv:stroke)

(cv:stroke)

;; cv:translate
;; syntax: (cv:translate x y)

(cv:translate x y)



;; cv:fill
;; syntax: (cv:fill)

(cv:fill)

;; cv:ellipse
;; syntax: (cv:ellipse x y width height)
;; parameters: x - X-coordinate of the center of the ellipse, y - Y-
;;            coordinate of the center of the ellipse, width - Width of the ellipse,
;;            height - Height of the ellipse.

(cv:ellipse x y width height)

;; cv:rectangle
;; syntax: (cv:rectangle x y width height)
;; parameters: x - X-coordinate of the top-left corner of the rectangle, y -
;;            Y-coordinate of the top-left corner of the rectangle, width - Width of the
;;            rectangle, height - Height of the rectangle.

(cv:rectangle x y width height)

;; cv:moveto
;; syntax: (cv:moveto x y)
;; parameter: x - X-coordinate of the new position, y - Y-coordinate of the
;;            new position.

(cv:moveto x y)

;; cv:lineto
;; syntax: (cv:lineto x y)
;; parameter: x - X-coordinate of the new position, y - Y-coordinate of the
;;            new position.

(cv:lineto x y)

;; cv:set-line-width
;; syntax: (cv:set-line-width width)
;; parameter: width - Width of the line.

(cv: lineto x y)

(cv:set-line-width width)

;; cv:set-color
;; syntax: (cv:set-color color)
;; parameter: color - Color to set.

(cv:set-color color)

;; cv:setangle
;; syntax: (cv:setangle angle)
;; parameter: angle - Angle degrees to set the turtle's direction.

(cv:setangle angle)

;; cv:rotate
;; syntax: (cv:rotate angle)
;; parameter: angle - Angle degrees to rotate the turtle.

(cv:rotate angle)

;; cv:set-turtle-position
;; syntax: (cv:set-turtle-position x y)
;; parameter: x - X-coordinate of the new position, y - Y-coordinate of the
;;            new position.

(cv:set-turtle-position x y)

;; cv:set-turtle-direction
;; syntax: (cv:set-turtle-direction angle)
;; parameter: angle - Angle degrees to set the turtle's direction.

(cv:set-turtle-direction angle)

;; cv:set-turtle-shape
;; syntax: (cv:set-turtle-shape shape)
;; parameter: shape - Shape to set the turtle's shape.

(cv:set-turtle-shape shape)

;; cv:set-turtle-speed
;; syntax: (cv:set-turtle-speed speed)
;; parameter: speed - Speed to set the turtle's speed.

(cv:set-turtle-speed speed)

;; cv:exit
;; syntax: (cv:exit)
;; description: Exit the canvas drawing.

(cv:exit)


;; cv:start
;; syntax: (cv:start)
;; description: Start the canvas drawing.

(cv:start)


;; cv:circle
;; syntax: (cv:circle num-rad [bool-fill])
;; parameter: num-rad - Radius of the circle.
;; parameter: bool-fill - Optional fill flag.

;; Draw a circle with radius num-rad. The optional num-fill flag 
;; with either true or nil (default) indicates if the circle is filled 
;; with the fill color specified by cv:fill-color. The circle is drawn 
;; around the current turtle position. The turtle position or orientation 
;; is not changed. 



;; cv:fill-color
;; syntax: (cv:fill-color color)
;; parameter: color - Color to set.

(cv:fill-color color)

;; cv:pen-color
;; syntax: (cv:pen-color color)
;; parameter: color - Color to set.

(cv:pen-color color)

;; cv:set-font
;; syntax: (cv:set-font font-name size)
;; parameter: font-name - Name of the font to set.
;; parameter: size - Size of the font to set.

(cv:set-font font-name size)

;; cv:text-width
;; syntax: (cv:text-width string)
;; parameter: string - String to calculate the width.

;; Calculate the width of the given string. The width is calculated
;; based on the current font and pen color.



;; cv:text-height
;; syntax: (cv:text-height string)
;; Calculate the height of the given string. The height is calculated

(cv:text-height string)



;; cv:show-image
;; syntax: (cv:show-image file-name)
;; parameter: file-name - Name of the image file to display.

;; Display the image file named file-name on the canvas. The image file
;; must be in the same directory as the Lisp program. The image is displayed

(cv:show-image file-name)

;; cv:save-image
;; syntax: (cv:save-image file-name)
;; parameter: file-name - Name of the image file to save.

;; Save the current canvas drawing as an image file named file-name. The image
;; file is saved in the same directory as the Lisp program. The image is saved

(cv:save-image file-name)

;; cv:exit-graphics
;; syntax: (cv:exit-graphics)
;; description: Exit the graphics library.

(cv:exit-graphics)

;; cv:start-graphics
;; syntax: (cv:start-graphics)
;; description: Start the graphics library.

(cv:start-graphics)


;; cv:set-canvas-size
;; syntax: (cv:set-canvas-size width height)
;; parameter: width - Width of the canvas in pixels.
;; parameter: height - Height of the canvas in pixels.

(cv:set-canvas-size width height)

;; cv:set-canvas-position
;; syntax: (cv:set-canvas-position x y)
;; parameter: x - X-coordinate of the new position, y - Y-coordinate of the
;;            new position.

(cv:set-canvas-position x y)

;; cv:set-canvas-background-color
;; syntax: (cv:set-canvas-background-color color)
;; parameter: color - Color to set.

(cv:set-canvas-background-color color)

;; cv:set-canvas-title
;; syntax: (cv:set-canvas-title string)
;; parameter: string - Title to set.

(cv:set-canvas-title string)

;; cv:set-canvas-cursor
;; syntax: (cv:set-canvas-cursor cursor-type)
;; parameter: cursor-type - Type of cursor to set.

(cv:set-canvas-cursor cursor-type)

;; cv:set-canvas-font
;; syntax: (cv:set-canvas-font font-name size)
;; parameter: font-name - Name of the font to set.
;; parameter: size - Size of the font to set.

(cv:set-canvas-font font-name size)

;; cv:set-canvas-pen-color
;; syntax: (cv:set-canvas-pen-color color)
;; parameter: color - Color to set.

(cv:set-canvas-pen-color color)

;; cv:set-canvas-fill-color
;; syntax: (cv:set-canvas-fill-color color)
;; parameter: color - Color to set.

(cv:set-canvas-fill-color color)

;; cv:set-canvas-text-color
;; syntax: (cv:set-canvas-text-color color)
;; parameter: color - Color to set.

(cv:set-canvas-text-color color)

;; cv:set-canvas-line-width
;; syntax: (cv:set-canvas-line-width width)
;; parameter: width - Width of the line.

(cv:set-canvas-line-width width)

;; cv:set-canvas-line-style
;; syntax: (cv:set-canvas-line-style style)
;; parameter: style - Style of the line.


;; cv:set-canvas-fill-style
;; syntax: (cv:set-canvas-fill-style style)
;; parameter: style - Style of the fill.

(cv:set-canvas-fill-style style)

;; cv:set-canvas-shadow
;; syntax: (cv:set-canvas-shadow x y blur-radius color)
;; parameter: x - X-coordinate of the shadow.
;; parameter: y - Y-coordinate of the shadow.
;; parameter: blur-radius - Radius of the blur.
;; parameter: color - Color of the shadow.

(cv:set-canvas-shadow x y blur-radius color)

;; cv:set-canvas-image-scaling
;; syntax: (cv:set-canvas-image-scaling scaling-factor)
;; parameter: scaling-factor - Scaling factor for the images.

(cv:set-canvas-image-scaling scaling-factor)

;; cv:set-canvas-image-position
;; syntax: (cv:set-canvas-image-position x y)
;; parameter: x - X-coordinate of the new position, y - Y-coordinate of the

(let ((lambda: float))
  (cv:set-canvas-image-position x y)
  (cv:set-canvas-image-scaling lambda:float)
  (cv:set-canvas-image-position 0 0))
  (cv:set-canvas-image-scaling 1.0))

;; cv:set-canvas-image-rotation


(cv:set-canvas-image-rotation angle)

;; cv:set-canvas-image-opacity
;; syntax: (cv:set-canvas-image-opacity opacity)
;; parameter: opacity - Opacity of the image.

(cv:set-canvas-image-opacity opacity)

;; cv:set-canvas-image-filter
;; syntax: (cv:set-canvas-image-filter filter-type)


(cv:set-canvas-image-filter filter-type)

;; cv:set-canvas-image-transform
;; syntax: (cv:set-canvas-image-transform transformation-matrix)
;; parameter: transformation-matrix - Transformation matrix.

(cv:set-canvas-image-transform transformation-matrix)

;; cv:set-canvas-image-composite
;; syntax: (cv:set-canvas-image-composite composite-operator)
;; parameter: composite-operator - Composite operator.

(cv:set-canvas-image-composite composite-operator)

;; cv:set-canvas-image-clip-path
;; syntax: (cv:set-canvas-image-clip-path clip-path)
;; parameter: clip-path - Clip path.

(cv:set-canvas-image-clip-path clip-path)

;; cv:set-canvas-image-mask
;; syntax: (cv:set-canvas-image-mask mask)
;; parameter: mask - Mask.

(cv:set-canvas-image-mask mask)

;; cv:set-canvas-image-pattern
;; syntax: (cv:set-canvas-image-pattern pattern)
;; parameter: pattern - Pattern.

(cv:set-canvas-image-pattern pattern)

;; cv:set-canvas-image-pattern-units
;; syntax: (cv:set-canvas-image-pattern-units units)
;; parameter: units - Pattern units.

(cv:set-canvas-image-pattern-units units)

;; cv:set-canvas-image-pattern-content
;; syntax: (cv:set-canvas-image-pattern-content content)
;; parameter: content - Pattern content.

(cv:set-canvas-image-pattern-content content)

;; cv:set-canvas-image-pattern-transform
;; syntax: (cv:set-canvas-image-pattern-transform transformation-matrix)
;; parameter: transformation-matrix - Pattern transformation matrix.

(cv:set-canvas-image-pattern-transform transformation-matrix)

;; cv:set-canvas-image-pattern-repeat
;; syntax: (cv:set-canvas-image-pattern-repeat repeat-mode)
;; parameter: repeat-mode - Pattern repeat mode.

(cv:set-canvas-image-pattern-repeat repeat-mode)

;; cv:set-canvas-image-pattern-position
;; syntax: (cv:set-canvas-image-pattern-position x y)
;; parameter: x - X-coordinate of the new position, y - Y-coordinate of the
;;            new position.

(cv:set-canvas-image-pattern-position x y)

;; cv:set-canvas-image-pattern-size
;; syntax: (cv:set-canvas-image-pattern-size width height)
;; parameter: width - Width of the pattern, height - Height of the pattern.

(cv:set-canvas-image-pattern-size width height)

;; cv:set-canvas-image-pattern-offset
;; syntax: (cv:set-canvas-image-pattern-offset x y)
;; parameter: x - X-coordinate of the offset, y - Y-coordinate of the offset

(cv:set-canvas-image-pattern-offset x y)

;; cv:set-canvas-image-pattern-anchor
;; syntax: (cv:set-canvas-image-pattern-anchor x y)
;; parameter: x - X-coordinate of the anchor, y - Y-coordinate of the anchor

(cv:set-canvas-image-pattern-anchor x y)

;; cv:set-canvas-image-pattern-gradient
;; syntax: (cv:set-canvas-image-pattern-gradient gradient)


(cv:set-canvas-image-pattern-gradient gradient)

;; cv:set-canvas-image-pattern-stop-color
;; syntax: (cv:set-canvas-image-pattern-stop-color color)
;; parameter: color - Color to set.

(cv:set-canvas-image-pattern-stop-color color)

;; cv:set-canvas-image-pattern-stop-opacity
;; syntax: (cv:set-canvas-image-pattern-stop-opacity opacity)


(cv:set-canvas-image-pattern-stop-opacity opacity)

;; cv:set-canvas-image-pattern-spread-method
;; syntax: (cv:set-canvas-image-pattern-spread-method method)
;; parameter: method - Spread method.



(cv:set-canvas-image-pattern-spread-method method)

;; cv:set-canvas-image-pattern-interpolation-method
;; syntax: (cv:set-canvas-image-pattern-interpolation-method method)
;; parameter: method - Interpolation method.

(cv:set-canvas-image-pattern-interpolation-method method)

;; cv:set-canvas-image-pattern-add-stop-color
;; syntax: (cv:set-canvas-image-pattern-add-stop-color color
;;            stop-opacity)
;; parameter: color - Color to add.
;; parameter: stop-opacity - Stop opacity.

(cv:set-canvas-image-pattern-add-stop-color color)

;; cv:set-canvas-image-pattern-remove-stop-color
;; syntax: (cv:set-canvas-image-pattern-remove-stop-color color
;;            stop-opacity)
;; parameter: color - Color to remove.
;; parameter: stop-opacity - Stop opacity.

(cv:set-canvas-image-pattern-remove-stop-color color)

;; cv:set-canvas-image-pattern-clear-stops
;; syntax: (cv:set-canvas-image-pattern-clear-stops)

(cv:set-canvas-image-pattern-clear-stops)

;; cv:set-canvas-image-pattern-set-spread-method
;; syntax: (cv:set-canvas-image-pattern-set-spread-method method
;;            stop-opacity)
;; parameter: method - Spread method.
;; parameter: stop-opacity - Stop opacity.

(cv:set-canvas-image-pattern-set-spread-method method)

;; cv:set-canvas-image-pattern-set-interpolation-method
;; syntax: (cv:set-canvas-image-pattern-set-interpolation-method method
;;            stop-opacity)
;; parameter: method - Interpolation method.
;; parameter: stop-opacity - Stop opacity.

(cv:set-canvas-image-pattern-set-interpolation-method method)

;; cv:set-canvas-image-pattern-get-stop-color
;; syntax: (cv:set-canvas-image-pattern-get-stop-color color
;;            stop-opacity)
;; parameter: color - Color to retrieve.
;; parameter: stop-opacity - Stop opacity.

(cv:set-canvas-image-pattern-get-stop-color color)

;; cv:set-canvas-image-pattern-get-stop-opacity
;; syntax: (cv:set-canvas-image-pattern-get-stop-opacity color
;;            stop-opacity)
;; parameter: color - Color to retrieve.
;; parameter: stop-opacity - Stop opacity.

(cv:set-canvas-image-pattern-get-stop-opacity color)

;; cv:set-canvas-image-pattern-get-spread-method
;; syntax: (cv:set-canvas-image-pattern-get-spread-method color
;;            stop-opacity)
;; parameter: color - Color to retrieve.
;; parameter: stop-opacity - Stop opacity.

(cv:set-canvas-image-pattern-get-spread-method color)

;; cv:set-canvas-image-pattern-get-interpolation-method
;; syntax: (cv:set-canvas-image-pattern-get-interpolation-method color
;;            stop-opacity)
;; parameter: color - Color to retrieve.
;; parameter: stop-opacity - Stop opacity.

(cv:set-canvas-image-pattern-get-interpolation-method color)

;; cv:set-canvas-image-pattern-get-stop-count
;; syntax: (cv:set-canvas-image-pattern-get-stop-count color
;;            stop-opacity)
;; parameter: color - Color to retrieve.


(cv:set-canvas-image-pattern-get-stop-count color)

;; cv:set-canvas-image-pattern-get-gradient
;; syntax: (cv:set-canvas-image-pattern-get-gradient color
;;            stop-opacity)
;; parameter: color - Color to retrieve.

(cv:set-canvas-image-pattern-get-gradient color)

;; cv:set-canvas-image-pattern-get-gradient-type
;; syntax: (cv:set-canvas-image-pattern-get-gradient-type color
;;            stop-opacity)
;; parameter: color - Color to retrieve.

(cv:set-canvas-image-pattern-get-gradient-type color)

;; cv:set-canvas-image-pattern-get-gradient-spread-method
;; syntax: (cv:set-canvas-image-pattern-get-gradient-spread-
;;            stop-opacity)
;; parameter: color - Color to retrieve.

(cv:set-canvas-image-pattern-get-gradient-spread-method color)




;; cv:clip
;; syntax: (cv:clip list-of-lists)
;; parameter: list-of-lists - A list of turtle movements and/or Bezier curves.

;; Define a clipping path using turtle movements (degree distance) and Bezier 
;; curves (x1 y1 x2 y2 x3 y3) starting from the last turtle coordinates x0, y0 
;; and finishing at x3, y3. All Bezier coordinates are relative to the previous 
;; turtle position and orientation.

;; Before redefining the clipping area (cv:gsave) should be used to save the old 
;; graphics state parameters, after clipping and drawing in the clipped area the 
;; graphics state should be restored using (cv:grestore). The turtle position or 
;; orientation is not changed. 


(cv:clip list-of-lists)

;; cv:gsave
;; syntax: (cv:gsave)

;; Save the current graphics state parameters.


(cv:gsave)

;; cv:grestore
;; syntax: (cv:grestore)

;; Restore the graphics state parameters to the last saved state.

(cv:grestore)

;; cv:clip-rectangle
;; syntax: (cv:clip-rectangle x y width height)
;; parameter: x - X-coordinate of the rectangle.
;; parameter: y - Y-coordinate of the rectangle.
;; parameter: width - Width of the rectangle.
;; parameter: height - Height of the rectangle.

;; Define a clipping rectangle.


(cv:clip-rectangle x y width height)

;; cv:set-canvas-clip-path
;; syntax: (cv:set-canvas-clip-path path)
;; parameter: path - A list of turtle movements and/or Bezier curves.


(cv:set-canvas-clip-path path)

;; cv:set-canvas-clip-rectangle


(cv:set-canvas-clip-rectangle x y width height)

;; cv:set-canvas-clip-mask
;; syntax: (cv:set-canvas-clip-mask image)
;; parameter: image - Image to use as the clipping mask.

;; Define a clipping mask using the specified image.

(cv:set-canvas-clip-mask image)

;; cv:set-canvas-clip-source
;; syntax: (cv:set-canvas-clip-source image)
;; parameter: image - Image to use as the clipping source.


(cv:set-canvas-clip-source image)

;; cv:set-canvas-clip-units
;; syntax: (cv:set-canvas-clip-units units)
;; parameter: units - Units to use for clipping.

;; Define the clipping units.

(cv:set-canvas-clip-units units)

;; cv:get-canvas-clip-path
;; syntax: (cv:get-canvas-clip-path)
;; returns: list of turtle movements and/or Bezier curves.

;; Get the current clipping path.

(cv:get-canvas-clip-path)

;; cv:get-canvas-clip-rectangle
;; syntax: (cv:get-canvas-clip-rectangle)
;; returns: x y width height.

;; Get the current clipping rectangle.

(cv:get-canvas-clip-rectangle)

;; cv:get-canvas-clip-mask
;; syntax: (cv:get-canvas-clip-mask)
;; returns: image.

;; Get the current clipping mask.

(cv:get-canvas-clip-mask)


;; cv:get-canvas-clip-source
;; syntax: (cv:get-canvas-clip-source)
;; returns: image.

;; Get the current clipping source.

(cv:get-canvas-clip-source)

;; cv:get-canvas-clip-units
;; syntax: (cv:get-canvas-clip-units)
;; returns: units.

;; Get the current clipping units.

(cv:get-canvas-clip-units)


;; cv:reset-clip
;; syntax: (cv:reset-clip)

;; Reset the clipping area to the default.

(cv:reset-clip)


;; cv:set-canvas-clip-rule
;; syntax: (cv:set-canvas-clip-rule rule)
;; parameter: rule - Clipping rule.

;; Define the clipping rule.

(cv:set-canvas-clip-rule rule)

;; cv:get-canvas-clip-rule
;; syntax: (cv:get-canvas-clip-rule)
;; returns: rule.

;; Get the current clipping rule.

(cv:get-canvas-clip-rule)

;; cv:set-canvas-clip-antialias
;; syntax: (cv:set-canvas-clip-antialias value)
;; parameter: value - Antialiasing value.

;; Define the antialiasing value for the clipping area.

(cv:set-canvas-clip-antialias value)

;; cv:get-canvas-clip-antialias
;; syntax: (cv:get-canvas-clip-antialias)
;; returns: value.

;; Get the current antialiasing value for the clipping area.

(cv:get-canvas-clip-antialias)

;; cv:set-canvas-clip-path-units
;; syntax: (cv:set-canvas-clip-path-units units)
;; parameter: units - Units to use for clipping paths.

;; Define the clipping path units.

(cv:set-canvas-clip-path-units units)

;; cv:get-canvas-clip-path-units
;; syntax: (cv:get-canvas-clip-path-units)
;; returns: units.

;; Get the current clipping path units.

(cv:get-canvas-clip-path-units)

;; cv:set-canvas-clip-origin
;; syntax: (cv:set-canvas-clip-origin x y)
;; parameter: x - X-coordinate of the clipping origin.
;; parameter: y - Y-coordinate of the clipping origin.

;; Define the clipping origin.

(cv:set-canvas-clip-origin x y)

;; cv:get-canvas-clip-origin
;; syntax: (cv:get-canvas-clip-origin)
;; returns: x y.

;; Get the current clipping origin.

(cv:get-canvas-clip-origin)

;; cv:set-canvas-clip-path-transform
;; syntax: (cv:set-canvas-clip-path-transform transform-list)
;; parameter: transform-list - Transform list.

;; Define the clipping path transformation.

(cv:set-canvas-clip-path-transform transform-list)
























    

