(ns graal-issue.main
  (:gen-class)
  (:require [clj-yaml.core :as yaml]))



(defn -main [& _args]
  (println
    (yaml/generate-string
      [{:name "John Smith", :age 33}
       {:name "Mary Smith", :age 27}]))
  )
