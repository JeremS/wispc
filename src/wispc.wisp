(ns wispc
  (:require [fs]
            [wisp.compiler :refer [compile*]]
            [wisp.reader :refer [read*]]))

(defn compile-file [f]
  (compile*
   (read*
    (fs.readFileSync f :utf8))))

(defn main []
  (console.log
   (compile-file (get process.argv 2))))
