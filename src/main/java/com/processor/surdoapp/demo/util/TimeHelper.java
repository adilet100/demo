package com.processor.surdoapp.demo.util;

import java.time.format.DateTimeFormatter;

/**
 * Created by abdysamat on 8/14/17.
 * n.u.abdysamat@gmail.com
 */
public class TimeHelper {
    public static final String DATE_TIME_FORMAT = "dd.MM.yyyy HH:mm";
    public static final String DATE_FORMAT = "dd.MM.yyyy";
    public static final DateTimeFormatter DATE_TIME_FORMATTER = DateTimeFormatter.ofPattern(DATE_TIME_FORMAT);
    public static final DateTimeFormatter DATE_FORMATTER = DateTimeFormatter.ofPattern(DATE_FORMAT);
}
