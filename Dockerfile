FROM tomcat:10.1-jdk21-jre11

# Xóa app mặc định của Tomcat
RUN rm -rf /usr/local/tomcat/webapps/*

# Thay ten_file_cua_ban.war bằng đúng tên file war xuất ra từ NetBeans
COPY ten_file_cua_ban.war /usr/local/tomcat/webapps/ROOT.war

EXPOSE 8080
CMD ["catalina.sh", "run"]
