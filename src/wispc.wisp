(ns wispc
  (:require [fs]
            [wisp.compiler :refer [compile*]]
            [wisp.reader :refer [read*]]))



(defn main []
  (console.log (compile*
                (read*
                 (fs.readFileSync (get process.argv 2) :utf8)))))
