(ns graal-issue.main
  (:gen-class)
  (:require [com.brunobonacci.oneconfig :refer [configure]]))



(defn -main [& _args]
  (println "configuration: " (configure {:key "test" :version "0.0.1" :env "local"})))
