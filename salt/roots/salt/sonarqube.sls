sonarqube:
  archive.extracted:
    - name: /opt
    - skip_verify: False
    - user: vagrant
    - group: root
    - source_hash: 8b0efcddf26d072192f8bf1c91a2f585438a4775
    - source: https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-8.0.zip

start_sonarqube:
  cmd.run:
    - runas: vagrant
    - bgFalse: True
    - name: /opt/sonarqube-8.0/bin/linux-x86-64/sonar.sh start