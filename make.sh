#!/usr/bin/env bash

Name=index
sed -n '1,/<!--ENDHEAD-->/p' index.html |\
	sed "/${Name}/s/<\\!--current_page_item-->/current_page_item/" >tmp.${Name}.html
sed -n '/<!--BEGINCONTENT-->/,/<!--ENDCONTENT-->/p' ${Name}.html >>tmp.${Name}.html
sed -n '/<!--BEGINSIDEBAR-->/,$p' index.html >>tmp.${Name}.html
\mv tmp.${Name}.html ${Name}.html

Name=Product
sed -n '1,/<!--ENDHEAD-->/p' index.html |\
	sed "/index.html/s/current_page_item/<\\!--current_page_item-->/" |\
	sed "/${Name}/s/<\\!--current_page_item-->/current_page_item/" >tmp.${Name}.html
sed -n '/<!--BEGINCONTENT-->/,/<!--ENDCONTENT-->/p' ${Name}.html >>tmp.${Name}.html
sed -n '/<!--BEGINSIDEBAR-->/,$p' index.html >>tmp.${Name}.html
\mv tmp.${Name}.html ${Name}.html

Name=EXSdetect
sed -n '1,/<!--ENDHEAD-->/p' index.html |\
	sed "/index.html/s/current_page_item/<\\!--current_page_item-->/" |\
	sed "/${Name}/s/<\\!--current_page_item-->/current_page_item/" >tmp.${Name}.html
sed -n '/<!--BEGINCONTENT-->/,/<!--ENDCONTENT-->/p' ${Name}.html >>tmp.${Name}.html
sed -n '/<!--BEGINSIDEBAR-->/,$p' index.html >>tmp.${Name}.html
\mv tmp.${Name}.html ${Name}.html

Name=People
sed -n '1,/<!--ENDHEAD-->/p' index.html |\
	sed "/index.html/s/current_page_item/<\\!--current_page_item-->/" |\
	sed "/${Name}/s/<\\!--current_page_item-->/current_page_item/" >tmp.${Name}.html
sed -n '/<!--BEGINCONTENT-->/,/<!--ENDCONTENT-->/p' ${Name}.html >>tmp.${Name}.html
sed -n '/<!--BEGINSIDEBAR-->/,$p' index.html >>tmp.${Name}.html
\mv tmp.${Name}.html ${Name}.html

Name=Papers
sed -n '1,/<!--ENDHEAD-->/p' index.html |\
	sed "/index.html/s/current_page_item/<\\!--current_page_item-->/" |\
	sed "/${Name}/s/<\\!--current_page_item-->/current_page_item/" >tmp.${Name}.html
sed -n '/<!--BEGINCONTENT-->/,/<!--ENDCONTENT-->/p' ${Name}.html >>tmp.${Name}.html
sed -n '/<!--BEGINSIDEBAR-->/,$p' index.html >>tmp.${Name}.html
\mv tmp.${Name}.html ${Name}.html

