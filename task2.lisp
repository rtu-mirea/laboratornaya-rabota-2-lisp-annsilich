;; Задание 2
;; Чтение файла и вывод его содержимого (файл task2.txt)

(let ((in (open "task2.txt" :if-does-not-exist nil)))
    (when in
        (loop for line = (read-line in nil)
    while line do (format t "~a~%" line))
    (close in)))
