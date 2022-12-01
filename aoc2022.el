(setq debug-on-error t)

(defun aoc-solve-day-1-part1 ()
  "Solve Advent of Code day 1 part 1"
  (interactive ())
  (print-result (seq-max (calc-calories))))

(defun aoc-solve-day-1-part2 ()
  "Solve Advent of Code day 1 part 2"
  (interactive ())
  (print-result (apply '+ (seq-take (seq-sort '> (calc-calories)) 3))))

(defun calc-calories ()
  "Split string and calculate calories for each elf."
  (mapcar (lambda (x) (apply '+ (mapcar 'string-to-number (split-string x "\n"))))
          (split-string (buffer-string) "\n\n")))

(defun print-result (result)
  (message "Result: %s" result))
