(ns graal-issue.main
  (:gen-class)
  (:require [clj-yaml.core :as yaml]))

(comment
  (defn -main [& _args]
    (println "configuration: " (configure {:key "test" :version "0.0.1" :env "local"}))))



(defn -main [& args]
  (println
    (yaml/generate-string
      [{:name "John Smith", :age 33}
       {:name "Mary Smith", :age 27}]))
  )
