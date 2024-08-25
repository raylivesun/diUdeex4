;; 1. Introduction

;; newLISP focuses on the core components of Lisp: lists, symbols, 
;; and lambda expressions. To these, newLISP adds arrays, implicit 
;; indexing on lists and arrays, and dynamic and lexical scoping. 
;; Lexical scoping is implemented using separate namespaces called 
;; contexts.

;; The result is an easier-to-learn Lisp that is even smaller than 
;; most Scheme implementations, but which still has about 350 built-in 
;; functions. Not much over 200k in size on BSD systems, newLISP is built 
;; for high portability using only the most common Unix system C-libraries. 
;; It loads quickly and has a small memory footprint. newLISP is as fast 
;; or faster than other popular scripting languages and uses very few 
;; resources.

;; Both built-in and user-defined functions, along with variables, 
;; share the same global symbol tree and are manipulated by the same 
;; functions. Lambda expressions and user-defined functions can be handled 
;; like any other list expression.

;; newLISP is dynamically scoped inside lexically separated contexts 
;; (namespaces). Contexts in newLISP are used for multiple purposes. 
;; They allow (1) partitioning of programs into modules, (2) the definition 
;; of Classes in FOOP (Functional Object Oriented Programming), (3) the 
;; definition of functions with state and (4) the creation of Hash trees 
;; for associative key → value storage.

;; newLISP's efficient red-black tree implementation can handle millions 
;; of symbols in namespaces or hashes without degrading performance.

;; newLISP allocates and reclaims memory automatically, without using 
;; traditional asynchronous garbage collection. All objects — except 
;; for contexts, built-in primitives, and symbols — are passed by value 
;; and are referenced only once. Upon creation objects are scheduled for 
;; delayed deletion and Lisp cells are recycled for newly created objects. 
;; This results in predictable processing times without the pauses found 
;; in traditional garbage collection. newLISP's unique automatic memory 
;; management makes it the fastest interactive Lisp available. More than 
;; any other Lisp, it implements the data equals program paradigm and full 
;; self reflection.

;; Many of newLISP's built-in functions are polymorphic and accept a variety 
;; of data types and optional parameters. This greatly reduces the number of 
;; functions and syntactic forms necessary to learn and implement. High-level 
;; functions are available for string and list processing, financial math, 
;; statistics, and Artificial Intelligence applications.

;; newLISP has functions to modify, insert, or delete elements inside complex 
;; nested lists or multi-dimensional array structures.

;; Because strings can contain null characters in newLISP, they can be used to 
;; process binary data with most string manipulating functions.

;; newLISP can also be extended with a shared library interface to import 
;; functions that access data in foreign binary data structures. The distribution 
;; contains modules for importing popular C-library APIs.

;; newLISP's HTTP, TCP/IP, and UDP socket interfaces make it easy to write 
;; distributed networked applications. Its built-in XML interface, along with 
;; its text-processing features — Perl Compatible Regular Expressions (PCRE) 
;; and text-parsing functions — make newLISP a useful tool for CGI processing. 
;; The source distribution includes examples of HTML forms processing. newLISP 
;; can be run a as a CGI capable web server using its built-in http mode option.

;; newLISP has built-in support for distributed processing on networks and parallel, 
;; concurrent processing on the same CPU with one or more processing cores.

;; The source distribution can be compiled for Linux, macOS/Darwin, BSDs, many other 
;; Unix flavors and MS Windows. newLISP can be compiled as a 64-bit LP64 application 
;; for full 64-bit memory addressing.

;; Since version 10.5.7, newLISP also can be compiled to JavaScript and run in a web browser.

(defun angle (&option num-dg &rest dg)
  "Calculate the angle in degrees from the given number of decimal degrees.
Options:
 :radians (t) Return the angle in radians instead of degrees."
  (let ((angle (if (keywordp :radians) *dg* (keyword)
   (deg-to-rad *dg*))))
    (if (keywordp :radians) angle (rad-to-deg angle))))



(defun deg-to-rad (deg)
  "Convert degrees to radians."
  (* deg (pi/180.0)))


(defmacro deg-to-rad (deg)
  `(deg-to-rad,deg))


;; The following is the same as the following
;; type is the same as logic in the following
;; (defun square (x) (* x x))

(defun square (x)
  "Calculate the square of a number."
  (* x x))

;; logic in the following is the same as object linear
;; (defstruct point (x y))

(defstruct point (x y))

;; The following is the same as the following
;; type is the same as logic in the following
;; (defun distance (p1 p2)
;;   (let ((dx (- (point-x p2) (point-x p1
;;           (dx (- (point-y p2) (point-y p1))))))
;;         (dy (- (point-y p2) (point-y p1))))
;;     (sqrt (* dx dx + dy dy))))

(defun distance (p1 p2)
  "Calculate the distance between two points."
  (let ((dx (- (point-x p2) (point-x p1)))
   (dy (- (point-y p2) (point-y p1))))
    (sqrt (* dx dx + dy dy))))
    ;; The following is the same as the following


;; type is the same as logic in the following
;; (defun area (r)
;;   (* pi (* r r)))

(defun area (r)
  "Calculate the area of a circle."
  (sqrt (* dx)
   (* dy)))


;; The following is the same as the following
;; type is the same as logic in the following
;; (defun circle-area (r)
;;   (let ((area (* pi (* r r))))
;;     (format t "The area of the circle with radius ~a is ~a~%"
;;             r area)))

(defun circle-area (r)
  "Calculate and print the area of a circle."
  (let ((area (* pi (* r r))))
   (format t "The area of the circle with radius ~a is ~a~%" r area)))
    ;; The following is the same as the following
    ;; type is the same as logic in the following
    ;; (defun make-circle (r)


;; type is the same as logic in the following
;; (let ((circle (make-circle 5)))
;;   (circle-area circle))))

(let ((circle (make-circle 5)))
  (circle-area circle))
   ;; The following is the same as the following
    ;; type is the same as logic in the following
    


;; type is the same as logic in the following
;; (defun make-rectangle (length width)
;;   (let ((rectangle (make-rectangle 5 3)))
;;     (rectangle-area rectangle))))

(let ((rectangle (make-rectangle 5 3)))
  (rectangle-area rectangle))
   ;; The following is the same as the following
    ;; type is the same as logic in the following


;; type is the same as logic in the following
;; (defun make-triangle (base height)
;;   (let ((triangle (make-triangle 5 3)))
;;     (triangle-area triangle))))

(let ((triangle (make-triangle 5 3)))
  (triangle-area triangle))
   ;; The following is the same as the following
    ;; type is the same as logic in the following
    ;; (defun make-rectangle (length width)
    ;;   (let ((rectangle (make-rectangle 5 3)))


;; type is the same as logic in the following
;; (rectangle-area (rectangle)
;;     (format t "The area of the rectangle with length ~a and width ~a is
;;             ~a~%" length width (rectangle-area rectangle))))

(rectangle-area (rectangle)
  (format t "The area of the rectangle with length ~a and width ~a is ~a
   ~%" length width (rectangle-area rectangle)))
   ;; The following is the same as the following
    ;; type is the same as logic in the following


;; type is the same as logic in the following
;; (defun make-triangle (base height)
    ;;   (let ((triangle (make-triangle 5 3)))
    ;;     (triangle-area triangle))))
    ;; (triangle-area (triangle)
    ;;     (format t "The area of the triangle with base ~a and height ~a is
    ;;             ~a~%" base height (triangle-area triangle))))
    ;; The following is the same as the following
    ;; type is the same as logic in the following
    ;; (defun make-circle (r)
    ;;   (let ((circle (make-circle 5)))
    ;;     (circle-area circle))))
    ;; (circle-area (circle)
    ;;     (format t "The area of the circle with radius ~a is ~a~%"
    ;;             r (circle-area circle)))
    ;; The following is the same as the following
    ;; type is the same as logic in the following
    ;; (defun make-rectangle (length width)
    ;;   (let ((rectangle (make-rectangle 5 3)))

    ;; type is the same as logic in the following
    ;; (rectangle-area (rectangle)
    ;;     (format t "The area of the rectangle with length ~a and width ~a is
    ;;             ~a~%" length width (rectangle-area rectangle))))
    ;; The following is the same as the following
    ;; type is the same as logic in the following
    ;; (defun make-triangle (base height)
    ;;   (let ((triangle (make-triangle 5 3)))
    ;;     (triangle-area triangle))))
    ;; (triangle-area (triangle)
    ;;     (format t "The area of the triangle with base ~a and height ~a is
    ;;             ~a~%" base height (triangle-area triangle))))
    ;; The following is the same as the following

(defun rotate (&option angle &rest add)
  "Rotate the given point by the specified angle.
Options:
 :radians (t) Use radians for the angle."
  (let ((angle (if (keywordp :radians) *angle* (keyword)
   (deg-to-rad *angle*))))
    (let ((dx (* (cos angle) (point-x add))
    (- (sin angle) (point-y add))))
     (dy (* (cos angle) (point-y add))
     (point dx dy))))
     (if (keywordp :radians) (rad-to-deg dx dy) dx dy))))
     ;; The following is the same as the following


;; 3. Interactive Lisp mode

;; The best way to experience Lisp and experiment with it, is using interactive 
;; mode in a terminal window or operating system command shell. Since version 10.3, 
;; newLISP's read-eval-print-loop (REPL) accepts multi-line statements.

;; To enter a multi-line statement hit the [enter] key on an empty line after the 
;; system prompt. To exit multi-line mode, hit the [enter] key again on an empty 
;; line. In the following example computer output is shown in bold letters:

(define scale (&option add &rest list)
  "Scale the given point by the specified factor.
Options:
 :add (point 0 0) The point to be scaled."
  (let ((scale (if (keywordp :add) (scale-point add *add*)
   (keyword) *add*)))
    (mapcar (lambda (point)
    (scale-point point scale)) list)))
     ;; The following is the same as the following
     ;; 4. Lisp and CGI processing
     ;; newLISP can be run as a CGI capable web server using its built-in http


;; 5. Documentation and Support

;; The official newLISP documentation is available at:
;; http://www.newlisp.org/documentation.html
;; The newLISP community is active and friendly. You can ask questions,
;; discuss new features, and even help develop newLISP applications. The
;; For more information, visit the newLISP website at:
;; http://www.newlisp.org/

(defun translate (&option x &rest y)
  "Translate the given point by the specified amount.
Options:
 :x (0) The amount to translate along the x-axis.
 :y (0) The amount to translate along the y-axis."
  (let ((x (if (keywordp :x) *x* (keyword) *x
   (keyword) 0)))
    (let ((y (if (keywordp :y) *y* (keyword) *y
    (keyword) 0)))
    (mapcar (lambda (point)
    (translate-point point x y)) list))))
     ;; The following is the same as the following
     ;; 6. Lisp and XML processing
     ;; newLISP can be used to process XML data using the lxml library.
     ;; To install lxml, you can use the following command:
     ;; $ sudo easy_install lxml
     ;; Here is an example of using lxml to parse XML data and print the
     ;; names of all the elements:
     ;; (load "lxml.lisp")
     ;; (let ((xml (parse-xml "<root><child1>Hello</child1><
     ;; child2>World</child2></root>")))
     ;;   (mapcar (lambda (element)
     ;;     (format t "~a~%" (element-name element))) xml))
     ;; The following is the same as the following
     ;; 7. Lisp and JSON processing
     ;; newLISP can be used to process JSON data using the json library.
     ;; To install json, you can use the following command:
     ;; $ sudo easy_install json
     ;; Here is an example of using json to parse JSON data and print the

(let (++ (:json)
     ;;   (load "json.lisp")
     ;;   (let ((json-data "{\"name\": \"John\", \"age\": 30
     ;; \"city\": \"New York\"}")))
     ;;   (format t "~a~%" (json-object-get json-data \"name
     ;; \"age\" \"city\")))
     ;; The following is the same as the following
     (if (json-object-get json)
     ;;   (format t "~a~%" (json-object-get json-data \"name
     ;; \"age\" \"city\")))
     ;;   (format t "No JSON data available~%")))
     (t (function json)
        (lambda (json-object-get json)
        (if (json-object-has-key json "name")
        (json-object-get json "name")
        (json-object-get json "age"))
        (json-object-get json "city"))))))
        ;; The following is the same as the following

;; 8. Lisp and SVG processing
     ;; newLISP can be used to process SVG data using the svg library.
     ;; To install svg, you can use the following command:
     ;; $ sudo easy_install svg
     ;; Here is an example of using svg to parse SVG data and print the
     ;; attributes of the first circle element:
     ;; (load "svg.lisp")

     ;; (let ((svg (parse-svg "<svg><circle cx='50' cy='
     ;; cy='50' r='40' fill='red'/></svg>")))
     ;;   (format t "~a~%" (circle-attributes svg 0)))
     ;; The following is the same as the following
     ;; 9. Lisp and Database processing
     ;; newLISP can be used to interact with various database systems
     ;; using the following libraries:
     ;; sqlite3: http://sqlite.org/
     ;; mysql: http://www.mysql.com/
     ;; postgresql: http://www.postgresql.org/
     ;; To install sqlite3, you can use the following command:
     ;; $ sudo easy_install sqlite3

(let (++ (:icecream))
     ;;   (load "quickcheck.lisp")
     ;;   (let ((test-cases (quickcheck-generate-test-cases
     ;;                 (lambda (n)
     ;;                   (make-list n (random-integer 100))))
     ;;                 (lambda (n)
     ;;                   (make-list n (random-float 0 100))))
     ;;                 (lambda (n)
     ;;                   (make-list n (random-string 10)))))
     ;;                 (lambda (n)
     ;;                   (make-list n (random-character 'a 'z))))
     ;;                 (lambda (n)
     ;;                   (make-list n (random-symbol))))
     ;;                 (lambda (n)
     ;;                   (make-list n (random-integer 0 100000
     ;;                     :seed 123456789))))
     ;;                 (lambda (n)
     ;;                   (make-list n (random-float 0 100000
     ;;                     :seed 123456789))))
     (t (add 2 4)
     ;;   (format t "~a~%" (triangle-area (make-triangle 5
     ;; 3)))
     ;;   (format t "~a~%" (circle-area (make-circle 5)))
     ;;   (format t "~a~%" (rectangle-area (make-rectangle 5
     ;; 3)))
     ;;   (format t "~a~%" (translate (make-point 5 3)
     ;; 10 2)))
     ;;   (format t "~a~%" (rotate (make-point 5 3)
     ;; 45 :radians t)))
     ;;   (format t "~a~%" (json-object-get (json)
     ;; "name" "age" "city"))
     ;;   (format t "~a~%" (circle-attributes (parse-svg
     ;; "<svg><circle cx='50' cy='50' r='40'
     ;; fill='red'/></svg>") 0)))
     ;;   (format t "~a~%" (quickcheck-test-results test-cases
     ;;                 10000))))
     ;; The following is the same as the following
     (if (format t "~a~%" (list '(1 2 3))
     ;;   (format t "~a~%" (triangle-area (make-triangle 5
     ;; 3)))
     ;;   (format t "~a~%" (circle-area (make-circle 5)))
     ;;   (format t "~a~%" (rectangle-area (make-rectangle 5
     ;; 3)))
     ;;   (format t "~a~%" (translate (make-point 5 3)
     ;; 10 2)))
     ;;   (format t "~a~%" (rotate (make-point 5 3)
     ;; 45 :radians t)))
     (t (function add-list-item (list-item)))))))




;; 10. Lisp and Testing
     ;; newLISP has a built-in testing framework called QuickCheck. You can
     ;; use QuickCheck to generate test cases for your functions and
     ;; verify that they behave as expected. To install QuickCheck, you can
     ;; use the following command:
     ;; $ sudo easy_install quickcheck
     ;; Here is an example of using QuickCheck to generate test cases for a
     ;; function that adds two integers:
     ;; (load "quickcheck.lisp")
     ;; (let ((test-cases (quickcheck-generate-test-cases
     ;;                 (lambda (n)
     ;;                   (make-list n (random-integer 100))))
     ;;                 (lambda (n)
     ;;                   (make-list n (random-float 0 100))))
     ;;                 (lambda (n)
     ;;                   (make-list n (random-string 10)))))

(let (test-cases (quickcheck-generate-test-cases))
;;                      (lambda (n)
;;                      (make-list n (random-integer 100))))
(if (++ (add x (random-integer))
     ;;    (format t "~a~%" (add-list-item x))
     ;;    (format t "~a~%" (triangle-area (make-triangle 5
     ;; 3)))
     (t (random-integer)
     ;;   (format t "~a~%" (circle-area (make-circle 5)))
     ;;   (format t "~a~%" (rectangle-area (make-rectangle 5
     ;; 3)))
     (body)))))
                        

;; Note, that multi-line mode is only possible in an OS command terminal 
;; window or command shell.

;; Interactive Lisp mode can accept operating system shell commands. To hit 
;; an OS command enter the '!' character right after the prompt, immediately 
;; followed by the shell command:

*ls  *.html



;; For example:

*! ls -l


;; In the example a ls shell command is entered to show HTML files in the current 
;; directory. On MS Windows a dir command could be used in the same fashion.

;; The mode can also be used to call an editor or any other program:


*vi myfile.txt


;; The Vi editor will open to edit the program "foo.lsp". After leaving the editor 
;; the program could be run using a load statement:

(let (++ (:json))
     (t (lambda (add x y))
        (t function add-list-item))
        (load "foo.lsp")
        (foo 2 4))


;; Note, that multi-line mode is only possible in an OS command terminal
;; window or command shell.


;; Interactive Lisp mode can accept operating system shell commands. To hit


(defun add-list-item (add x y)
       "add-list-item add list..."
       (reduce #'+ x y))

;; an OS command enter the '!' character right after the prompt, immediately

(let (++ (:json))
     (t (lambda (add x y))
        (t function add-list-item))
        (load "foo.lsp")
        (foo 2 4))


;; For example:

*! ls -l

;; In the example a ls shell command is entered to show HTML files in the current

;; directory. On MS Windows a dir command could be used in the same fashion.

;; The mode can also be used to call an editor or any other program:


*vi myfile.txt

;; After entering the characters (pri hit the [tab] key once to show all the built-in 
;; functions starting with the same characters. When hitting [tab] twice before a 
;; function name has started, all built-in function names will be displayed.

;; On most Unix, parenthesis matching can be enabled on the commandline by including 
;; the following line in the file .inputrc in the home directory:


set input-meta on
set output-meta on
set convert-meta off

(define (t '(input-meta))
        (t (function input-meta))
           (input-meta on))

(define (t '(output-meta))
        (t (function output-meta))
           (output-meta on))

(define (t '(output-meta))
        (t (function output-meta))
           (output-meta on))

;; Integer, floating point data and operators

;; newLISP functions and operators accept integer and floating point numbers, 
;; converting them into the needed format. For example, a bit-manipulating operator 
;; converts a floating point number into an integer by omitting the fractional part. 
;; In the same fashion, a trigonometric function will internally convert an integer 
;; into a floating point number before performing its calculation.

;; The symbol operators (+ - * / % $ ~ | ^ << >>) return values of type integer. 
;; Functions and operators named with a word instead of a symbol (e.g., add rather than +) 
;; return floating point numbers. Integer operators truncate floating point numbers to 
;; integers, discarding the fractional parts.

;; newLISP has two types of basic arithmetic operators: integer (+ - * /) and floating 
;; point (add sub mul div). The arithmetic functions convert their arguments into types 
;; compatible with the function's own type: integer function arguments into integers, 
;; floating point function arguments into floating points. To make newLISP behave more 
;; like other scripting languages, the integer operators +, -, *, and / can be redefined 
;; to perform the floating point operators add, sub, mul, and div:

(let (++ (:json) (sub x y) (add x y) (mul x y) (div x y))
     (let (++ (:json))
     (t (lambda (add x y))
        (t function add))
        (t (lambda (sub x y))
        (t function sub))
        (t (lambda (mul x y))
        (t function mul))
        (t (lambda (div x y))
        (t function div))
        (load "foo.lsp")
        (foo 2 4))))

;; Note, that multi-line mode is only possible in an OS command terminal
;; window or command shell.

;; Interactive Lisp mode can accept operating system shell commands. To hit

(defun add-list-item (add x y)
       "add-list-item add list..."
       (reduce #'+ x y))

;; an OS command enter the '!' character right after the prompt, immediately
(let (++ (:json))
     (t (lambda (add x y))
     (t function add-list-item))
     (load "foo.lsp")
     (foo 2 4))

;; For example:

*! ls -l

;; In the example a ls shell command is entered to show HTML files in the current
;; directory. On MS Windows a dir command could be used in the same fashion.
;; The mode can also be used to call an editor or any other program:

*vi myfile.txt

;; let to header about expression syntax and other information
;; on the command line and on the shell command

;; Interactive Lisp mode can accept operating system shell commands. To hit
(let (++ (:json))
     (t (lambda (abs num)))
     (t function abs))
     (load "foo.lsp")
     (abs 110))

;; start tomorrow and day of the week darks

(let (++ (:json))
     (t (lambda (start-date day-of-week)))
     (t function start-date))
     (load "foo.lsp")
     (start-date "2024-24-08" :saturday))

;; For example:

*! ls -l

;; In the example a ls shell command is entered to show HTML files in the current
;; directory. On MS Windows a dir command could be used in the same fashion.
;; The mode can also be used to call an editor or any other program:

*vi myfile.txt

;; acos
;; syntax: (acos num-radians)

;; The arc-cosine function is calculated from the number in num-radians. 


(let (++ (:json))
     (t (lambda (acos num-radians)))
     (t function acos)
     (t (token-cosine x y))
     (if (define (token-cosine))
     (acos (acos (abs (- x y))))
     (acos (acos (abs (- x y)))))
     (load "foo.lsp")
     (acos (acos (abs (- 3 4)))))



;; acosh
;; syntax: (acosh num-radians)

;; Calculates the inverse hyperbolic cosine of num-radians, the value whose 
;; hyperbolic cosine is num-radians. If num-radians is less than 1, acosh returns NaN.


(defun acosh-num-radians (&option value &rest radians)
       "acosh num-radians returns the inverse hyperbolic cosine of num-radians."
       (if (<= value 1)
           (math:nan)
           (math:acosh value)))


(let (++ (:json))
     (t (lambda (acosh-num-radians)))
     (t function acosh-num-radians))
     (load "foo.lsp")
     (acosh-num-radians 2))


;; For example:

(let (++ (:json))
     (t (lambda (ls-directory directory)))
     (t function ls-directory)
     (load "foo.lsp")
     (ls-directory "/usr/bin"))


; add
;; syntax: (add num-1 [num-2 ... ])

;; All of the numbers in num-1, num-2, and on are summed. add accepts float or integer operands, 
;; but it always returns a floating point number. Any floating point calculation with NaN also 
;; returns NaN. 

(defun add-num-list (&rest numbers)
       "add num-1 [num-2 ... ] returns the sum of num-1, num
       -2, and on."
       (reduce #'+ numbers))

(let (++ (:json))
     (t (lambda (add-num-list)))
     (t function add-num-list))
     (load "foo.lsp")
     (add-num-list 1 2 3 4 5))

;; address
;; syntax: (address int)
;; syntax: (address float)
;; syntax: (address str)

;; Returns the memory address of the integer in int, the double floating point number in float, 
;; or the string in str. This function is used for passing parameters to library functions that 
;; have been imported using the import function.

(set 's "\001\002\003\004")

(get-char (+ (address s) 3))   ;; → 4

(set 'x 12345) ; x is a 64-bit long int

; on a big-endian CPU, i.e. PPC or SPARC 
(get-long (address x))         ;; → 12345
; the 32-bit int is in high 32-bit part of the long int
(get-int (+ (address x) 4))    ;; → 12345

; on a little-endian CPU, i.e. Intel i386
; the 32-bit int is in the low 32-bit part of the long int
(get-int (address x))          ;; → 12345

; on both architectures (integers are 64 bit in newLISP)
(set 'x 1234567890)
(get-long (address x))         ;; →  1234567890

;; When a string is passed to C library function the address of the string is used automatically, 
;; and it is not necessary to use the address function in that case. As the example shows, address 
;; can be used to do pointer arithmetic on the string's address.

;; address should only be used on persistent addresses from data objects referred to by a variable symbol, 
;; not from volatile intermediate expression objects.

;; See also the get-char, get-int, get-long and get-float functions.

(setf 'tokenize-input -0)
(get-long (address tokenize-input))


;; and
;; syntax: (and exp-1 [exp-2 ... ])

;; The expressions exp-1, exp-2, etc. are evaluated in order, returning the result of the last 
;; expression. If any of the expressions yield nil or the empty list (), evaluation is terminated 
;; and nil or the empty list () is returned.

(set 'x 10)                       ;; → 10
(and (< x 100) (> x 2))           ;; → true
(and (< x 100) (> x 2) "passed")  ;; → "passed"
(and '())                         ;; → ()
(and true)                        ;; → true
(and)                             ;; → true


(let (++ (:json))
     (and (< x 100) (> x 2))
     (set 'x 10)                       ;; → 10
     (and (< x 100) (> x 2))           ;; → true
     (and (< x 100) (> x 2) "passed")  ;; → "passed"
     (and '())                         ;; → ()
     (and true)                        ;; → true
     (and))                             ;; → true



;; append
;; syntax: (append list-1 [list-2 ... ])
;; syntax: (append array-1 [array-2 ... ])
;; syntax: (append str-1 [str-2 ... ])

;; In the first form, append works with lists, appending list-1 through list-n to form a new list. 
;; The original lists are left unchanged.

(append '(1 2 3) '(4 5 6) '(a b))  ;; → (1 2 3 4 5 6 a b)

(set 'aList '("hello" "world"))    ;; → ("hello" "world")

(append aList '("here" "I am"))    ;; → ("hello" "world" "here" "I am")

(let (++ (:json))
     (t (lambda aList))
     (append '("hello" "world") '("here" "I am"))
     (set 'aList '("hello" "world"))    ;; → ("hello" "world")
     (append aList '("here" "I am")))     ;; → ("hello" "world")


;; In the second form append works on arrays:

(set 'A (array 3 2 (sequence 1 6)))
;; → ((1 2) (3 4) (5 6))

(set 'B (array 2 2 (sequence 7 10)))
;; → ((7 8) (9 10))

(append A B)
;; → ((1 2) (3 4) (5 6) (7 8) (9 10))

(append B B B)
;; → ((7 8) (9 10) (7 8) (9 10) (7 8) (9 10))


 ;; In the third form, append works on strings. The strings in 
 ;; str-n are concatenated into a new string and returned.

(set 'more " how are you")       ;; → " how are you"

(append "Hello " "world," more)  ;; → "Hello world, how are you"

;; append is also suitable for processing binary strings containing zeroes. 
;; The string function would cut off strings at zero bytes.

;; Linkage characters or strings can be specified using the join function. Use the string 
;; function to convert arguments to strings and append in one step.

;; Use the functions extend and push to append to an existing list or string modifying the target.

;; append-file
;; syntax: (append-file str-filename str-buffer)

;; Works similarly to write-file, but the content in str-buffer is appended 
;; if the file in str-filename exists. If the file does not exist, it is created 
;; (in this case, append-file works identically to write-file). This function returns 
;; the number of bytes written.

;; On failure the function returns nil. For error information, use sys-error when used on files. 
;; When used on URLs net-error gives more error information.

(write-file "myfile.txt" "ABC") 
(append-file "myfile.txt" "DEF")

(read-file "myfile.txt")  ;; → "ABCDEF"

;; append-file can take a http:// or file:// URL in str-file-name. In case of 
;; the http:// prefix , append-file works exactly like put-url with "Pragma: append\r\n" 
;; in the header option and can take the same additional parameters. The "Pragma: append\r\n" 
;; option is supplied automatically.

(append-file "http://asite.com/message.txt" "More message text.")


;; apply
;; syntax: (apply func list)
;; syntax: (apply func vec)
;; syntax: (apply func &rest args)


;; apply is used to apply a function to a list of arguments.

(set 'a '(1 2 3 4 5))
(apply #'+ a)  ;; → 15

;; The file message.txt is appended at a remote location http://asite.com with the contents 
;; of str-buffer. If the file does not yet exist, it will be created. In this mode, append-file 
;; can also be used to transfer files to remote newLISP server nodes.

;; See also read-file and write-file.


;; apply-string
;; syntax: (apply-string func str)
;; syntax: (apply-string func vec)
;; syntax: (apply-string func &rest args)

;; apply-string is similar to apply but works with strings.


;; assq
;; syntax: (assq key alist)
;; syntax: (assq key alist &rest rest)


;; assq returns the first pair in alist whose first element is equal to key.

apply
syntax: (apply func list [int-reduce])
syntax: (apply func)

;; Applies the contents of func (primitive, user-defined function, or lambda expression) 
;; to the arguments in list. Only functions and operators with standard evaluation of their 
;; arguments can be applied.

;; In the second syntax apply is used on functions without any arguments.

(apply + '(1 2 3 4))                   ;; → 10
(set 'aList '(3 4 5))                  ;; → (3 4 5)
(apply * aList)                        ;; → 60
(apply sqrt '(25))                     ;; → 5
(apply (lambda (x y) (* x y)) '(3 4))  ;; → 12


;; setq
;; syntax: (setq x y)
;; syntax: (setq x y)

(setq x 10 y 10) ;-> 10

(let ((x y))
     (t (lambda (x y))
     (setq x 10 y 10)
     (acosh x y))) ;-> (10 10)



;; sort
;; syntax: (sort list &key (key-fn function))
;; syntax: (sort list &key (key-fn function) &allow-duplicates t)

(define sort list &key (key-fn function)
  (let ((sorted-list (sort list key-fn)))
    sorted-list))
    (sort '(10 5 3 8 2 7) :key (lambda)
     (lambda (x y) (- x y)))) ;-> (2 3 5 7)
     (sort '(10 5 3 8 2 7) :key (lambda))
     (sort '(10 5 3 8 2 7) :key (lambda))
     (sort '(10 5 3 8 2 7) :key (lambda))
     (sort '(10 5 3 8 2 7) :key (lambda))
     (sort '(10 5 3 8 2 7) :key (lambda))


;; subseq
;; syntax: (subseq list start [end])

;; Returns a new sequence that is a copy of list from start to end (inclusive).
;; If end is omitted, it defaults to the end of the list.
(subseq '(1 2 3 4 5) 1 3) ;
(subseq '(1 2 3 4 5) 2) ;-> (
;; The function subseq is useful for extracting subsequences from lists.
;; The function nth is used to get the nth element of a list.
(nth 3 '(1 2 3 4 5)) ;-> 4


;; string
;; syntax: (string &rest args)

;; Creates a new string from the given arguments.
(string 1 2 3 4 5) ;-> "1234

;; The function string is used to create new strings from other data types.
(string '(1 2 3 4 5)) ;-> "1234
(string (list 1 2 3 4 5)) ;-> "12
(string #\a #\b #\c) ;-> "abc
(string (vector 1 2 3 4 5)) ;-> "12
(string #\a #\b #\c 1 2 3 4) ;-> "12


;; substring
;; syntax: (substring str start [end])

;; Returns a new string that is a copy of str from start to end (inclusive).
;; If end is omitted, it defaults to the end of the string.
(substring "Hello, World!" 6 11) ;-> "World!"

;; The function substring is useful for extracting substrings from strings.
;; The function char is used to get the character at the nth position in a string.
(char 7 "Hello, World!") ;-> #\W
(char 7 "Hello, World!" :start 6) ;-> #\W

;; type
;; syntax: (type obj)

;; Returns the type of obj as a string.
(type 10) ;-> "integer"


;; vector
;; syntax: (vector &rest args)

;; Creates a new vector from the given arguments.
(vector 1 2 3 4 5) ;-> (1 2)
;; The function vector is used to create new vectors from other data types.
(vector '(1 2 3 4 5)) ;-> (1 2)


;; vector-ref
;; syntax: (vector-ref vec index)

;; Returns the element at the given index in vec.
;; If index is out of range, it returns nil.
(vector-ref '(1 2 3 4 5) 2) ;->


;; vector-set
;; syntax: (vector-set vec index value)
;; Sets the element at the given index in vec to value.
;; If index is out of range, it returns nil.
(vector-set '(1 2 3 4 5) 2 7)
;; → (1 2 7 4 5)

;; The function vector-set is useful for modifying vectors.
;; The function list is used to create new lists from other data types.
(list 1 2 3 4 5) ;-> (1 2)



;; vector-length
;; syntax: (vector-length vec)

;; Returns the number of elements in vec.
(vector-length '(1 2 3 4 5)) ;-> 5

;; vector-copy
;; syntax: (vector-copy vec)
;; Returns a new vector that is a copy of vec.
(vector-copy '(1 2 3 4 5)) ;-> (1)



;; vector-append
;; syntax: (vector-append vec &rest more-vecs)
;; Returns a new vector that is the concatenation of vec and more-vecs.
(vector-append '(1 2 3) '(4 5 6)) ;->

;; vector-sort
;; syntax: (vector-sort vec &key (key-fn function))
;; Returns a new vector that is a sorted copy of vec.
(vector-sort '(10 5 3 8 2 7)) ;->


;; vector-map
;; syntax: (vector-map func vec)
;; Returns a new vector that is the result of applying func to each element in vec.
(vector-map (lambda (x) (* x x)) '(1 2 3)) ;

;; vector-filter
;; syntax: (vector-filter pred vec)
;; Returns a new vector that is the result of filtering vec with pred.
(vector-filter (lambda (x) (> x 5)) '(1 2 3)

;; vector-reduce
;; syntax: (vector-reduce func vec [init])
;; Returns the result of applying func to the elements in vec in turn,
;; starting with init (or the first element of vec if init is not supplied).
;; The function vector-reduce is useful for performing reduction operations on vectors.
(vector-reduce + '(1 2 3 4 5) 0) ;



