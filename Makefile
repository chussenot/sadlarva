JAVA_HOME=$(shell /usr/libexec/java_home -v1.8)
export JAVA_HOME 

serve:
	@jekyll serve
deploy:
	@env | grep JAVA
	@echo "Building blog"
	@jekyll build
	@echo "Deploying blog to s3"
	@s3_website push
