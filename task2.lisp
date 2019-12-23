;; Задание 2
;; Чтение файла и вывод его содержимого (файл task2.txt)

(defun readingfile (textfile)
    (let ((in (open textfile :if-does-not-exist nil)))
        (when in
            (loop for line = (read-line in nil)
                while line do (format t "~a~%" line))
        (close in)))
)

(readingfile "task2.txt")
