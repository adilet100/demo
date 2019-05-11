package com.processor.surdoapp.demo.util;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.Map;

public class RedirectUtil {
    private final static Logger LOGGER = LoggerFactory.getLogger(RedirectUtil.class);

    public static ModelAndView redirect(String path) {
        RedirectView view = new RedirectView();
        view.setUrl(path);
        view.setExposeModelAttributes(false);
        return new ModelAndView(view);
    }

    public static ModelAndView redirect(String path, Map<String, String> params) {
        if (params != null) {
            path += "?";
            StringBuilder pathBuilder = new StringBuilder(path);
            for (Map.Entry<String, String> entry : params.entrySet()) {
                pathBuilder.append(entry.getKey());
                pathBuilder.append("=");
                try {
                    pathBuilder.append(URLEncoder.encode(entry.getValue(), "UTF-8"));
                } catch (UnsupportedEncodingException e) {
                    e.printStackTrace();
                }
                pathBuilder.append("&");
            }
            path = pathBuilder.toString().substring(0, pathBuilder.toString().length() - 1);
        }
        RedirectView view = new RedirectView();
        view.setUrl(path);
        view.setExposeModelAttributes(false);
        return new ModelAndView(view);
    }

}
