
plugins = {
        "mesos" : "0.14.1",
        "hidden-parameter" : "0.0.4",
        "greenballs" : "1.15",
        "envinject" : "2.0",
        "slack" : "2.2",
        "ssh-agent" : "1.15"
}


src = "https://github.com/jenkinsci/%s-plugin/archive/%s-%s.zip"
for plugin in plugins:
        version =  plugins[plugin]
        folder = "%s-%s" % (plugin, version)
        src = "https://github.com/jenkinsci/%s-plugin/archive/%s-%s.zip" % (plugin, plugin, version)
        print "Installing %s-%s" % (plugin, version)
        os.system("wget %s && unzip %s.zip && cd %s-plugin-%s && mvn package && cp target/%s.hpi $JENKINS_HOME/plugins/" % (src, folder, plugin, f$

