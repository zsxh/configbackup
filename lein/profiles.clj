;; https://github.com/technomancy/leiningen/blob/stable/sample.project.clj
{:user
 {:repositories {"central" {:url "https://maven.aliyun.com/nexus/content/groups/public/"}
                 "clojars" {:url "https://mirrors.tuna.tsinghua.edu.cn/clojars/"}
                 "maven-central" {:url "https://repo1.maven.org/maven2/"}
                 "clojars-default" {:url "https://clojars.org/repo"}}
  ;; :mirrors {"central" {:name "central"
  ;;                      :url "https://maven.aliyun.com/nexus/content/groups/public/"}
  ;;           "clojars" {:name "clojars"
  ;;                      :url "https://mirrors.tuna.tsinghua.edu.cn/clojars/"}}
  :dependencies [[org.clojure/clojure "1.10.1"]]}}
