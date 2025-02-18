package com.ani.Config;

import java.util.Locale;

import org.springframework.context.annotation.Bean;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
import org.springframework.web.servlet.i18n.LocaleChangeInterceptor;
import org.springframework.web.servlet.i18n.SessionLocaleResolver;
@Component
public class ConfigClass implements WebMvcConfigurer {

	@Bean(name="localeResolver")
	public SessionLocaleResolver createSlResolver() {
		SessionLocaleResolver resolver =new SessionLocaleResolver();
		resolver.setDefaultLocale(new Locale("en","US"));
		return resolver;
	}
	@Bean
	public LocaleChangeInterceptor createLI() {
		LocaleChangeInterceptor interseptor=new LocaleChangeInterceptor();
		interseptor.setParamName("");
		return interseptor;
	}

	
	@Override
	public void addInterceptors(InterceptorRegistry registry) {
		registry.addInterceptor(new LocaleChangeInterceptor());
	}
}
